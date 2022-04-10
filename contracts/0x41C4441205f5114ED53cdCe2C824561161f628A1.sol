contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, uint256 arg9)
#  - harvest()
#  - migrate(address arg1)
#
const name = '', 0

const apiVersion = '', 0

const delegatedAssets = 0


array of uint256 metadataURI;
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
address masterchefAddress; offset 8
address rewardAddress;
uint32 stor12;
address sub_5a3bb989Address;
uint256 stor12;
uint32 stor13;
address sub_b95064beAddress;
uint256 stor13;
uint256 pid;
uint256 minProfit;
array of address path;
uint8 sub_0eb750d8;
uint8 sub_ade51644; offset 8
uint8 sub_92c6283c; offset 16
uint256 stor17; offset 16
uint256 stor17; offset 8
uint256 stor17;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function sub_0eb750d8(?) payable {
    return bool(sub_0eb750d8)
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

function reward() payable {
    return rewardAddress
}

function maxReportDelay() payable {
    return maxReportDelay
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function sub_5a3bb989(?) payable {
    return address(sub_5a3bb989Address)
}

function minProfit() payable {
    return minProfit
}

function profitFactor() payable {
    return profitFactor
}

function sub_92c6283c(?) payable {
    return bool(sub_92c6283c)
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

function sub_ade51644(?) payable {
    return bool(sub_ade51644)
}

function path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < path.length
    return path[arg1]
}

function sub_b95064be(?) payable {
    return address(sub_b95064beAddress)
}

function pid() payable {
    return pid
}

function masterchef() payable {
    return masterchefAddress
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

function sub_3b42e5e2(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    minProfit = arg1
}

function pendingReward() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x6d9e7e1d with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_429871b5(?) payable {
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
    uint256(stor17.field_0) = not sub_0eb750d8 or Mask(248, 8, uint256(stor17.field_0))
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
            revert with 0, '!authorized'
    emergencyExit = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function estimatedTotalAssets() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function sub_a2e409da(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x344dd6e4 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7), address(arg8), arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cloned(address(create.new_address));
    return address(create.new_address)
}

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    require arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args rewardsAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewardsAddress = arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address rg1, uint256 rg2) with:
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

function isActive() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 448 <= test266151307())
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0] > 0)
}

function toggleharvestOnLiq() payable {
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
    Mask(248, 0, stor17.field_8) = Mask(248, 0, not sub_ade51644)
}

