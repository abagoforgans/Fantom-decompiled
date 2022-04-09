contract main {




// =====================  Runtime code  =====================


#
#  - pendingReward()
#  - harvest()
#
const name = 'StrategyHyprLPFarm', 0

const apiVersion = '', 0

const delegatedAssets = 0

const farmer = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20

const sub_ef1b5c18(?) = 0x575f8738efda7f512e3654f277c77e80c7d2725

const router = 0x53c153a0df7e050bbefbb70ee9632061f12795fb

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


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
uint256 sub_9bda01d6;
uint256 pid;
address token0Address;
address token1Address;
address stor15;
address rewardTokenAddress;
address lPTokenAddress;

function LPToken() payable {
    return lPTokenAddress
}

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function token0() payable {
    return token0Address
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

function sub_9bda01d6(?) payable {
    return sub_9bda01d6
}

function rewards() payable {
    return rewardsAddress
}

function keeper() payable {
    return keeperAddress
}

function token1() payable {
    return token1Address
}

function pid() payable {
    return pid
}

function rewardToken() payable {
    return rewardTokenAddress
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
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfStake() payable {
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
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
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
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
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
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
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
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
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((4 * ceil32(return_data.size)) + 864 <= test266151307())
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold < 0:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold + (2 * ext_call.return_data[0]) < ext_call.return_data[192]:
        return 1
    if 2 * ext_call.return_data[0] <= ext_call.return_data[192]:
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
    if ext_call.return_data[192] > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.creditAvailable() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (4 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not profitFactor:
        return (0 < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
    if arg1 * profitFactor / profitFactor != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
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
    mem[ceil32(return_data.size) + 128] = rewardTokenAddress
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
    staticcall arg1.balanceOf(address rg1) with:
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
    mem[(4 * ceil32(return_data.size)) + 192 len 4] = transfer(address rg1, uint256 rg2)
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 324 len floor32((5 * ceil32(return_data.size)) + 99)] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 260 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
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
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args pid, this.address
    mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
    if arg1 > ext_call.return_data[0]:
        if ext_call.return_data[0] < arg1 - ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
            call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
        else:
            mem[(2 * ceil32(return_data.size)) + 196] = arg1 - ext_call.return_data[0]
            require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
            call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
    if ext_call.return_data[0] < arg1:
        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 160] = 68
        mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 192 len 4] = transfer(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + 260] = 32
        mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 324 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
        mem[(4 * ceil32(return_data.size)) + 392] = 0
        call wantAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
    else:
        mem[(4 * ceil32(return_data.size)) + 228] = arg1
        mem[(4 * ceil32(return_data.size)) + 160] = 68
        mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 192 len 4] = transfer(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + 260] = 32
        mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 324 len 96] = transfer(address rg1, uint256 rg2), msg.sender, arg1, 0
        mem[(4 * ceil32(return_data.size)) + 392] = 0
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
    return 0
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
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args pid, this.address
        mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args pid, this.address
        mem[(4 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((6 * ceil32(return_data.size)) + 224 <= test266151307())
        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if ext_call.return_data[0] < 0:
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                mem[(6 * ceil32(return_data.size)) + 260] = 0
                require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 260] = arg1
        mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 224] = 68
        mem[(8 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
        mem[(8 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
        mem[(8 * ceil32(return_data.size)) + 324] = 32
        mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(8 * ceil32(return_data.size)) + 456] = 0
        call wantAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
            mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                if not mem[(8 * ceil32(return_data.size)) + 420]:
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
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args pid, this.address
        mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((4 * ceil32(return_data.size)) + 160 <= test266151307())
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
        mem[(4 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args pid, this.address
        mem[(6 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((7 * ceil32(return_data.size)) + 224 <= test266151307())
        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if ext_call.return_data[0] < 0:
                mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                mem[(7 * ceil32(return_data.size)) + 260] = 0
                require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 260] = arg1
        mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 224] = 68
        mem[(10 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
        mem[(10 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
        mem[(10 * ceil32(return_data.size)) + 324] = 32
        mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(10 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(10 * ceil32(return_data.size)) + 456] = 0
        call wantAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
            mem[(10 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + 420] == bool(mem[(10 * ceil32(return_data.size)) + 420])
                if not mem[(10 * ceil32(return_data.size)) + 420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function initialize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if token0Address:
        revert with 0, 'Already initialized'
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    lPTokenAddress = ext_call.return_data[12 len 20]
    pid = arg1
    stor15 = 0x575f8738efda7f512e3654f277c77e80c7d2725
    rewardTokenAddress = 0x575f8738efda7f512e3654f277c77e80c7d2725
    if ext_call.return_data[12 len 20] != wantAddress:
        revert with 0, 'wrong want token'
    require ext_code.size(wantAddress)
    staticcall wantAddress.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    token0Address = ext_call.return_data[12 len 20]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xd21220a7 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    token1Address = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 228] = this.address
    mem[(4 * ceil32(return_data.size)) + 260] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), 0x53c153a0df7e050bbefbb70ee9632061f12795fb
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(6 * ceil32(return_data.size)) + 260] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
    mem[(6 * ceil32(return_data.size)) + 292] = -1
    mem[(6 * ceil32(return_data.size)) + 224] = 68
    mem[(6 * ceil32(return_data.size)) + 260 len 28] = 0x53c153a0df7e050bbefbb70ee9632061
    mem[(6 * ceil32(return_data.size)) + 256 len 4] = approve(address rg1, uint256 rg2)
    mem[(6 * ceil32(return_data.size)) + 324] = 32
    mem[(6 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 388 len 96] = approve(address rg1, uint256 rg2), 0x53c153a0df7e050bbefbb70e, 0, -1, 0
    mem[(6 * ceil32(return_data.size)) + 456] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, approve(address rg1, uint256 rg2), 0x53c153a0df7e050bbefbb70e, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address rg1, uint256 rg2), 0x53c153a0df7e050bbefbb70e, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(6 * ceil32(return_data.size)) + 392] = this.address
        mem[(6 * ceil32(return_data.size)) + 424] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0x53c153a0df7e050bbefbb70ee9632061f12795fb
        mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(7 * ceil32(return_data.size)) + 424] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
        mem[(7 * ceil32(return_data.size)) + 456] = -1
        mem[(7 * ceil32(return_data.size)) + 388] = 68
        mem[(7 * ceil32(return_data.size)) + 420 len 4] = approve(address rg1, uint256 rg2)
        mem[(7 * ceil32(return_data.size)) + 488] = 32
        mem[(7 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 552 len 96] = 0, 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, 0
        mem[(7 * ceil32(return_data.size)) + 620] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct Mask(32, 224, 0, 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(7 * ceil32(return_data.size)) + 556] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(7 * ceil32(return_data.size)) + 588] = -1
            require ext_code.size(token0Address)
            call token0Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1
            mem[(7 * ceil32(return_data.size)) + 552] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 556] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(8 * ceil32(return_data.size)) + 588] = -1
            require ext_code.size(token1Address)
            call token1Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 556 len ceil32(return_data.size) + 64]
            mem[(8 * ceil32(return_data.size)) + 552] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 556] = this.address
            mem[(10 * ceil32(return_data.size)) + 588] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            require ext_code.size(lPTokenAddress)
            staticcall lPTokenAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, mem[(10 * ceil32(return_data.size)) + 620 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 552] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(12 * ceil32(return_data.size)) + 684 len 9 * ceil32(return_data.size)]
            mem[(12 * ceil32(return_data.size)) + 588] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            mem[(12 * ceil32(return_data.size)) + 620] = -1
            mem[(12 * ceil32(return_data.size)) + 552] = 68
            mem[(12 * ceil32(return_data.size)) + 584 len 4] = approve(address rg1, uint256 rg2)
            mem[(12 * ceil32(return_data.size)) + 652] = 32
            mem[(12 * ceil32(return_data.size)) + 684] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + 716 len 96] = 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0
            mem[(12 * ceil32(return_data.size)) + 784] = 0
            call lPTokenAddress with:
               funct Mask(32, 224, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + 748 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + 748] == bool(mem[(12 * ceil32(return_data.size)) + 748])
                    if not mem[(12 * ceil32(return_data.size)) + 748]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 552] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 584] == bool(mem[(7 * ceil32(return_data.size)) + 584])
                if not mem[(7 * ceil32(return_data.size)) + 584]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = -1
            require ext_code.size(token0Address)
            call token0Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = -1
            require ext_code.size(token1Address)
            call token1Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len ceil32(return_data.size) + 64]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = this.address
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            require ext_code.size(lPTokenAddress)
            staticcall lPTokenAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 685 len 9 * ceil32(return_data.size)]
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = -1
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 68
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4] = approve(address rg1, uint256 rg2)
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 32
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 96] = 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = 0
            call lPTokenAddress with:
               funct Mask(32, 224, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(15 * ceil32(return_data.size)) + 818 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749])
                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(15 * ceil32(return_data.size)) + 850 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[(6 * ceil32(return_data.size)) + 388] = return_data.size
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
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0x53c153a0df7e050bbefbb70ee9632061f12795fb
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = -1
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = approve(address rg1, uint256 rg2)
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, 0
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct Mask(32, 224, 0, 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = -1
            require ext_code.size(token0Address)
            call token0Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = -1
            require ext_code.size(token1Address)
            call token1Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len ceil32(return_data.size) + 64]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = this.address
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            require ext_code.size(lPTokenAddress)
            staticcall lPTokenAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 685 len 9 * ceil32(return_data.size)]
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = -1
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 68
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4] = approve(address rg1, uint256 rg2)
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 32
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 96] = 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = 0
            call lPTokenAddress with:
               funct Mask(32, 224, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(15 * ceil32(return_data.size)) + 818 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749])
                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(15 * ceil32(return_data.size)) + 850 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(10 * ceil32(return_data.size)) + 654 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(10 * ceil32(return_data.size)) + 686 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(10 * ceil32(return_data.size)) + 558] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(10 * ceil32(return_data.size)) + 590] = -1
            require ext_code.size(token0Address)
            call token0Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(10 * ceil32(return_data.size)) + 554] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 558] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(12 * ceil32(return_data.size)) + 590] = -1
            require ext_code.size(token1Address)
            call token1Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1, mem[(12 * ceil32(return_data.size)) + 622 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(12 * ceil32(return_data.size)) + 554] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(13 * ceil32(return_data.size)) + 558] = this.address
            mem[(13 * ceil32(return_data.size)) + 590] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            require ext_code.size(lPTokenAddress)
            staticcall lPTokenAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, mem[(13 * ceil32(return_data.size)) + 622 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(13 * ceil32(return_data.size)) + 554] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(15 * ceil32(return_data.size)) + 686 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(15 * ceil32(return_data.size)) + 590] = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
            mem[(15 * ceil32(return_data.size)) + 622] = -1
            mem[(15 * ceil32(return_data.size)) + 554] = 68
            mem[(15 * ceil32(return_data.size)) + 586 len 4] = approve(address rg1, uint256 rg2)
            mem[(15 * ceil32(return_data.size)) + 654] = 32
            mem[(15 * ceil32(return_data.size)) + 686] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(lPTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(15 * ceil32(return_data.size)) + 718 len 96] = 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0
            mem[(15 * ceil32(return_data.size)) + 786] = 0
            call lPTokenAddress with:
               funct Mask(32, 224, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(15 * ceil32(return_data.size)) + 750 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(15 * ceil32(return_data.size)) + 750] == bool(mem[(15 * ceil32(return_data.size)) + 750])
                    if not mem[(15 * ceil32(return_data.size)) + 750]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
