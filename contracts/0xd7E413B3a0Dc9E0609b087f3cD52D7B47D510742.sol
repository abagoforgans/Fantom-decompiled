contract main {




// =====================  Runtime code  =====================


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

function profitFactor() payable {
    return profitFactor
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

function estimatedTotalAssets() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
            revert with 0, '!authorized'
    emergencyExit = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
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
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address rg1) with:
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
    staticcall wantAddress.0x70a08231 with:
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
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
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
        return 0
    mem[ceil32(return_data.size) + 96] = 30
    mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[ceil32(return_data.size) + 196] = msg.sender
    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 160] = 68
    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 260] = 32
    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == vaultAddress:
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
        staticcall wantAddress.0x70a08231 with:
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
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
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
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0xfbfa77cf with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == vaultAddress
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 132] = arg1
        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
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

function harvest() payable {
    require ext_code.size(vaultAddress)
    if msg.sender == keeperAddress:
        staticcall vaultAddress.debtOutstanding() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not emergencyExit:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.strategies(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require bool((2 * ceil32(return_data.size)) + 384 <= test266151307())
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[192] > ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[192] - ext_call.return_data[0], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not emergencyExit:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            require ext_code.size(wantAddress)
                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], 0, ext_call.return_data[0]);
                else:
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not emergencyExit:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            require ext_code.size(wantAddress)
                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]);
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - ext_call.return_data[192], 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not emergencyExit:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            require ext_code.size(wantAddress)
                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, 0, ext_call.return_data[0]);
                else:
                    if ext_call.return_data[0] - ext_call.return_data[192] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    if ext_call.return_data[0] < ext_call.return_data[192]:
                        call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not emergencyExit:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0], ext_call.return_data[0]);
                    else:
                        call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not emergencyExit:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192], ext_call.return_data[0]);
        else:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
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
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args 0, 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not emergencyExit:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    require ext_code.size(wantAddress)
                    call wantAddress.Swapout(uint256 rg1, address rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            emit Harvested(0, 0, ext_call.return_data[0], ext_call.return_data[0]);
    else:
        if msg.sender == strategistAddress:
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not emergencyExit:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.strategies(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 288
                require bool((2 * ceil32(return_data.size)) + 384 <= test266151307())
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[192] > ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[192] - ext_call.return_data[0], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not emergencyExit:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], 0, ext_call.return_data[0]);
                    else:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not emergencyExit:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]);
                else:
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - ext_call.return_data[192], 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not emergencyExit:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, 0, ext_call.return_data[0]);
                    else:
                        if ext_call.return_data[0] - ext_call.return_data[192] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        if ext_call.return_data[0] < ext_call.return_data[192]:
                            call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not emergencyExit:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0], ext_call.return_data[0]);
                        else:
                            call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not emergencyExit:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192], ext_call.return_data[0]);
            else:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
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
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args 0, 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not emergencyExit:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        require ext_code.size(wantAddress)
                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                emit Harvested(0, 0, ext_call.return_data[0], ext_call.return_data[0]);
        else:
            staticcall vaultAddress.governance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(vaultAddress)
            if msg.sender == ext_call.return_data[12 len 20]:
                staticcall vaultAddress.debtOutstanding() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not emergencyExit:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.strategies(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 288
                    require bool((4 * ceil32(return_data.size)) + 384 <= test266151307())
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[192] > ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            require ext_code.size(vaultAddress)
                            call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[192] - ext_call.return_data[0], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not emergencyExit:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], 0, ext_call.return_data[0]);
                        else:
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(vaultAddress)
                            call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not emergencyExit:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]);
                    else:
                        if not ext_call.return_data[0]:
                            require ext_code.size(vaultAddress)
                            call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - ext_call.return_data[192], 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not emergencyExit:
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    require ext_code.size(wantAddress)
                                    call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, 0, ext_call.return_data[0]);
                        else:
                            if ext_call.return_data[0] - ext_call.return_data[192] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(vaultAddress)
                            if ext_call.return_data[0] < ext_call.return_data[192]:
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0], ext_call.return_data[0]);
                            else:
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192], ext_call.return_data[0]);
                else:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
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
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                    else:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args 0, 0, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not emergencyExit:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            require ext_code.size(wantAddress)
                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    emit Harvested(0, 0, ext_call.return_data[0], ext_call.return_data[0]);
            else:
                staticcall vaultAddress.guardian() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(vaultAddress)
                if msg.sender == ext_call.return_data[12 len 20]:
                    staticcall vaultAddress.debtOutstanding() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not emergencyExit:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.strategies(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 288
                        require bool((6 * ceil32(return_data.size)) + 384 <= test266151307())
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[192] > ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                require ext_code.size(vaultAddress)
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[192] - ext_call.return_data[0], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], 0, ext_call.return_data[0]);
                            else:
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]);
                        else:
                            if not ext_call.return_data[0]:
                                require ext_code.size(vaultAddress)
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ext_call.return_data[192], 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, 0, ext_call.return_data[0]);
                            else:
                                if ext_call.return_data[0] - ext_call.return_data[192] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                if ext_call.return_data[0] < ext_call.return_data[192]:
                                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not emergencyExit:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            require ext_code.size(wantAddress)
                                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0], ext_call.return_data[0]);
                                else:
                                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not emergencyExit:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            require ext_code.size(wantAddress)
                                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192], ext_call.return_data[0]);
                    else:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args 0, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not emergencyExit:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        emit Harvested(0, 0, ext_call.return_data[0], ext_call.return_data[0]);
                else:
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
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.strategies(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 288
                        require bool((7 * ceil32(return_data.size)) + 384 <= test266151307())
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[192] > ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                require ext_code.size(vaultAddress)
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[192] - ext_call.return_data[0], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], 0, ext_call.return_data[0]);
                            else:
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(0, ext_call.return_data[192] - ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]);
                        else:
                            if not ext_call.return_data[0]:
                                require ext_code.size(vaultAddress)
                                call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - ext_call.return_data[192], 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not emergencyExit:
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(wantAddress)
                                        call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, 0, ext_call.return_data[0]);
                            else:
                                if ext_call.return_data[0] - ext_call.return_data[192] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                if ext_call.return_data[0] < ext_call.return_data[192]:
                                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not emergencyExit:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            require ext_code.size(wantAddress)
                                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[0], ext_call.return_data[0]);
                                else:
                                    call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not emergencyExit:
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            require ext_code.size(wantAddress)
                                            call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    emit Harvested(ext_call.return_data[0] - ext_call.return_data[192], 0, ext_call.return_data[192], ext_call.return_data[0]);
                    else:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        call vaultAddress.report(uint256 rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args 0, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not emergencyExit:
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.Swapout(uint256 rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        emit Harvested(0, 0, ext_call.return_data[0], ext_call.return_data[0]);
}



}