function emergencyWithdrawal(uint256 arg1) payable {
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
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPath(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
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
    path.length = arg1.length
    if not arg1.length:
        idx = 0
        while path.length > idx:
            path[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            path[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while path.length > idx:
            path[idx] = 0
            idx = idx + 1
            continue 
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
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    staticcall arg1.balanceOf(address rg1) with:
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
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
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

function setRouter(address arg1) payable {
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
    if arg1 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
        if arg1 != 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506:
            if arg1 != 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52:
                revert with 0, 'incorrect rewardRouter'
    mem[ceil32(return_data.size) + 132] = address(sub_5a3bb989Address)
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor12)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), 0, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardAddress with:
       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), 0, 0) << 288)
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
        address(sub_5a3bb989Address) = arg1
        mem[ceil32(return_data.size) + 264] = this.address
        mem[ceil32(return_data.size) + 296] = arg1
        require ext_code.size(rewardAddress)
        staticcall rewardAddress.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296] = arg1
        mem[(2 * ceil32(return_data.size)) + 328] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(rewardAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), -1, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call rewardAddress with:
           funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
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
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    address(sub_5a3bb989Address) = arg1
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg1
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), -1, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call rewardAddress with:
       funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
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
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function sub_4e69aaf2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
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
    if address(arg1) != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
        if address(arg1) != 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506:
            if address(arg1) != 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52:
                revert with 0, 'incorrect rewardRouter'
    mem[ceil32(return_data.size) + 132] = address(sub_b95064beAddress)
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor13)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0, 0
    mem[ceil32(return_data.size) + 328] = 0
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0, 0) << 288)
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
        address(sub_b95064beAddress) = address(arg1)
        mem[ceil32(return_data.size) + 264] = this.address
        mem[ceil32(return_data.size) + 296] = address(arg1)
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), address(arg1)
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 328] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), -1, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
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
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        Mask(240, 0, stor17.field_16) = Mask(240, 0, address(sub_5a3bb989Address) != address(arg1))
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
    address(sub_b95064beAddress) = address(arg1)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(arg1)
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), -1, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
       funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
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
        Mask(240, 0, stor17.field_16) = Mask(240, 0, address(sub_5a3bb989Address) != address(arg1))
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        Mask(240, 0, stor17.field_16) = Mask(240, 0, address(sub_5a3bb989Address) != address(arg1))
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        Mask(240, 0, stor17.field_16) = Mask(240, 0, address(sub_5a3bb989Address) != address(arg1))
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
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
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, arg1, 0) << 288)
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
        mem[ceil32(return_data.size) + 96] = 30
        mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 196] = this.address
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args pid, this.address
        mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((2 * ceil32(return_data.size)) + 224 <= test266151307())
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
        if ext_call.return_data[0] >= arg1 - ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 224] = 68
                mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 456] = 0
                call wantAddress with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 420] == bool(mem[(4 * ceil32(return_data.size)) + 420])
                        if not mem[(4 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not sub_0eb750d8:
                    mem[(2 * ceil32(return_data.size)) + 260] = arg1 - ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, arg1 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 - ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 224] = 68
                        mem[(6 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(6 * ceil32(return_data.size)) + 324] = 32
                        mem[(6 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(6 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 420] == bool(mem[(6 * ceil32(return_data.size)) + 420])
                                if not mem[(6 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 224] = 30
                        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                        if arg1 - ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(4 * ceil32(return_data.size)) + 324] = (2 * ext_call.return_data[0]) - arg1
                        require ext_code.size(masterchefAddress)
                        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args pid, (2 * ext_call.return_data[0]) - arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(6 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 484] == bool(mem[(6 * ceil32(return_data.size)) + 484])
                                if not mem[(6 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 228] = pid
                    mem[(2 * ceil32(return_data.size)) + 260] = this.address
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.0x6d9e7e1d with:
                            gas gas_remaining wei
                           args pid, this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if sub_ade51644:
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            require ext_code.size(masterchefAddress)
                            call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args pid, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args pid
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 - ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 224] = 68
                        mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(7 * ceil32(return_data.size)) + 324] = 32
                        mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                                if not mem[(7 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 224] = 30
                        mem[(6 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                        if arg1 - ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 324] = (2 * ext_call.return_data[0]) - arg1
                        require ext_code.size(masterchefAddress)
                        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args pid, (2 * ext_call.return_data[0]) - arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 324] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 288] = 68
                        mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(7 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(7 * ceil32(return_data.size)) + 388] = 32
                        mem[(7 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(7 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 484] == bool(mem[(7 * ceil32(return_data.size)) + 484])
                                if not mem[(7 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 224] = 68
                mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 456] = 0
                call wantAddress with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 420] == bool(mem[(4 * ceil32(return_data.size)) + 420])
                        if not mem[(4 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not sub_0eb750d8:
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 224] = 68
                        mem[(6 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(6 * ceil32(return_data.size)) + 324] = 32
                        mem[(6 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(6 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 420] == bool(mem[(6 * ceil32(return_data.size)) + 420])
                                if not mem[(6 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 224] = 30
                        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                        require ext_code.size(masterchefAddress)
                        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(6 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 484] == bool(mem[(6 * ceil32(return_data.size)) + 484])
                                if not mem[(6 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 228] = pid
                    mem[(2 * ceil32(return_data.size)) + 260] = this.address
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.0x6d9e7e1d with:
                            gas gas_remaining wei
                           args pid, this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if sub_ade51644:
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            require ext_code.size(masterchefAddress)
                            call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args pid, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args pid
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 224] = 68
                        mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(7 * ceil32(return_data.size)) + 324] = 32
                        mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                                if not mem[(7 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 224] = 30
                        mem[(6 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 324] = 0
                        require ext_code.size(masterchefAddress)
                        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 324] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 288] = 68
                        mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(7 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(7 * ceil32(return_data.size)) + 388] = 32
                        mem[(7 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
                            mem[(7 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 484] == bool(mem[(7 * ceil32(return_data.size)) + 484])
                                if not mem[(7 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 0
}

function harvestTrigger(uint256 arg1) payable {
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
    staticcall vaultAddress.strategies(address rg1) with:
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
        mem[ceil32(return_data.size) + 676] = pid
        mem[ceil32(return_data.size) + 708] = this.address
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x6d9e7e1d with:
                gas gas_remaining wei
               args pid, this.address
        mem[ceil32(return_data.size) + 672] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0 >= minProfit
        if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10 * ext_call.return_data[0] / 100 < 10:
            return 0 >= minProfit
        mem[(2 * ceil32(return_data.size)) + 768] = rewardAddress
        if rewardAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            mem[(2 * ceil32(return_data.size)) + 800] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(2 * ceil32(return_data.size)) + 832] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 836] = 10 * ext_call.return_data[0] / 100
            mem[(2 * ceil32(return_data.size)) + 868] = 64
            mem[(2 * ceil32(return_data.size)) + 900] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 768
            t = (2 * ceil32(return_data.size)) + 932
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(sub_5a3bb989Address))
            staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 932 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 832
            require return_data.size >= 32
            _540 = mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
            require mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 832 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 863
            _558 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]) + 864 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]) + 864
            mem[(4 * ceil32(return_data.size)) + 832] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]
            require return_data.size >= _540 + (32 * _558) + 32
            mem[(4 * ceil32(return_data.size)) + 864 len 32 * _558] = mem[(2 * ceil32(return_data.size)) + _540 + 864 len 32 * _558]
            if _558 - 1 < _558:
                return mem[(32 * _558 - 1) + (4 * ceil32(return_data.size)) + 864] >= minProfit
        else:
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress:
                mem[(2 * ceil32(return_data.size)) + 800] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(2 * ceil32(return_data.size)) + 832] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 836] = 10 * ext_call.return_data[0] / 100
                mem[(2 * ceil32(return_data.size)) + 868] = 64
                mem[(2 * ceil32(return_data.size)) + 900] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 768
                t = (2 * ceil32(return_data.size)) + 932
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_5a3bb989Address))
                staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 932 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                _539 = mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
                require mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 832 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 863
                _557 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]) + 864 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]) + 864
                mem[(4 * ceil32(return_data.size)) + 832] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 832]
                require return_data.size >= _539 + (32 * _557) + 32
                mem[(4 * ceil32(return_data.size)) + 864 len 32 * _557] = mem[(2 * ceil32(return_data.size)) + _539 + 864 len 32 * _557]
                if _557 - 1 < _557:
                    return mem[(32 * _557 - 1) + (4 * ceil32(return_data.size)) + 864] >= minProfit
        revert
    mem[ceil32(return_data.size) + 672] = 30
    mem[ceil32(return_data.size) + 704] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] < minReportDelay:
        mem[ceil32(return_data.size) + 740] = pid
        mem[ceil32(return_data.size) + 772] = this.address
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x6d9e7e1d with:
                gas gas_remaining wei
               args pid, this.address
        mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0 >= minProfit
        if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10 * ext_call.return_data[0] / 100 < 10:
            return 0 >= minProfit
        mem[(2 * ceil32(return_data.size)) + 832] = rewardAddress
        if rewardAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            mem[(2 * ceil32(return_data.size)) + 864] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(2 * ceil32(return_data.size)) + 896] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 900] = 10 * ext_call.return_data[0] / 100
            mem[(2 * ceil32(return_data.size)) + 932] = 64
            mem[(2 * ceil32(return_data.size)) + 964] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 832
            t = (2 * ceil32(return_data.size)) + 996
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(sub_5a3bb989Address))
            staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 996 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 896 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 896
            require return_data.size >= 32
            _537 = mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
            require mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 896 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 927
            _555 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]) + 928 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]) + 928
            mem[(4 * ceil32(return_data.size)) + 896] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]
            require return_data.size >= _537 + (32 * _555) + 32
            mem[(4 * ceil32(return_data.size)) + 928 len 32 * _555] = mem[(2 * ceil32(return_data.size)) + _537 + 928 len 32 * _555]
            if _555 - 1 < _555:
                return mem[(32 * _555 - 1) + (4 * ceil32(return_data.size)) + 928] >= minProfit
        else:
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress:
                mem[(2 * ceil32(return_data.size)) + 864] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(2 * ceil32(return_data.size)) + 896] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 900] = 10 * ext_call.return_data[0] / 100
                mem[(2 * ceil32(return_data.size)) + 932] = 64
                mem[(2 * ceil32(return_data.size)) + 964] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 832
                t = (2 * ceil32(return_data.size)) + 996
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_5a3bb989Address))
                staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 996 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 896 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 896
                require return_data.size >= 32
                _536 = mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
                require mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 896 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 927
                _554 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]) + 928 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]) + 928
                mem[(4 * ceil32(return_data.size)) + 896] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 896]
                require return_data.size >= _536 + (32 * _554) + 32
                mem[(4 * ceil32(return_data.size)) + 928 len 32 * _554] = mem[(2 * ceil32(return_data.size)) + _536 + 928 len 32 * _554]
                if _554 - 1 < _554:
                    return mem[(32 * _554 - 1) + (4 * ceil32(return_data.size)) + 928] >= minProfit
        revert
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
    mem[(2 * ceil32(return_data.size)) + 836] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args pid, this.address
    mem[(2 * ceil32(return_data.size)) + 800 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((4 * ceil32(return_data.size)) + 864 <= test266151307())
    mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[32]
    mem[(4 * ceil32(return_data.size)) + 868] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold < 0:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold + (2 * ext_call.return_data[0]) < ext_call.return_data[192]:
        return 1
    if 2 * ext_call.return_data[0] > ext_call.return_data[192]:
        mem[(6 * ceil32(return_data.size)) + 864] = 30
        mem[(6 * ceil32(return_data.size)) + 896] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[192] > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (4 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            if 0 < (4 * ext_call.return_data[0]) - ext_call.return_data[192]:
                return (0 < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
            mem[(7 * ceil32(return_data.size)) + 932] = pid
            mem[(7 * ceil32(return_data.size)) + 964] = this.address
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.0x6d9e7e1d with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0 >= minProfit
            if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10 * ext_call.return_data[0] / 100 < 10:
                return 0 >= minProfit
            mem[(8 * ceil32(return_data.size)) + 1024] = rewardAddress
            if rewardAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                mem[(8 * ceil32(return_data.size)) + 1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(8 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1092] = 10 * ext_call.return_data[0] / 100
                mem[(8 * ceil32(return_data.size)) + 1124] = 64
                mem[(8 * ceil32(return_data.size)) + 1156] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 1024
                t = (8 * ceil32(return_data.size)) + 1188
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_5a3bb989Address))
                staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1188 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 1088
                require return_data.size >= 32
                _534 = mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
                require mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 1088 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1119
                _552 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 1088] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                require return_data.size >= _534 + (32 * _552) + 32
                mem[(10 * ceil32(return_data.size)) + 1120 len 32 * _552] = mem[(8 * ceil32(return_data.size)) + _534 + 1120 len 32 * _552]
                if _552 - 1 < _552:
                    return mem[(32 * _552 - 1) + (10 * ceil32(return_data.size)) + 1120] >= minProfit
            else:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress:
                    mem[(8 * ceil32(return_data.size)) + 1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[(8 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 1092] = 10 * ext_call.return_data[0] / 100
                    mem[(8 * ceil32(return_data.size)) + 1124] = 64
                    mem[(8 * ceil32(return_data.size)) + 1156] = 2
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + 1024
                    t = (8 * ceil32(return_data.size)) + 1188
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(sub_5a3bb989Address))
                    staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1188 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(8 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (10 * ceil32(return_data.size)) + 1088
                    require return_data.size >= 32
                    _533 = mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
                    require mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                    require (8 * ceil32(return_data.size)) + return_data.size + 1088 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1119
                    _551 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088] <= test266151307()
                    require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120 <= test266151307()
                    mem[(10 * ceil32(return_data.size)) + 1088] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require return_data.size >= _533 + (32 * _551) + 32
                    mem[(10 * ceil32(return_data.size)) + 1120 len 32 * _551] = mem[(8 * ceil32(return_data.size)) + _533 + 1120 len 32 * _551]
                    if _551 - 1 < _551:
                        return mem[(32 * _551 - 1) + (10 * ceil32(return_data.size)) + 1120] >= minProfit
        else:
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * profitFactor < (4 * ext_call.return_data[0]) - ext_call.return_data[192]:
                return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
            mem[(7 * ceil32(return_data.size)) + 932] = pid
            mem[(7 * ceil32(return_data.size)) + 964] = this.address
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.0x6d9e7e1d with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0 >= minProfit
            if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10 * ext_call.return_data[0] / 100 < 10:
                return 0 >= minProfit
            mem[(8 * ceil32(return_data.size)) + 1024] = rewardAddress
            if rewardAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                mem[(8 * ceil32(return_data.size)) + 1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(8 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1092] = 10 * ext_call.return_data[0] / 100
                mem[(8 * ceil32(return_data.size)) + 1124] = 64
                mem[(8 * ceil32(return_data.size)) + 1156] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 1024
                t = (8 * ceil32(return_data.size)) + 1188
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_5a3bb989Address))
                staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1188 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 1088
                require return_data.size >= 32
                _531 = mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
                require mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 1088 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1119
                _549 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 1088] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                require return_data.size >= _531 + (32 * _549) + 32
                mem[(10 * ceil32(return_data.size)) + 1120 len 32 * _549] = mem[(8 * ceil32(return_data.size)) + _531 + 1120 len 32 * _549]
                if _549 - 1 < _549:
                    return mem[(32 * _549 - 1) + (10 * ceil32(return_data.size)) + 1120] >= minProfit
            else:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress:
                    mem[(8 * ceil32(return_data.size)) + 1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[(8 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 1092] = 10 * ext_call.return_data[0] / 100
                    mem[(8 * ceil32(return_data.size)) + 1124] = 64
                    mem[(8 * ceil32(return_data.size)) + 1156] = 2
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + 1024
                    t = (8 * ceil32(return_data.size)) + 1188
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(sub_5a3bb989Address))
                    staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1188 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(8 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (10 * ceil32(return_data.size)) + 1088
                    require return_data.size >= 32
                    _530 = mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
                    require mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                    require (8 * ceil32(return_data.size)) + return_data.size + 1088 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1119
                    _548 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088] <= test266151307()
                    require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120 <= test266151307()
                    mem[(10 * ceil32(return_data.size)) + 1088] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require return_data.size >= _530 + (32 * _548) + 32
                    mem[(10 * ceil32(return_data.size)) + 1120 len 32 * _548] = mem[(8 * ceil32(return_data.size)) + _530 + 1120 len 32 * _548]
                    if _548 - 1 < _548:
                        return mem[(32 * _548 - 1) + (10 * ceil32(return_data.size)) + 1120] >= minProfit
        revert
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.creditAvailable() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not profitFactor:
        if 0 < ext_call.return_data[0]:
            return (0 < ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 868] = pid
        mem[(7 * ceil32(return_data.size)) + 900] = this.address
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x6d9e7e1d with:
                gas gas_remaining wei
               args pid, this.address
        mem[(7 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0 >= minProfit
        if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(8 * ceil32(return_data.size)) + 864] = 26
        mem[(8 * ceil32(return_data.size)) + 896] = 'SafeMath: division by zero'
        if 10 * ext_call.return_data[0] / 100 < 10:
            return 0 >= minProfit
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress:
            mem[(8 * ceil32(return_data.size)) + 960] = rewardAddress
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress:
                mem[(8 * ceil32(return_data.size)) + 992] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(8 * ceil32(return_data.size)) + 1024] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 1028] = 10 * ext_call.return_data[0] / 100
                mem[(8 * ceil32(return_data.size)) + 1060] = 64
                mem[(8 * ceil32(return_data.size)) + 1092] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 960
                t = (8 * ceil32(return_data.size)) + 1124
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(sub_5a3bb989Address))
                staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1124 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 1024 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 1024
                require return_data.size >= 32
                _527 = mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
                require mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 1024 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1055
                _545 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056 <= test266151307()
                mem[(10 * ceil32(return_data.size)) + 1024] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]
                require return_data.size >= _527 + (32 * _545) + 32
                mem[(10 * ceil32(return_data.size)) + 1056 len 32 * _545] = mem[(8 * ceil32(return_data.size)) + _527 + 1056 len 32 * _545]
                if _545 - 1 < _545:
                    return mem[(32 * _545 - 1) + (10 * ceil32(return_data.size)) + 1056] >= minProfit
        else:
            mem[(8 * ceil32(return_data.size)) + 928] = 2
            mem[(8 * ceil32(return_data.size)) + 960] = rewardAddress
            mem[(8 * ceil32(return_data.size)) + 992] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(8 * ceil32(return_data.size)) + 1024] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 1028] = 10 * ext_call.return_data[0] / 100
            mem[(8 * ceil32(return_data.size)) + 1060] = 64
            mem[(8 * ceil32(return_data.size)) + 1092] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 960
            t = (8 * ceil32(return_data.size)) + 1124
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(sub_5a3bb989Address))
            staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1124 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 1024 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 1024
            require return_data.size >= 32
            _528 = mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
            require mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 1024 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1055
            _546 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056 <= test266151307()
            mem[(10 * ceil32(return_data.size)) + 1024] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]
            require return_data.size >= _528 + (32 * _546) + 32
            mem[(10 * ceil32(return_data.size)) + 1056 len 32 * _546] = mem[(8 * ceil32(return_data.size)) + _528 + 1056 len 32 * _546]
            if _546 - 1 < _546:
                return mem[(32 * _546 - 1) + (10 * ceil32(return_data.size)) + 1056] >= minProfit
        revert
    if arg1 * profitFactor / profitFactor != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg1 * profitFactor < ext_call.return_data[0]:
        return (arg1 * profitFactor < ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 868] = pid
    mem[(7 * ceil32(return_data.size)) + 900] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x6d9e7e1d with:
            gas gas_remaining wei
           args pid, this.address
    mem[(7 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0 >= minProfit
    if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(8 * ceil32(return_data.size)) + 864] = 26
    mem[(8 * ceil32(return_data.size)) + 896] = 'SafeMath: division by zero'
    if 10 * ext_call.return_data[0] / 100 < 10:
        return 0 >= minProfit
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress:
        mem[(8 * ceil32(return_data.size)) + 960] = rewardAddress
        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == rewardAddress
        mem[(8 * ceil32(return_data.size)) + 992] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(8 * ceil32(return_data.size)) + 1024] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 1028] = 10 * ext_call.return_data[0] / 100
        mem[(8 * ceil32(return_data.size)) + 1060] = 64
        mem[(8 * ceil32(return_data.size)) + 1092] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 960
        t = (8 * ceil32(return_data.size)) + 1124
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(sub_5a3bb989Address))
        staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1124 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 1024 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 1024
        require return_data.size >= 32
        _524 = mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
        require mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 1024 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1055
        _542 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056 <= test266151307()
        mem[(10 * ceil32(return_data.size)) + 1024] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]
        require return_data.size >= _524 + (32 * _542) + 32
        mem[(10 * ceil32(return_data.size)) + 1056 len 32 * _542] = mem[(8 * ceil32(return_data.size)) + _524 + 1056 len 32 * _542]
        if _542 - 1 < _542:
            return mem[(32 * _542 - 1) + (10 * ceil32(return_data.size)) + 1056] >= minProfit
        revert
    mem[(8 * ceil32(return_data.size)) + 928] = 2
    mem[(8 * ceil32(return_data.size)) + 960] = rewardAddress
    mem[(8 * ceil32(return_data.size)) + 992] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(8 * ceil32(return_data.size)) + 1024] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 1028] = 10 * ext_call.return_data[0] / 100
    mem[(8 * ceil32(return_data.size)) + 1060] = 64
    mem[(8 * ceil32(return_data.size)) + 1092] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 960
    t = (8 * ceil32(return_data.size)) + 1124
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(sub_5a3bb989Address))
    staticcall address(sub_5a3bb989Address).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1124 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 1024 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 1024
    require return_data.size >= 32
    _525 = mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32
    require mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
    require (8 * ceil32(return_data.size)) + return_data.size + 1024 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1055
    _543 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]
    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024] <= test266151307()
    require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056 <= test266151307()
    mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 10 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056
    mem[(10 * ceil32(return_data.size)) + 1024] = _543
    require return_data.size >= _525 + (32 * _543) + 32
    mem[(10 * ceil32(return_data.size)) + 1056 len 32 * _543] = mem[(8 * ceil32(return_data.size)) + _525 + 1056 len 32 * _543]
    require _543 - 1 < _543
    mem[mem[64]] = mem[(32 * _543 - 1) + (10 * ceil32(return_data.size)) + 1056] >= minProfit
    return memory
      from mem[64]
       len 32
}



}
