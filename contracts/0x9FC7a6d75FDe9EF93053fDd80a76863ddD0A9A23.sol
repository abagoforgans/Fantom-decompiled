contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - sub_4accfaeb(?)
#
const name = 'Stra', 0

const apiVersion = '', 0

const delegatedAssets = 0

const farmer = 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20

const sub_e763a566(?) = 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5

const rewardToken = 0x575f8738efda7f512e3654f277c77e80c7d2725

const router = 0x53c153a0df7e050bbefbb70ee9632061f12795fb


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
uint8 stor10;
uint256 stor11;
uint256 stor12;
uint8 sub_6e41e2ca;
address sub_6cd07154Address; offset 8
uint256 stor13;
uint32 stor14;
address sub_dd33ada1Address;
uint256 stor14;

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
    return bool(stor10)
}

function sub_6cd07154(?) payable {
    return sub_6cd07154Address
}

function sub_6e41e2ca(?) payable {
    return bool(sub_6e41e2ca)
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

function sub_dd33ada1(?) payable {
    return address(sub_dd33ada1Address)
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

function sub_645a6f21(?) payable {
    if sub_6e41e2ca:
        return not bool(sub_6e41e2ca)
    return bool(address(sub_dd33ada1Address))
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

function pendingReward() payable {
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0bfe3516(?) payable {
    if not address(sub_dd33ada1Address):
        return 0
    require ext_code.size(address(sub_dd33ada1Address))
    staticcall address(sub_dd33ada1Address).pendingReward(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3b42e5e2(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    stor12 = arg1
}

function sub_9b32a8bb(?) payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    stor13 = not sub_6e41e2ca or Mask(248, 8, stor13)
}

function balanceOfStake() payable {
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    return ext_call.return_data[0]
}

function sub_b733b25b(?) payable {
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    return (ext_call.return_data[0] / 5)
}

function sub_98d54b28(?) payable {
    if not address(sub_dd33ada1Address):
        return 0
    require ext_code.size(address(sub_dd33ada1Address))
    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
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

function sub_1d195d65(?) payable {
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    if not ext_call.return_data[0]:
        return 0
    if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
        revert with 0, 'SafeMath: multiplication overflow'
    return (5 * ext_call.return_data[0])
}

function sub_a6718840(?) payable {
    if not address(sub_dd33ada1Address):
        return 0
    require ext_code.size(address(sub_dd33ada1Address))
    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    if not ext_call.return_data[0]:
        return 0
    if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
        revert with 0, 'SafeMath: multiplication overflow'
    return (5 * ext_call.return_data[0])
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
    stor10 = 1
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

function estimatedTotalAssets() payable {
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (4 * ext_call.return_data[0])
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
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((4 * ceil32(return_data.size)) + 448 <= test266151307())
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (4 * ext_call.return_data[0] > 0)
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

function sub_97c303c8(?) payable {
    if not address(sub_dd33ada1Address):
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor11, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool(ceil32(return_data.size) + 160 <= test266151307())
        if ext_call.return_data[0] / 5 <= 0:
            return 0
        if not address(sub_dd33ada1Address):
            require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
            staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor11, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((2 * ceil32(return_data.size)) + 288 <= test266151307())
            if 0 > ext_call.return_data[0] / 5:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (ext_call.return_data[0] / 5)
        require ext_code.size(address(sub_dd33ada1Address))
        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((2 * ceil32(return_data.size)) + 288 <= test266151307())
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor11, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((4 * ceil32(return_data.size)) + 352 <= test266151307())
    else:
        require ext_code.size(address(sub_dd33ada1Address))
        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool(ceil32(return_data.size) + 160 <= test266151307())
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor11, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((2 * ceil32(return_data.size)) + 224 <= test266151307())
        if ext_call.return_data[0] / 5 <= ext_call.return_data[0]:
            return 0
        if not address(sub_dd33ada1Address):
            require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
            staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor11, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((4 * ceil32(return_data.size)) + 352 <= test266151307())
            if 0 > ext_call.return_data[0] / 5:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (ext_call.return_data[0] / 5)
        require ext_code.size(address(sub_dd33ada1Address))
        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((4 * ceil32(return_data.size)) + 352 <= test266151307())
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor11, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((6 * ceil32(return_data.size)) + 416 <= test266151307())
    if ext_call.return_data[0] > ext_call.return_data[0] / 5:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((ext_call.return_data[0] / 5) - ext_call.return_data[0])
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
        mem[ceil32(return_data.size) + 676] = stor11
        mem[ceil32(return_data.size) + 708] = this.address
        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
        staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor11, this.address
        mem[ceil32(return_data.size) + 672] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 >= stor12:
                return 0 >= stor12
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args vaultAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0] >= 10 * 10^18
        if 20 * ext_call.return_data[0] / ext_call.return_data[0] != 20:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + 672] = 26
        mem[(2 * ceil32(return_data.size)) + 704] = 'SafeMath: division by zero'
        if 20 * ext_call.return_data[0] / 100 < 10^9:
            if 0 >= stor12:
                return 0 >= stor12
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args vaultAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0] >= 10 * 10^18
        mem[(2 * ceil32(return_data.size)) + 736] = 2
        mem[(2 * ceil32(return_data.size)) + 768] = 0x575f8738efda7f512e3654f277c77e80c7d2725
        mem[(2 * ceil32(return_data.size)) + 800] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(2 * ceil32(return_data.size)) + 832] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 836] = 20 * ext_call.return_data[0] / 100
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
        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
        staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 20 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 932 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 832 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 832
        require return_data.size >= 32
        _408 = mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32
        require mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 832 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 863
        _414 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 832]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 832] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 832]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 832]) + 864 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 832]) + 864
        mem[(4 * ceil32(return_data.size)) + 832] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 832 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 832]
        require return_data.size >= _408 + (32 * _414) + 32
        mem[(4 * ceil32(return_data.size)) + 864 len 32 * _414] = mem[(2 * ceil32(return_data.size)) + _408 + 864 len 32 * _414]
        require _414 - 1 < _414
        if mem[(32 * _414 - 1) + (4 * ceil32(return_data.size)) + 864] >= stor12:
            mem[mem[64]] = mem[(32 * _414 - 1) + (4 * ceil32(return_data.size)) + 864] >= stor12
        else:
            mem[mem[64] + 4] = vaultAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args vaultAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = mem[_546] >= 10 * 10^18
    else:
        mem[ceil32(return_data.size) + 672] = 30
        mem[ceil32(return_data.size) + 704] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[160] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - ext_call.return_data[160] < minReportDelay:
            mem[ceil32(return_data.size) + 740] = stor11
            mem[ceil32(return_data.size) + 772] = this.address
            require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
            staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor11, this.address
            mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 >= stor12:
                    return 0 >= stor12
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args vaultAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0] >= 10 * 10^18
            if 20 * ext_call.return_data[0] / ext_call.return_data[0] != 20:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 736] = 26
            mem[(2 * ceil32(return_data.size)) + 768] = 'SafeMath: division by zero'
            if 20 * ext_call.return_data[0] / 100 < 10^9:
                if 0 >= stor12:
                    return 0 >= stor12
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args vaultAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0] >= 10 * 10^18
            mem[(2 * ceil32(return_data.size)) + 800] = 2
            mem[(2 * ceil32(return_data.size)) + 832] = 0x575f8738efda7f512e3654f277c77e80c7d2725
            mem[(2 * ceil32(return_data.size)) + 864] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(2 * ceil32(return_data.size)) + 896] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 900] = 20 * ext_call.return_data[0] / 100
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
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 20 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 996 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 896 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 896
            require return_data.size >= 32
            _407 = mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32
            require mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 896 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 927
            _413 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 896]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 896] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 896]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 896]) + 928 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 896]) + 928
            mem[(4 * ceil32(return_data.size)) + 896] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 896 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 896]
            require return_data.size >= _407 + (32 * _413) + 32
            mem[(4 * ceil32(return_data.size)) + 928 len 32 * _413] = mem[(2 * ceil32(return_data.size)) + _407 + 928 len 32 * _413]
            require _413 - 1 < _413
            if mem[(32 * _413 - 1) + (4 * ceil32(return_data.size)) + 928] >= stor12:
                mem[mem[64]] = mem[(32 * _413 - 1) + (4 * ceil32(return_data.size)) + 928] >= stor12
            else:
                mem[mem[64] + 4] = vaultAddress
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args vaultAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_545] >= 10 * 10^18
        else:
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
            mem[(2 * ceil32(return_data.size)) + 804] = stor11
            mem[(2 * ceil32(return_data.size)) + 836] = this.address
            require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
            staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor11, this.address
            mem[(2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 836] = this.address
            require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
            staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor11, this.address
            mem[(4 * ceil32(return_data.size)) + 800 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((6 * ceil32(return_data.size)) + 864 <= test266151307())
            mem[(6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 832] = ext_call.return_data[32]
            mem[(6 * ceil32(return_data.size)) + 868] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (4 * ext_call.return_data[0]) < ext_call.return_data[192]:
                return 1
            if 4 * ext_call.return_data[0] <= ext_call.return_data[192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    if 0 < ext_call.return_data[0]:
                        return (0 < ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 868] = stor11
                    mem[(8 * ceil32(return_data.size)) + 900] = this.address
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor11, this.address
                    mem[(8 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    if 20 * ext_call.return_data[0] / ext_call.return_data[0] != 20:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(10 * ceil32(return_data.size)) + 864] = 26
                    mem[(10 * ceil32(return_data.size)) + 896] = 'SafeMath: division by zero'
                    if 20 * ext_call.return_data[0] / 100 < 10^9:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    mem[(10 * ceil32(return_data.size)) + 928] = 2
                    mem[(10 * ceil32(return_data.size)) + 960] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                    mem[(10 * ceil32(return_data.size)) + 992] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[(10 * ceil32(return_data.size)) + 1024] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 1028] = 20 * ext_call.return_data[0] / 100
                    mem[(10 * ceil32(return_data.size)) + 1060] = 64
                    mem[(10 * ceil32(return_data.size)) + 1092] = 2
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + 960
                    t = (10 * ceil32(return_data.size)) + 1124
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 20 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1124 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 1024 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (11 * ceil32(return_data.size)) + 1024
                    require return_data.size >= 32
                    _404 = mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32
                    require mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                    require (10 * ceil32(return_data.size)) + return_data.size + 1024 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1055
                    _410 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]
                    require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024] <= test266151307()
                    require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056 <= test266151307()
                    mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056
                    mem[(11 * ceil32(return_data.size)) + 1024] = _410
                    require return_data.size >= _404 + (32 * _410) + 32
                    mem[(11 * ceil32(return_data.size)) + 1056 len 32 * _410] = mem[(10 * ceil32(return_data.size)) + _404 + 1056 len 32 * _410]
                    require _410 - 1 < _410
                    if mem[(32 * _410 - 1) + (11 * ceil32(return_data.size)) + 1056] >= stor12:
                        mem[mem[64]] = mem[(32 * _410 - 1) + (11 * ceil32(return_data.size)) + 1056] >= stor12
                    else:
                        mem[mem[64] + 4] = vaultAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _542 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_542] >= 10 * 10^18
                else:
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * profitFactor < ext_call.return_data[0]:
                        return (arg1 * profitFactor < ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 868] = stor11
                    mem[(8 * ceil32(return_data.size)) + 900] = this.address
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor11, this.address
                    mem[(8 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    if 20 * ext_call.return_data[0] / ext_call.return_data[0] != 20:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(10 * ceil32(return_data.size)) + 864] = 26
                    mem[(10 * ceil32(return_data.size)) + 896] = 'SafeMath: division by zero'
                    if 20 * ext_call.return_data[0] / 100 < 10^9:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    mem[(10 * ceil32(return_data.size)) + 928] = 2
                    mem[(10 * ceil32(return_data.size)) + 960] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                    mem[(10 * ceil32(return_data.size)) + 992] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[(10 * ceil32(return_data.size)) + 1024] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 1028] = 20 * ext_call.return_data[0] / 100
                    mem[(10 * ceil32(return_data.size)) + 1060] = 64
                    mem[(10 * ceil32(return_data.size)) + 1092] = 2
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + 960
                    t = (10 * ceil32(return_data.size)) + 1124
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 20 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1124 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 1024 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (11 * ceil32(return_data.size)) + 1024
                    require return_data.size >= 32
                    _403 = mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32
                    require mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                    require (10 * ceil32(return_data.size)) + return_data.size + 1024 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1055
                    _409 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]
                    require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024] <= test266151307()
                    require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056 <= test266151307()
                    mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1024 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1024]) + 1056
                    mem[(11 * ceil32(return_data.size)) + 1024] = _409
                    require return_data.size >= _403 + (32 * _409) + 32
                    mem[(11 * ceil32(return_data.size)) + 1056 len 32 * _409] = mem[(10 * ceil32(return_data.size)) + _403 + 1056 len 32 * _409]
                    require _409 - 1 < _409
                    if mem[(32 * _409 - 1) + (11 * ceil32(return_data.size)) + 1056] >= stor12:
                        mem[mem[64]] = mem[(32 * _409 - 1) + (11 * ceil32(return_data.size)) + 1056] >= stor12
                    else:
                        mem[mem[64] + 4] = vaultAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _541 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_541] >= 10 * 10^18
            else:
                mem[(7 * ceil32(return_data.size)) + 864] = 30
                mem[(7 * ceil32(return_data.size)) + 896] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[192] > 3 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (5 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    if 0 < (5 * ext_call.return_data[0]) - ext_call.return_data[192]:
                        return (0 < (5 * ext_call.return_data[0]) - ext_call.return_data[192])
                    mem[(8 * ceil32(return_data.size)) + 932] = stor11
                    mem[(8 * ceil32(return_data.size)) + 964] = this.address
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor11, this.address
                    mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    if 20 * ext_call.return_data[0] / ext_call.return_data[0] != 20:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(10 * ceil32(return_data.size)) + 928] = 26
                    mem[(10 * ceil32(return_data.size)) + 960] = 'SafeMath: division by zero'
                    if 20 * ext_call.return_data[0] / 100 < 10^9:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    mem[(10 * ceil32(return_data.size)) + 992] = 2
                    mem[(10 * ceil32(return_data.size)) + 1024] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                    mem[(10 * ceil32(return_data.size)) + 1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[(10 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 1092] = 20 * ext_call.return_data[0] / 100
                    mem[(10 * ceil32(return_data.size)) + 1124] = 64
                    mem[(10 * ceil32(return_data.size)) + 1156] = 2
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + 1024
                    t = (10 * ceil32(return_data.size)) + 1188
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 20 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1188 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (11 * ceil32(return_data.size)) + 1088
                    require return_data.size >= 32
                    _406 = mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32
                    require mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                    require (10 * ceil32(return_data.size)) + return_data.size + 1088 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1119
                    _412 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088] <= test266151307()
                    require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120 <= test266151307()
                    mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120
                    mem[(11 * ceil32(return_data.size)) + 1088] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require return_data.size >= _406 + (32 * _412) + 32
                    mem[(11 * ceil32(return_data.size)) + 1120 len 32 * _412] = mem[(10 * ceil32(return_data.size)) + _406 + 1120 len 32 * _412]
                    require _412 - 1 < _412
                    if mem[(32 * _412 - 1) + (11 * ceil32(return_data.size)) + 1120] >= stor12:
                        mem[mem[64]] = mem[(32 * _412 - 1) + (11 * ceil32(return_data.size)) + 1120] >= stor12
                    else:
                        mem[mem[64] + 4] = vaultAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _544 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_544] >= 10 * 10^18
                else:
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * profitFactor < (5 * ext_call.return_data[0]) - ext_call.return_data[192]:
                        return (arg1 * profitFactor < (5 * ext_call.return_data[0]) - ext_call.return_data[192])
                    mem[(8 * ceil32(return_data.size)) + 932] = stor11
                    mem[(8 * ceil32(return_data.size)) + 964] = this.address
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.pendingOrillium(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor11, this.address
                    mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    if 20 * ext_call.return_data[0] / ext_call.return_data[0] != 20:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(10 * ceil32(return_data.size)) + 928] = 26
                    mem[(10 * ceil32(return_data.size)) + 960] = 'SafeMath: division by zero'
                    if 20 * ext_call.return_data[0] / 100 < 10^9:
                        if 0 >= stor12:
                            return 0 >= stor12
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0] >= 10 * 10^18
                    mem[(10 * ceil32(return_data.size)) + 992] = 2
                    mem[(10 * ceil32(return_data.size)) + 1024] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                    mem[(10 * ceil32(return_data.size)) + 1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[(10 * ceil32(return_data.size)) + 1088] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 1092] = 20 * ext_call.return_data[0] / 100
                    mem[(10 * ceil32(return_data.size)) + 1124] = 64
                    mem[(10 * ceil32(return_data.size)) + 1156] = 2
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + 1024
                    t = (10 * ceil32(return_data.size)) + 1188
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    staticcall 0x53c153a0df7e050bbefbb70ee9632061f12795fb.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 20 * ext_call.return_data[0] / 100, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1188 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 1088 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (11 * ceil32(return_data.size)) + 1088
                    require return_data.size >= 32
                    _405 = mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32
                    require mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 <= test266151307()
                    require (10 * ceil32(return_data.size)) + return_data.size + 1088 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1119
                    _411 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088] <= test266151307()
                    require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120 <= test266151307()
                    mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]) + 1120
                    mem[(11 * ceil32(return_data.size)) + 1088] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1088 len 4], Mask(224, 32, 20 * ext_call.return_data[0] / 100) >> 32 + 1088]
                    require return_data.size >= _405 + (32 * _411) + 32
                    mem[(11 * ceil32(return_data.size)) + 1120 len 32 * _411] = mem[(10 * ceil32(return_data.size)) + _405 + 1120 len 32 * _411]
                    require _411 - 1 < _411
                    if mem[(32 * _411 - 1) + (11 * ceil32(return_data.size)) + 1120] >= stor12:
                        mem[mem[64]] = mem[(32 * _411 - 1) + (11 * ceil32(return_data.size)) + 1120] >= stor12
                    else:
                        mem[mem[64] + 4] = vaultAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args vaultAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = mem[_543] >= 10 * 10^18
    return memory
      from mem[64]
       len 32
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
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor11, this.address
    mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
    if not ext_call.return_data[0]:
        if arg1 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
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
                mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 260] = 32
                mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            else:
                mem[(4 * ceil32(return_data.size)) + 228] = arg1
                mem[(4 * ceil32(return_data.size)) + 160] = 68
                mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 260] = 32
                mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
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
        else:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if 0 < arg1 - ext_call.return_data[0]:
                if not address(sub_dd33ada1Address):
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
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
                    require ext_code.size(address(sub_dd33ada1Address))
                    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((4 * ceil32(return_data.size)) + 288 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(address(sub_dd33ada1Address))
                        if not sub_6e41e2ca:
                            call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(6 * ceil32(return_data.size)) + 356] = arg1
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
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
                if not address(sub_dd33ada1Address):
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (arg1 - ext_call.return_data[0] / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
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
                    require ext_code.size(address(sub_dd33ada1Address))
                    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((4 * ceil32(return_data.size)) + 288 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(address(sub_dd33ada1Address))
                        if not sub_6e41e2ca:
                            call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (arg1 - ext_call.return_data[0] / 5)
                        else:
                            call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (arg1 - ext_call.return_data[0] / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(6 * ceil32(return_data.size)) + 356] = arg1
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
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
        if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
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
                mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 260] = 32
                mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            else:
                mem[(4 * ceil32(return_data.size)) + 228] = arg1
                mem[(4 * ceil32(return_data.size)) + 160] = 68
                mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 260] = 32
                mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
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
        else:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if 5 * ext_call.return_data[0] < arg1 - ext_call.return_data[0]:
                if not address(sub_dd33ada1Address):
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (5 * ext_call.return_data[0] / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
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
                    require ext_code.size(address(sub_dd33ada1Address))
                    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((4 * ceil32(return_data.size)) + 288 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(address(sub_dd33ada1Address))
                        if not sub_6e41e2ca:
                            call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (5 * ext_call.return_data[0] / 5)
                        else:
                            call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (5 * ext_call.return_data[0] / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(6 * ceil32(return_data.size)) + 356] = arg1
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
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
                if not address(sub_dd33ada1Address):
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (arg1 - ext_call.return_data[0] / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 68
                        mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(4 * ceil32(return_data.size)) + 456] = 0
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
                    require ext_code.size(address(sub_dd33ada1Address))
                    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((4 * ceil32(return_data.size)) + 288 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(address(sub_dd33ada1Address))
                        if not sub_6e41e2ca:
                            call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (arg1 - ext_call.return_data[0] / 5)
                        else:
                            call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (arg1 - ext_call.return_data[0] / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                    if ext_call.return_data[0] < arg1:
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    else:
                        mem[(6 * ceil32(return_data.size)) + 356] = arg1
                        mem[(6 * ceil32(return_data.size)) + 288] = 68
                        mem[(6 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(6 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 388] = 32
                        mem[(6 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 0
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
               args stor11, this.address
        mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
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
               args stor11, this.address
        mem[(4 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((6 * ceil32(return_data.size)) + 224 <= test266151307())
        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
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
                mem[(8 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 324] = 32
                mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 456] = 0
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
                mem[(6 * ceil32(return_data.size)) + 224] = 26
                mem[(6 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                if not address(sub_dd33ada1Address):
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 324] = arg1
                    mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 288] = 68
                    mem[(8 * ceil32(return_data.size)) + 324 len 28] = address(arg1) << 64
                    mem[(8 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 388] = 32
                    mem[(8 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 520] = 0
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
                        mem[(8 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 484] == bool(mem[(8 * ceil32(return_data.size)) + 484])
                            if not mem[(8 * ceil32(return_data.size)) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(sub_dd33ada1Address))
                    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((7 * ceil32(return_data.size)) + 352 <= test266151307())
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(address(sub_dd33ada1Address))
                        if not sub_6e41e2ca:
                            call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / 5)
                        else:
                            call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(10 * ceil32(return_data.size)) + 388] = arg1
                    mem[(10 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + 352] = 68
                    mem[(10 * ceil32(return_data.size)) + 388 len 28] = address(arg1) << 64
                    mem[(10 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(10 * ceil32(return_data.size)) + 452] = 32
                    mem[(10 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + 516 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                    mem[(10 * ceil32(return_data.size)) + 584] = 0
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
                        mem[(10 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + 548] == bool(mem[(10 * ceil32(return_data.size)) + 548])
                            if not mem[(10 * ceil32(return_data.size)) + 548]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
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
                mem[(8 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 324] = 32
                mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 456] = 0
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
                mem[(6 * ceil32(return_data.size)) + 224] = 26
                mem[(6 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                if 5 * ext_call.return_data[0] < 0:
                    if not address(sub_dd33ada1Address):
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (5 * ext_call.return_data[0] / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 324] = arg1
                        mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 288] = 68
                        mem[(8 * ceil32(return_data.size)) + 324 len 28] = address(arg1) << 64
                        mem[(8 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(8 * ceil32(return_data.size)) + 388] = 32
                        mem[(8 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 520] = 0
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
                            mem[(8 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 484] == bool(mem[(8 * ceil32(return_data.size)) + 484])
                                if not mem[(8 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(sub_dd33ada1Address))
                        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((7 * ceil32(return_data.size)) + 352 <= test266151307())
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(sub_dd33ada1Address))
                            if not sub_6e41e2ca:
                                call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (5 * ext_call.return_data[0] / 5)
                            else:
                                call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (5 * ext_call.return_data[0] / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 388] = arg1
                        mem[(10 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 352] = 68
                        mem[(10 * ceil32(return_data.size)) + 388 len 28] = address(arg1) << 64
                        mem[(10 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 452] = 32
                        mem[(10 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 516 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(10 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 548] == bool(mem[(10 * ceil32(return_data.size)) + 548])
                                if not mem[(10 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if not address(sub_dd33ada1Address):
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 324] = arg1
                        mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 288] = 68
                        mem[(8 * ceil32(return_data.size)) + 324 len 28] = address(arg1) << 64
                        mem[(8 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(8 * ceil32(return_data.size)) + 388] = 32
                        mem[(8 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 520] = 0
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
                            mem[(8 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 484] == bool(mem[(8 * ceil32(return_data.size)) + 484])
                                if not mem[(8 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(sub_dd33ada1Address))
                        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((7 * ceil32(return_data.size)) + 352 <= test266151307())
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(sub_dd33ada1Address))
                            if not sub_6e41e2ca:
                                call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (0 / 5)
                            else:
                                call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 388] = arg1
                        mem[(10 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 352] = 68
                        mem[(10 * ceil32(return_data.size)) + 388 len 28] = address(arg1) << 64
                        mem[(10 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 452] = 32
                        mem[(10 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 516 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(10 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 548] == bool(mem[(10 * ceil32(return_data.size)) + 548])
                                if not mem[(10 * ceil32(return_data.size)) + 548]:
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
               args stor11, this.address
        mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((4 * ceil32(return_data.size)) + 160 <= test266151307())
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
        mem[(4 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
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
               args stor11, this.address
        mem[(6 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((7 * ceil32(return_data.size)) + 224 <= test266151307())
        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                mem[(7 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
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
                mem[(10 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(10 * ceil32(return_data.size)) + 324] = 32
                mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(10 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                mem[(10 * ceil32(return_data.size)) + 456] = 0
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
            else:
                mem[(7 * ceil32(return_data.size)) + 224] = 26
                mem[(7 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                if not address(sub_dd33ada1Address):
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(10 * ceil32(return_data.size)) + 324] = arg1
                    mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + 288] = 68
                    mem[(10 * ceil32(return_data.size)) + 324 len 28] = address(arg1) << 64
                    mem[(10 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(10 * ceil32(return_data.size)) + 388] = 32
                    mem[(10 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                    mem[(10 * ceil32(return_data.size)) + 520] = 0
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
                        mem[(10 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + 484] == bool(mem[(10 * ceil32(return_data.size)) + 484])
                            if not mem[(10 * ceil32(return_data.size)) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(sub_dd33ada1Address))
                    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((8 * ceil32(return_data.size)) + 352 <= test266151307())
                    mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(address(sub_dd33ada1Address))
                        if not sub_6e41e2ca:
                            call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / 5)
                        else:
                            call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / 5)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(8 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(10 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(11 * ceil32(return_data.size)) + 388] = arg1
                    mem[(11 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                    mem[(11 * ceil32(return_data.size)) + 352] = 68
                    mem[(11 * ceil32(return_data.size)) + 388 len 28] = address(arg1) << 64
                    mem[(11 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(11 * ceil32(return_data.size)) + 452] = 32
                    mem[(11 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(11 * ceil32(return_data.size)) + 516 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                    mem[(11 * ceil32(return_data.size)) + 584] = 0
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
                        mem[(11 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(11 * ceil32(return_data.size)) + 548] == bool(mem[(11 * ceil32(return_data.size)) + 548])
                            if not mem[(11 * ceil32(return_data.size)) + 548]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                mem[(7 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
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
                mem[(10 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(10 * ceil32(return_data.size)) + 324] = 32
                mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(10 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                mem[(10 * ceil32(return_data.size)) + 456] = 0
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
            else:
                mem[(7 * ceil32(return_data.size)) + 224] = 26
                mem[(7 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                if 5 * ext_call.return_data[0] < 0:
                    if not address(sub_dd33ada1Address):
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (5 * ext_call.return_data[0] / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 324] = arg1
                        mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 288] = 68
                        mem[(10 * ceil32(return_data.size)) + 324 len 28] = address(arg1) << 64
                        mem[(10 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 388] = 32
                        mem[(10 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 520] = 0
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
                            mem[(10 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 484] == bool(mem[(10 * ceil32(return_data.size)) + 484])
                                if not mem[(10 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(sub_dd33ada1Address))
                        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((8 * ceil32(return_data.size)) + 352 <= test266151307())
                        mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(sub_dd33ada1Address))
                            if not sub_6e41e2ca:
                                call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (5 * ext_call.return_data[0] / 5)
                            else:
                                call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (5 * ext_call.return_data[0] / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 388] = arg1
                        mem[(11 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 352] = 68
                        mem[(11 * ceil32(return_data.size)) + 388 len 28] = address(arg1) << 64
                        mem[(11 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 452] = 32
                        mem[(11 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 516 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 548] == bool(mem[(11 * ceil32(return_data.size)) + 548])
                                if not mem[(11 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if not address(sub_dd33ada1Address):
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 324] = arg1
                        mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 288] = 68
                        mem[(10 * ceil32(return_data.size)) + 324 len 28] = address(arg1) << 64
                        mem[(10 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 388] = 32
                        mem[(10 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 520] = 0
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
                            mem[(10 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 484] == bool(mem[(10 * ceil32(return_data.size)) + 484])
                                if not mem[(10 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(sub_dd33ada1Address))
                        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((8 * ceil32(return_data.size)) + 352 <= test266151307())
                        mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 320] = ext_call.return_data[32]
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(address(sub_dd33ada1Address))
                            if not sub_6e41e2ca:
                                call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args (0 / 5)
                            else:
                                call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
                        call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / 5)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 388] = arg1
                        mem[(11 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 352] = 68
                        mem[(11 * ceil32(return_data.size)) + 388 len 28] = address(arg1) << 64
                        mem[(11 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 452] = 32
                        mem[(11 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 516 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 548] == bool(mem[(11 * ceil32(return_data.size)) + 548])
                                if not mem[(11 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_8bee77b7(?) payable {
    if msg.sender == strategistAddress:
        sub_6e41e2ca = 1
        if address(sub_dd33ada1Address):
            require ext_code.size(address(sub_dd33ada1Address))
            staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool(ceil32(return_data.size) + 160 <= test266151307())
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_dd33ada1Address))
                if not sub_6e41e2ca:
                    call address(sub_dd33ada1Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    call address(sub_dd33ada1Address).emergencyWithdraw() with:
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = address(sub_dd33ada1Address)
                require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_dd33ada1Address)
                mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if sub_6cd07154Address:
                        mem[(2 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(sub_6cd07154Address)
                        staticcall sub_6cd07154Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(4 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 452
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            else:
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 484
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + 484 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(2 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 68
                    mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                    mem[(2 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                    mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                        if sub_6cd07154Address:
                            mem[(2 * ceil32(return_data.size)) + 328] = this.address
                            require ext_code.size(sub_6cd07154Address)
                            staticcall sub_6cd07154Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                mem[(4 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                    mem[(4 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                    mem[(4 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 356
                                    t = (4 * ceil32(return_data.size)) + 616
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 616 len 64]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[(4 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                    mem[(4 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 356
                                    t = (4 * ceil32(return_data.size)) + 648
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + 648 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 324] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                            if not mem[(2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if sub_6cd07154Address:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                            require ext_code.size(sub_6cd07154Address)
                            staticcall sub_6cd07154Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            sub_6e41e2ca = 1
            if msg.sender == strategistAddress:
                if address(sub_dd33ada1Address):
                    require ext_code.size(address(sub_dd33ada1Address))
                    staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((2 * ceil32(return_data.size)) + 160 <= test266151307())
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                    if ext_call.return_data[0]:
                        require ext_code.size(address(sub_dd33ada1Address))
                        if not sub_6e41e2ca:
                            call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        else:
                            call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 164] = this.address
                        mem[(2 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                        require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                        staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(sub_dd33ada1Address)
                        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_6cd07154Address:
                                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                                require ext_code.size(sub_6cd07154Address)
                                staticcall sub_6cd07154Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    mem[(6 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                        mem[(6 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                        mem[(6 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 192
                                        t = (6 * ceil32(return_data.size)) + 452
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 452 len 64]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[(6 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                        mem[(6 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 192
                                        t = (6 * ceil32(return_data.size)) + 484
                                        while idx < 3:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 484 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[(4 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                            mem[(4 * ceil32(return_data.size)) + 228] = 0
                            mem[(4 * ceil32(return_data.size)) + 160] = 68
                            mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                            mem[(4 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                            mem[(4 * ceil32(return_data.size)) + 260] = 32
                            mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                            mem[(4 * ceil32(return_data.size)) + 392] = 0
                            call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                               funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                if sub_6cd07154Address:
                                    mem[(4 * ceil32(return_data.size)) + 328] = this.address
                                    require ext_code.size(sub_6cd07154Address)
                                    staticcall sub_6cd07154Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        mem[(6 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                            mem[(6 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(6 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 356
                                            t = (6 * ceil32(return_data.size)) + 616
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 616 len 64]
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[(6 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(6 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 356
                                            t = (6 * ceil32(return_data.size)) + 648
                                            while idx < 3:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 648 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                if sub_6cd07154Address:
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                                    require ext_code.size(sub_6cd07154Address)
                                    staticcall sub_6cd07154Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                            while idx < 3:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.governance() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.sender == ext_call.return_data[12 len 20]:
                    if address(sub_dd33ada1Address):
                        require ext_code.size(address(sub_dd33ada1Address))
                        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((4 * ceil32(return_data.size)) + 160 <= test266151307())
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(sub_dd33ada1Address))
                            if not sub_6e41e2ca:
                                call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                            else:
                                call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 164] = this.address
                            mem[(4 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                            require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                            staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(sub_dd33ada1Address)
                            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_6cd07154Address:
                                    require ext_code.size(sub_6cd07154Address)
                                    staticcall sub_6cd07154Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        mem[(7 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                            mem[(7 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(7 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 192
                                            t = (7 * ceil32(return_data.size)) + 452
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 452 len 64]
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[(7 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(7 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 192
                                            t = (7 * ceil32(return_data.size)) + 484
                                            while idx < 3:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 484 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[(6 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                mem[(6 * ceil32(return_data.size)) + 228] = 0
                                mem[(6 * ceil32(return_data.size)) + 160] = 68
                                mem[(6 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                mem[(6 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                mem[(6 * ceil32(return_data.size)) + 260] = 32
                                mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                mem[(6 * ceil32(return_data.size)) + 392] = 0
                                call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                   funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                    if sub_6cd07154Address:
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(7 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(7 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + 356
                                                t = (7 * ceil32(return_data.size)) + 616
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 616 len 64]
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(7 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + 356
                                                t = (7 * ceil32(return_data.size)) + 648
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 648 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                                        if not mem[(6 * ceil32(return_data.size)) + 356]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if sub_6cd07154Address:
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.guardian() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if msg.sender == ext_call.return_data[12 len 20]:
                        if address(sub_dd33ada1Address):
                            require ext_code.size(address(sub_dd33ada1Address))
                            staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((6 * ceil32(return_data.size)) + 160 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                            if ext_call.return_data[0]:
                                require ext_code.size(address(sub_dd33ada1Address))
                                if not sub_6e41e2ca:
                                    call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                else:
                                    call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                                mem[(6 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(sub_dd33ada1Address)
                                mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if sub_6cd07154Address:
                                        mem[(7 * ceil32(return_data.size)) + 164] = this.address
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(8 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(8 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 192
                                                t = (8 * ceil32(return_data.size)) + 452
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 452 len 64]
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(8 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 192
                                                t = (8 * ceil32(return_data.size)) + 484
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 484 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    mem[(7 * ceil32(return_data.size)) + 228] = 0
                                    mem[(7 * ceil32(return_data.size)) + 160] = 68
                                    mem[(7 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                    mem[(7 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                    mem[(7 * ceil32(return_data.size)) + 260] = 32
                                    mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(7 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                    mem[(7 * ceil32(return_data.size)) + 392] = 0
                                    call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                        if sub_6cd07154Address:
                                            mem[(7 * ceil32(return_data.size)) + 328] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(8 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(8 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 356
                                                    t = (8 * ceil32(return_data.size)) + 616
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 616 len 64]
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(8 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 356
                                                    t = (8 * ceil32(return_data.size)) + 648
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 648 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
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
                                        if sub_6cd07154Address:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.management() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, '!authorized'
                        if address(sub_dd33ada1Address):
                            require ext_code.size(address(sub_dd33ada1Address))
                            staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((7 * ceil32(return_data.size)) + 160 <= test266151307())
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                            if ext_call.return_data[0]:
                                require ext_code.size(address(sub_dd33ada1Address))
                                if not sub_6e41e2ca:
                                    call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                else:
                                    call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 164] = this.address
                                mem[(7 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(sub_dd33ada1Address)
                                mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if sub_6cd07154Address:
                                        mem[(8 * ceil32(return_data.size)) + 164] = this.address
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(10 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(10 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(10 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                idx = 0
                                                s = (10 * ceil32(return_data.size)) + 192
                                                t = (10 * ceil32(return_data.size)) + 452
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 452 len 64]
                                            else:
                                                mem[(10 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(10 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(10 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                idx = 0
                                                s = (10 * ceil32(return_data.size)) + 192
                                                t = (10 * ceil32(return_data.size)) + 484
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 484 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    mem[(8 * ceil32(return_data.size)) + 228] = 0
                                    mem[(8 * ceil32(return_data.size)) + 160] = 68
                                    mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                    mem[(8 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                    mem[(8 * ceil32(return_data.size)) + 260] = 32
                                    mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(8 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                    mem[(8 * ceil32(return_data.size)) + 392] = 0
                                    call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                        if sub_6cd07154Address:
                                            mem[(8 * ceil32(return_data.size)) + 328] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(10 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(10 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + 356
                                                    t = (10 * ceil32(return_data.size)) + 616
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 616 len 64]
                                                else:
                                                    mem[(10 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(10 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + 356
                                                    t = (10 * ceil32(return_data.size)) + 648
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 648 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                                            if not mem[(8 * ceil32(return_data.size)) + 356]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if sub_6cd07154Address:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                else:
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.guardian() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if msg.sender == ext_call.return_data[12 len 20]:
                sub_6e41e2ca = 1
                if msg.sender == strategistAddress:
                    if address(sub_dd33ada1Address):
                        require ext_code.size(address(sub_dd33ada1Address))
                        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((4 * ceil32(return_data.size)) + 160 <= test266151307())
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(sub_dd33ada1Address))
                            if not sub_6e41e2ca:
                                call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                            else:
                                call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 164] = this.address
                            mem[(4 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                            require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                            staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(sub_dd33ada1Address)
                            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_6cd07154Address:
                                    require ext_code.size(sub_6cd07154Address)
                                    staticcall sub_6cd07154Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        mem[(7 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                            mem[(7 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(7 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 192
                                            t = (7 * ceil32(return_data.size)) + 452
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 452 len 64]
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[(7 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(7 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 192
                                            t = (7 * ceil32(return_data.size)) + 484
                                            while idx < 3:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 484 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[(6 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                mem[(6 * ceil32(return_data.size)) + 228] = 0
                                mem[(6 * ceil32(return_data.size)) + 160] = 68
                                mem[(6 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                mem[(6 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                mem[(6 * ceil32(return_data.size)) + 260] = 32
                                mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                mem[(6 * ceil32(return_data.size)) + 392] = 0
                                call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                   funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                    if sub_6cd07154Address:
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(7 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(7 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + 356
                                                t = (7 * ceil32(return_data.size)) + 616
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 616 len 64]
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(7 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + 356
                                                t = (7 * ceil32(return_data.size)) + 648
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 648 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                                        if not mem[(6 * ceil32(return_data.size)) + 356]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if sub_6cd07154Address:
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.governance() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if msg.sender == ext_call.return_data[12 len 20]:
                        if address(sub_dd33ada1Address):
                            require ext_code.size(address(sub_dd33ada1Address))
                            staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((6 * ceil32(return_data.size)) + 160 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                            if ext_call.return_data[0]:
                                require ext_code.size(address(sub_dd33ada1Address))
                                if not sub_6e41e2ca:
                                    call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                else:
                                    call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                                mem[(6 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(sub_dd33ada1Address)
                                mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if sub_6cd07154Address:
                                        mem[(7 * ceil32(return_data.size)) + 164] = this.address
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(8 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(8 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 192
                                                t = (8 * ceil32(return_data.size)) + 452
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 452 len 64]
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(8 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 192
                                                t = (8 * ceil32(return_data.size)) + 484
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 484 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    mem[(7 * ceil32(return_data.size)) + 228] = 0
                                    mem[(7 * ceil32(return_data.size)) + 160] = 68
                                    mem[(7 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                    mem[(7 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                    mem[(7 * ceil32(return_data.size)) + 260] = 32
                                    mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(7 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                    mem[(7 * ceil32(return_data.size)) + 392] = 0
                                    call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                        if sub_6cd07154Address:
                                            mem[(7 * ceil32(return_data.size)) + 328] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(8 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(8 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 356
                                                    t = (8 * ceil32(return_data.size)) + 616
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 616 len 64]
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(8 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 356
                                                    t = (8 * ceil32(return_data.size)) + 648
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 648 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
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
                                        if sub_6cd07154Address:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.guardian() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if msg.sender == ext_call.return_data[12 len 20]:
                            if address(sub_dd33ada1Address):
                                require ext_code.size(address(sub_dd33ada1Address))
                                staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(6 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((7 * ceil32(return_data.size)) + 160 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(sub_dd33ada1Address))
                                    if not sub_6e41e2ca:
                                        call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                    else:
                                        call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(7 * ceil32(return_data.size)) + 164] = this.address
                                    mem[(7 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(sub_dd33ada1Address)
                                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if sub_6cd07154Address:
                                            mem[(8 * ceil32(return_data.size)) + 164] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(10 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(10 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + 192
                                                    t = (10 * ceil32(return_data.size)) + 452
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 452 len 64]
                                                else:
                                                    mem[(10 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(10 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + 192
                                                    t = (10 * ceil32(return_data.size)) + 484
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 484 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                        mem[(8 * ceil32(return_data.size)) + 228] = 0
                                        mem[(8 * ceil32(return_data.size)) + 160] = 68
                                        mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                        mem[(8 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                        mem[(8 * ceil32(return_data.size)) + 260] = 32
                                        mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(8 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                        mem[(8 * ceil32(return_data.size)) + 392] = 0
                                        call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                           funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                            if sub_6cd07154Address:
                                                mem[(8 * ceil32(return_data.size)) + 328] = this.address
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(10 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(10 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(10 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (10 * ceil32(return_data.size)) + 356
                                                        t = (10 * ceil32(return_data.size)) + 616
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 616 len 64]
                                                    else:
                                                        mem[(10 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(10 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(10 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (10 * ceil32(return_data.size)) + 356
                                                        t = (10 * ceil32(return_data.size)) + 648
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 648 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                                                if not mem[(8 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            if sub_6cd07154Address:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                    else:
                                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.management() with:
                                    gas gas_remaining wei
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] != msg.sender:
                                revert with 0, '!authorized'
                            if address(sub_dd33ada1Address):
                                require ext_code.size(address(sub_dd33ada1Address))
                                staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((8 * ceil32(return_data.size)) + 160 <= test266151307())
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(sub_dd33ada1Address))
                                    if not sub_6e41e2ca:
                                        call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                    else:
                                        call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(8 * ceil32(return_data.size)) + 164] = this.address
                                    mem[(8 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(sub_dd33ada1Address)
                                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if sub_6cd07154Address:
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(11 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(11 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(11 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(11 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (11 * ceil32(return_data.size)) + 192
                                                    t = (11 * ceil32(return_data.size)) + 452
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(11 * ceil32(return_data.size)) + 452 len 64]
                                                else:
                                                    mem[(11 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(11 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(11 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (11 * ceil32(return_data.size)) + 192
                                                    t = (11 * ceil32(return_data.size)) + 484
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(11 * ceil32(return_data.size)) + 484 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(10 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                        mem[(10 * ceil32(return_data.size)) + 228] = 0
                                        mem[(10 * ceil32(return_data.size)) + 160] = 68
                                        mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                        mem[(10 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                        mem[(10 * ceil32(return_data.size)) + 260] = 32
                                        mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(10 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                        mem[(10 * ceil32(return_data.size)) + 392] = 0
                                        call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                           funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                            if sub_6cd07154Address:
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(11 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(11 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + 356
                                                        t = (11 * ceil32(return_data.size)) + 616
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(11 * ceil32(return_data.size)) + 616 len 64]
                                                    else:
                                                        mem[(11 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(11 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + 356
                                                        t = (11 * ceil32(return_data.size)) + 648
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(11 * ceil32(return_data.size)) + 648 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
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
                                            if sub_6cd07154Address:
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                    else:
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.management() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!authorized'
                sub_6e41e2ca = 1
                if msg.sender == strategistAddress:
                    if address(sub_dd33ada1Address):
                        require ext_code.size(address(sub_dd33ada1Address))
                        staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((6 * ceil32(return_data.size)) + 160 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(sub_dd33ada1Address))
                            if not sub_6e41e2ca:
                                call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                            else:
                                call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 164] = this.address
                            mem[(6 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                            require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                            staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(sub_dd33ada1Address)
                            mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_6cd07154Address:
                                    mem[(7 * ceil32(return_data.size)) + 164] = this.address
                                    require ext_code.size(sub_6cd07154Address)
                                    staticcall sub_6cd07154Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        mem[(8 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                            mem[(8 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(8 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 192
                                            t = (8 * ceil32(return_data.size)) + 452
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 452 len 64]
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[(8 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                            mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 192
                                            t = (8 * ceil32(return_data.size)) + 484
                                            while idx < 3:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 484 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                mem[(7 * ceil32(return_data.size)) + 228] = 0
                                mem[(7 * ceil32(return_data.size)) + 160] = 68
                                mem[(7 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                mem[(7 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                mem[(7 * ceil32(return_data.size)) + 260] = 32
                                mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(7 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                mem[(7 * ceil32(return_data.size)) + 392] = 0
                                call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                   funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                    if sub_6cd07154Address:
                                        mem[(7 * ceil32(return_data.size)) + 328] = this.address
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(8 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(8 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 356
                                                t = (8 * ceil32(return_data.size)) + 616
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 616 len 64]
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(8 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 356
                                                t = (8 * ceil32(return_data.size)) + 648
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 648 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
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
                                    if sub_6cd07154Address:
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.governance() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if msg.sender == ext_call.return_data[12 len 20]:
                        if address(sub_dd33ada1Address):
                            require ext_code.size(address(sub_dd33ada1Address))
                            staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((7 * ceil32(return_data.size)) + 160 <= test266151307())
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                            if ext_call.return_data[0]:
                                require ext_code.size(address(sub_dd33ada1Address))
                                if not sub_6e41e2ca:
                                    call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                else:
                                    call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                         gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 164] = this.address
                                mem[(7 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(sub_dd33ada1Address)
                                mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if sub_6cd07154Address:
                                        mem[(8 * ceil32(return_data.size)) + 164] = this.address
                                        require ext_code.size(sub_6cd07154Address)
                                        staticcall sub_6cd07154Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            mem[(10 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                mem[(10 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(10 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                idx = 0
                                                s = (10 * ceil32(return_data.size)) + 192
                                                t = (10 * ceil32(return_data.size)) + 452
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 452 len 64]
                                            else:
                                                mem[(10 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[(10 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                mem[(10 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                idx = 0
                                                s = (10 * ceil32(return_data.size)) + 192
                                                t = (10 * ceil32(return_data.size)) + 484
                                                while idx < 3:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 484 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    mem[(8 * ceil32(return_data.size)) + 228] = 0
                                    mem[(8 * ceil32(return_data.size)) + 160] = 68
                                    mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                    mem[(8 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                    mem[(8 * ceil32(return_data.size)) + 260] = 32
                                    mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(8 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                    mem[(8 * ceil32(return_data.size)) + 392] = 0
                                    call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                        if sub_6cd07154Address:
                                            mem[(8 * ceil32(return_data.size)) + 328] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(10 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(10 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + 356
                                                    t = (10 * ceil32(return_data.size)) + 616
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 616 len 64]
                                                else:
                                                    mem[(10 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(10 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + 356
                                                    t = (10 * ceil32(return_data.size)) + 648
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 648 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                                            if not mem[(8 * ceil32(return_data.size)) + 356]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if sub_6cd07154Address:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                else:
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                    t = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.guardian() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if msg.sender == ext_call.return_data[12 len 20]:
                            if address(sub_dd33ada1Address):
                                require ext_code.size(address(sub_dd33ada1Address))
                                staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((8 * ceil32(return_data.size)) + 160 <= test266151307())
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(sub_dd33ada1Address))
                                    if not sub_6e41e2ca:
                                        call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                    else:
                                        call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(8 * ceil32(return_data.size)) + 164] = this.address
                                    mem[(8 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(sub_dd33ada1Address)
                                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if sub_6cd07154Address:
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(11 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(11 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(11 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(11 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (11 * ceil32(return_data.size)) + 192
                                                    t = (11 * ceil32(return_data.size)) + 452
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(11 * ceil32(return_data.size)) + 452 len 64]
                                                else:
                                                    mem[(11 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(11 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(11 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (11 * ceil32(return_data.size)) + 192
                                                    t = (11 * ceil32(return_data.size)) + 484
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(11 * ceil32(return_data.size)) + 484 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(10 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                        mem[(10 * ceil32(return_data.size)) + 228] = 0
                                        mem[(10 * ceil32(return_data.size)) + 160] = 68
                                        mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                        mem[(10 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                        mem[(10 * ceil32(return_data.size)) + 260] = 32
                                        mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(10 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                        mem[(10 * ceil32(return_data.size)) + 392] = 0
                                        call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                           funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                            if sub_6cd07154Address:
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(11 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(11 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + 356
                                                        t = (11 * ceil32(return_data.size)) + 616
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(11 * ceil32(return_data.size)) + 616 len 64]
                                                    else:
                                                        mem[(11 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(11 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + 356
                                                        t = (11 * ceil32(return_data.size)) + 648
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(11 * ceil32(return_data.size)) + 648 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
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
                                            if sub_6cd07154Address:
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                    else:
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(vaultAddress)
                            staticcall vaultAddress.management() with:
                                    gas gas_remaining wei
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] != msg.sender:
                                revert with 0, '!authorized'
                            if address(sub_dd33ada1Address):
                                require ext_code.size(address(sub_dd33ada1Address))
                                staticcall address(sub_dd33ada1Address).userInfo(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(8 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 160 <= test266151307())
                                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(sub_dd33ada1Address))
                                    if not sub_6e41e2ca:
                                        call address(sub_dd33ada1Address).0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                    else:
                                        call address(sub_dd33ada1Address).emergencyWithdraw() with:
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 164] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
                                    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), address(sub_dd33ada1Address)
                                    mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if sub_6cd07154Address:
                                            require ext_code.size(sub_6cd07154Address)
                                            staticcall sub_6cd07154Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[(12 * ceil32(return_data.size)) + 192] = sub_6cd07154Address
                                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                    mem[(12 * ceil32(return_data.size)) + 224] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(12 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(12 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (12 * ceil32(return_data.size)) + 192
                                                    t = (12 * ceil32(return_data.size)) + 452
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 452 len 64]
                                                else:
                                                    mem[(12 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[(12 * ceil32(return_data.size)) + 256] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                    mem[(12 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                    mem[(12 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = (12 * ceil32(return_data.size)) + 192
                                                    t = (12 * ceil32(return_data.size)) + 484
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(12 * ceil32(return_data.size)) + 484 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(11 * ceil32(return_data.size)) + 196] = address(sub_dd33ada1Address)
                                        mem[(11 * ceil32(return_data.size)) + 228] = 0
                                        mem[(11 * ceil32(return_data.size)) + 160] = 68
                                        mem[(11 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor14)
                                        mem[(11 * ceil32(return_data.size)) + 192 len 4] = approve(address rg1, uint256 rg2)
                                        mem[(11 * ceil32(return_data.size)) + 260] = 32
                                        mem[(11 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(11 * ceil32(return_data.size)) + 324 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0
                                        mem[(11 * ceil32(return_data.size)) + 392] = 0
                                        call 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5 with:
                                           funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0, 0) << 288)
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
                                            if sub_6cd07154Address:
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(12 * ceil32(return_data.size)) + 356] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(12 * ceil32(return_data.size)) + 388] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(12 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(12 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (12 * ceil32(return_data.size)) + 356
                                                        t = (12 * ceil32(return_data.size)) + 616
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 616 len 64]
                                                    else:
                                                        mem[(12 * ceil32(return_data.size)) + 388] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(12 * ceil32(return_data.size)) + 420] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(12 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(12 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (12 * ceil32(return_data.size)) + 356
                                                        t = (12 * ceil32(return_data.size)) + 648
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(12 * ceil32(return_data.size)) + 648 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[(11 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(11 * ceil32(return_data.size)) + 356] == bool(mem[(11 * ceil32(return_data.size)) + 356])
                                                if not mem[(11 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            if sub_6cd07154Address:
                                                require ext_code.size(sub_6cd07154Address)
                                                staticcall sub_6cd07154Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = sub_6cd07154Address
                                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address:
                                                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == sub_6cd07154Address
                                                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 64]
                                                    else:
                                                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x575f8738efda7f512e3654f277c77e80c7d2725
                                                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                                                        idx = 0
                                                        s = (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                                        t = (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                                                        while idx < 3:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                                                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
    address(sub_dd33ada1Address) = 0
    sub_6e41e2ca = 0
}



}
