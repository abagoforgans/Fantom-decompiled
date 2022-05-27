contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const name = 'StrategyCurveIBVoterProxy', 0

const apiVersion = '', 0

const voter = 0xf147b8125d2ef93fb6965db97d6746952a133934

const sub_7e1f1219(?) = ext_call.return_data[0]

const sub_87c1a4bf(?) = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f

const delegatedAssets = 0

const FEE_DENOMINATOR = 10000


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
address crvRouterAddress;
array of address crvPath;
array of struct sub_1b00a657;
array of struct sub_d09197e7;
array of struct sub_a3331f1b;
uint256 keepCRV;
address sub_2be8585aAddress;
uint32 stor19;
address sub_b008c38dAddress;
uint256 stor19;
address crvAddress;
address daiAddress;
address usdcAddress;
address usdtAddress;
uint128 stor24; offset 160
address wethAddress;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function sub_1b00a657(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1b00a657.length
    return sub_1b00a657[arg1].field_0
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

function sub_2be8585a(?) payable {
    return sub_2be8585aAddress
}

function usdt() payable {
    return usdtAddress
}

function usdc() payable {
    return usdcAddress
}

function weth() payable {
    return wethAddress
}

function emergencyExit() payable {
    return bool(stor10)
}

function crv() payable {
    return crvAddress
}

function crvRouter() payable {
    return crvRouterAddress
}

function keepCRV() payable {
    return keepCRV
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

function sub_a3331f1b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a3331f1b.length
    return sub_a3331f1b[arg1].field_0
}

function keeper() payable {
    return keeperAddress
}

function crvPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < crvPath.length
    return crvPath[arg1]
}

function sub_b008c38d(?) payable {
    return address(sub_b008c38dAddress)
}

function sub_d09197e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d09197e7.length
    return sub_d09197e7[arg1].field_0
}

function dai() payable {
    return daiAddress
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

function balanceOfStaked() payable {
    require ext_code.size(address(sub_b008c38dAddress))
    staticcall address(sub_b008c38dAddress).0x70a08231 with:
            gas gas_remaining wei
           args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function estimatedTotalAssets() payable {
    require ext_code.size(address(sub_b008c38dAddress))
    staticcall address(sub_b008c38dAddress).0x70a08231 with:
            gas gas_remaining wei
           args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2e8161b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
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
    stor24 = Mask(96, 0, bool(arg1))
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
    stor10 = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
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
    require ext_code.size(address(sub_b008c38dAddress))
    staticcall address(sub_b008c38dAddress).0x70a08231 with:
            gas gas_remaining wei
           args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
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

function sub_1385bcaa(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
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
    crvRouterAddress = address(cd[4])
    crvPath.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while crvPath.length > idx:
            crvPath[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            crvPath[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while crvPath.length > idx:
            crvPath[idx] = 0
            idx = idx + 1
            continue 
    require ext_code.size(crvAddress)
    call crvAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args crvRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    require ext_code.size(address(sub_b008c38dAddress))
    staticcall address(sub_b008c38dAddress).0x70a08231 with:
            gas gas_remaining wei
           args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
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
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
    mem[ceil32(return_data.size) + 160] = crvAddress
    idx = 0
    while idx < 2:
        require idx < 2
        if arg1 == mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 228 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 292] = 32
    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 356 len floor32((5 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 424] = 0
    call arg1.mem[(4 * ceil32(return_data.size)) + 356 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 360 len (13 * ceil32(return_data.size)) + 64]
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
        mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
            if not mem[(4 * ceil32(return_data.size)) + 388]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function setProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == strategistAddress:
        address(sub_b008c38dAddress) = arg1
        mem[100] = this.address
        mem[132] = arg1
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(return_data.size) + 132] = arg1
        mem[ceil32(return_data.size) + 164] = -1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wantAddress with:
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
                require 0, address(arg1) << 64 == bool(0, address(arg1) << 64)
                if not 0, address(arg1) << 64:
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
        address(sub_b008c38dAddress) = arg1
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = arg1
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
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
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
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
}

function sub_bfed9c3e(?) payable {
    require calldata.size - 4 >= 32
    mem[96 len 96] = call.data[calldata.size len 96]
    if arg1 <= 0:
        return 0
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = sub_1b00a657.length
    mem[0] = 14
    idx = 0
    s = 0
    t = 292
    while idx < sub_1b00a657.length:
        mem[t] = sub_1b00a657[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=sub_1b00a657.length, data=mem[292 len 32 * sub_1b00a657.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _42 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _43 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _42 + (32 * _43) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _43] = mem[_42 + 224 len 32 * _43]
    require 1 < _43
    _73 = mem[ceil32(return_data.size) + 256]
    _74 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = sub_d09197e7.length
    mem[0] = 15
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < sub_d09197e7.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _74 + (32 * sub_d09197e7.length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _99 = mem[_98]
    require mem[_98] <= test266151307()
    require _98 + return_data.size > _98 + mem[_98] + 31
    _100 = mem[_98 + mem[_98]]
    require mem[_98 + mem[_98]] <= test266151307()
    require (32 * mem[_98 + mem[_98]]) + 32 >= 0 and _98 + ceil32(return_data.size) + (32 * mem[_98 + mem[_98]]) + 32 <= test266151307()
    mem[64] = _98 + ceil32(return_data.size) + (32 * mem[_98 + mem[_98]]) + 32
    mem[_98 + ceil32(return_data.size)] = _100
    require return_data.size >= _99 + (32 * _100) + 32
    mem[_98 + ceil32(return_data.size) + 32 len 32 * _100] = mem[_98 + _99 + 32 len 32 * _100]
    require 1 < _100
    _120 = mem[_98 + ceil32(return_data.size) + 64]
    _121 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = sub_a3331f1b.length
    mem[0] = 16
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < sub_a3331f1b.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _121 + (32 * sub_a3331f1b.length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _135 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _136 = mem[_135]
    require mem[_135] <= test266151307()
    require _135 + return_data.size > _135 + mem[_135] + 31
    _137 = mem[_135 + mem[_135]]
    require mem[_135 + mem[_135]] <= test266151307()
    require (32 * mem[_135 + mem[_135]]) + 32 >= 0 and _135 + ceil32(return_data.size) + (32 * mem[_135 + mem[_135]]) + 32 <= test266151307()
    mem[64] = _135 + ceil32(return_data.size) + (32 * mem[_135 + mem[_135]]) + 32
    mem[_135 + ceil32(return_data.size)] = _137
    require return_data.size >= _136 + (32 * _137) + 32
    mem[_135 + ceil32(return_data.size) + 32 len 32 * _137] = mem[_135 + _136 + 32 len 32 * _137]
    require 1 < _137
    _147 = mem[_135 + ceil32(return_data.size) + 64]
    _148 = mem[64]
    mem[64] = mem[64] + 96
    mem[_148] = _73
    mem[_148 + 32] = 0
    mem[_148 + 64] = 0
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args _73, 0, 0 >> 512, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _155 = mem[64]
    mem[64] = mem[64] + 96
    mem[_155] = 0
    mem[_155 + 32] = _120
    mem[_155 + 64] = 0
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, _120, 0 >> 512, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _162 = mem[64]
    mem[64] = mem[64] + 96
    mem[_162] = 0
    mem[_162 + 32] = 0
    mem[_162 + 64] = _147
    mem[mem[64] + 4 len 96] = 0, 0, _147
    mem[mem[64] + 100] = 1
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, 0, _147 >> 512, 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _167 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return (mem[_167] >> 512)
}

function sub_b8f5bbec(?) payable {
    require calldata.size - 4 >= 32
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[192 len 96] = call.data[calldata.size len 96]
    if arg1 <= 0:
        return 0
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg1
    mem[324] = 64
    mem[356] = sub_1b00a657.length
    mem[0] = 14
    idx = 0
    s = 0
    t = 388
    while idx < sub_1b00a657.length:
        mem[t] = sub_1b00a657[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=sub_1b00a657.length, data=mem[388 len 32 * sub_1b00a657.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _72 = mem[288 len 4], Mask(224, 32, arg1) >> 32
    require mem[288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 288 > mem[288 len 4], Mask(224, 32, arg1) >> 32 + 319
    _73 = mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    require mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288] <= test266151307()
    require (32 * mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 320 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    require return_data.size >= _72 + (32 * _73) + 32
    mem[ceil32(return_data.size) + 320 len 32 * _73] = mem[_72 + 320 len 32 * _73]
    require 1 < _73
    _103 = mem[ceil32(return_data.size) + 352]
    _104 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = sub_d09197e7.length
    mem[0] = 15
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < sub_d09197e7.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _104 + (32 * sub_d09197e7.length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] <= test266151307()
    require _128 + return_data.size > _128 + mem[_128] + 31
    _130 = mem[_128 + mem[_128]]
    require mem[_128 + mem[_128]] <= test266151307()
    require (32 * mem[_128 + mem[_128]]) + 32 >= 0 and _128 + ceil32(return_data.size) + (32 * mem[_128 + mem[_128]]) + 32 <= test266151307()
    mem[64] = _128 + ceil32(return_data.size) + (32 * mem[_128 + mem[_128]]) + 32
    mem[_128 + ceil32(return_data.size)] = _130
    require return_data.size >= _129 + (32 * _130) + 32
    mem[_128 + ceil32(return_data.size) + 32 len 32 * _130] = mem[_128 + _129 + 32 len 32 * _130]
    require 1 < _130
    _150 = mem[_128 + ceil32(return_data.size) + 64]
    _151 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = sub_a3331f1b.length
    mem[0] = 16
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < sub_a3331f1b.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _151 + (32 * sub_a3331f1b.length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _165 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _166 = mem[_165]
    require mem[_165] <= test266151307()
    require _165 + return_data.size > _165 + mem[_165] + 31
    _167 = mem[_165 + mem[_165]]
    require mem[_165 + mem[_165]] <= test266151307()
    require (32 * mem[_165 + mem[_165]]) + 32 >= 0 and _165 + ceil32(return_data.size) + (32 * mem[_165 + mem[_165]]) + 32 <= test266151307()
    mem[64] = _165 + ceil32(return_data.size) + (32 * mem[_165 + mem[_165]]) + 32
    mem[_165 + ceil32(return_data.size)] = _167
    require return_data.size >= _166 + (32 * _167) + 32
    mem[_165 + ceil32(return_data.size) + 32 len 32 * _167] = mem[_165 + _166 + 32 len 32 * _167]
    require 1 < _167
    _177 = mem[_165 + ceil32(return_data.size) + 64]
    _178 = mem[64]
    mem[64] = mem[64] + 96
    mem[_178] = _103
    mem[_178 + 32] = 0
    mem[_178 + 64] = 0
    mem[mem[64] + 4 len 96] = _103, 0, 0
    mem[mem[64] + 100] = 1
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args _103, 0, 0 >> 512, 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _183 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _184 = mem[_183]
    _185 = mem[64]
    mem[64] = mem[64] + 96
    mem[_185] = 0
    mem[_185 + 32] = _150
    mem[_185 + 64] = 0
    mem[mem[64] + 4 len 96] = 0, _150, 0
    mem[mem[64] + 100] = 1
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, _150, 0 >> 512, 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _190 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _191 = mem[_190]
    _192 = mem[64]
    mem[64] = mem[64] + 96
    mem[_192] = 0
    mem[_192 + 32] = 0
    mem[_192 + 64] = _177
    mem[mem[64] + 4 len 96] = 0, 0, _177
    mem[mem[64] + 100] = 1
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, 0, _177 >> 512, 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _197 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _191 <= _184:
        if _184 >= mem[_197]:
            return _184
    if _191 < _184:
        return memory
          from _197
           len 32
    if _191 < mem[_197]:
        return memory
          from _197
           len 32
    return _191
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
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        if arg1 < ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 164] = arg1
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
        else:
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
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
        mem[ceil32(return_data.size) + 100] = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
        require ext_code.size(address(sub_b008c38dAddress))
        staticcall address(sub_b008c38dAddress).0x70a08231 with:
                gas gas_remaining wei
               args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
        mem[(2 * ceil32(return_data.size)) + 132] = wantAddress
        if ext_call.return_data[0] < arg1 - ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(address(sub_b008c38dAddress))
            call address(sub_b008c38dAddress).withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f, wantAddress, ext_call.return_data[0]
        else:
            mem[(2 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
            require ext_code.size(address(sub_b008c38dAddress))
            call address(sub_b008c38dAddress).withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f, wantAddress, arg1 - ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
        if arg1 < ext_call.return_data[0]:
            mem[(6 * ceil32(return_data.size)) + 164] = arg1
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
        else:
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
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
            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                if not mem[(6 * ceil32(return_data.size)) + 292]:
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
        mem[ceil32(return_data.size) + 100] = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
        require ext_code.size(address(sub_b008c38dAddress))
        staticcall address(sub_b008c38dAddress).0x70a08231 with:
                gas gas_remaining wei
               args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
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
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
            mem[(2 * ceil32(return_data.size)) + 132] = wantAddress
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(address(sub_b008c38dAddress))
            call address(sub_b008c38dAddress).withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f, wantAddress, ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = arg1
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
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
        mem[(2 * ceil32(return_data.size)) + 100] = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
        require ext_code.size(address(sub_b008c38dAddress))
        staticcall address(sub_b008c38dAddress).0x70a08231 with:
                gas gas_remaining wei
               args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = arg1
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = 0xf5194c3325202f456c95c1cf0ca36f8475c1949f
            mem[(4 * ceil32(return_data.size)) + 132] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            require ext_code.size(address(sub_b008c38dAddress))
            call address(sub_b008c38dAddress).withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f, wantAddress, ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
}

function tend() payable {
    require ext_code.size(vaultAddress)
    if msg.sender == keeperAddress:
        staticcall vaultAddress.debtOutstanding() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 132] = address(sub_b008c38dAddress)
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor19)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) << 288)
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
        if msg.sender == strategistAddress:
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 132] = address(sub_b008c38dAddress)
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor19)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) << 288)
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
            staticcall vaultAddress.governance() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(vaultAddress)
            if msg.sender == ext_call.return_data[12 len 20]:
                staticcall vaultAddress.debtOutstanding() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 132] = address(sub_b008c38dAddress)
                mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor19)
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) << 288)
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
            else:
                staticcall vaultAddress.guardian() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(vaultAddress)
                if msg.sender == ext_call.return_data[12 len 20]:
                    staticcall vaultAddress.debtOutstanding() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 132] = address(sub_b008c38dAddress)
                    mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor19)
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) << 288)
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
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    staticcall vaultAddress.management() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if ext_code.hash(msg.sender) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(msg.sender):
                                revert with 0, '!authorized'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.debtOutstanding() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 132] = address(sub_b008c38dAddress)
                    mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 96] = 68
                    mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor19)
                    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 196] = 32
                    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), ext_call.return_data[0], 0) << 288)
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
    require ext_code.size(address(sub_b008c38dAddress))
    call address(sub_b008c38dAddress).deposit(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0xf5194c3325202f456c95c1cf0ca36f8475c1949f, wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b19b1afb(?) payable {
    require calldata.size - 4 >= 32
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[192 len 96] = call.data[calldata.size len 96]
    if arg1 <= 0:
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[64] = (32 * sub_1b00a657.length) + 416
        mem[384] = sub_1b00a657.length
        if not sub_1b00a657.length:
            mem[(32 * sub_1b00a657.length) + 416] = 32
            mem[(32 * sub_1b00a657.length) + 448] = sub_1b00a657.length
            idx = 0
            s = (32 * sub_1b00a657.length) + 480
            t = 416
            while idx < sub_1b00a657.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * sub_1b00a657.length) + 416
               len (96 * sub_1b00a657.length) + 64
        mem[416] = address(sub_1b00a657.field_0)
        idx = 416
        s = 0
        while (32 * sub_1b00a657.length) + 384 > idx:
            mem[idx + 32] = sub_1b00a657[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_1b00a657.length) + 416] = 32
        mem[(32 * sub_1b00a657.length) + 448] = sub_1b00a657.length
        idx = 0
        s = mem[64] + 64
        t = 416
        while idx < sub_1b00a657.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * sub_1b00a657.length) + -mem[64] + 480
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg1
    mem[324] = 64
    mem[356] = sub_1b00a657.length
    mem[0] = 14
    idx = 0
    s = 0
    t = 388
    while idx < sub_1b00a657.length:
        mem[t] = sub_1b00a657[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=sub_1b00a657.length, data=mem[388 len 32 * sub_1b00a657.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _143 = mem[288 len 4], Mask(224, 32, arg1) >> 32
    require mem[288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 288 > mem[288 len 4], Mask(224, 32, arg1) >> 32 + 319
    _144 = mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    require mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288] <= test266151307()
    require (32 * mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 320 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    require return_data.size >= _143 + (32 * _144) + 32
    mem[ceil32(return_data.size) + 320 len 32 * _144] = mem[_143 + 320 len 32 * _144]
    require 1 < _144
    _181 = mem[ceil32(return_data.size) + 352]
    _182 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = sub_d09197e7.length
    mem[0] = 15
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < sub_d09197e7.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _182 + (32 * sub_d09197e7.length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _241 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _242 = mem[_241]
    require mem[_241] <= test266151307()
    require _241 + return_data.size > _241 + mem[_241] + 31
    _243 = mem[_241 + mem[_241]]
    require mem[_241 + mem[_241]] <= test266151307()
    require (32 * mem[_241 + mem[_241]]) + 32 >= 0 and _241 + ceil32(return_data.size) + (32 * mem[_241 + mem[_241]]) + 32 <= test266151307()
    mem[64] = _241 + ceil32(return_data.size) + (32 * mem[_241 + mem[_241]]) + 32
    mem[_241 + ceil32(return_data.size)] = _243
    require return_data.size >= _242 + (32 * _243) + 32
    mem[_241 + ceil32(return_data.size) + 32 len 32 * _243] = mem[_241 + _242 + 32 len 32 * _243]
    require 1 < _243
    _263 = mem[_241 + ceil32(return_data.size) + 64]
    _264 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = sub_a3331f1b.length
    mem[0] = 16
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < sub_a3331f1b.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(crvRouterAddress)
    staticcall crvRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _264 + (32 * sub_a3331f1b.length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _278 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _279 = mem[_278]
    require mem[_278] <= test266151307()
    require _278 + return_data.size > _278 + mem[_278] + 31
    _280 = mem[_278 + mem[_278]]
    require mem[_278 + mem[_278]] <= test266151307()
    require (32 * mem[_278 + mem[_278]]) + 32 >= 0 and _278 + ceil32(return_data.size) + (32 * mem[_278 + mem[_278]]) + 32 <= test266151307()
    mem[64] = _278 + ceil32(return_data.size) + (32 * mem[_278 + mem[_278]]) + 32
    mem[_278 + ceil32(return_data.size)] = _280
    require return_data.size >= _279 + (32 * _280) + 32
    mem[_278 + ceil32(return_data.size) + 32 len 32 * _280] = mem[_278 + _279 + 32 len 32 * _280]
    require 1 < _280
    _290 = mem[_278 + ceil32(return_data.size) + 64]
    _291 = mem[64]
    mem[64] = mem[64] + 96
    mem[_291] = _181
    mem[_291 + 32] = 0
    mem[_291 + 64] = 0
    mem[mem[64] + 4 len 96] = _181, 0, 0
    mem[mem[64] + 100] = 1
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args _181, 0, 0 >> 512, 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _296 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _297 = mem[_296]
    _298 = mem[64]
    mem[64] = mem[64] + 96
    mem[_298] = 0
    mem[_298 + 32] = _263
    mem[_298 + 64] = 0
    mem[mem[64] + 4 len 96] = 0, _263, 0
    mem[mem[64] + 100] = 1
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, _263, 0 >> 512, 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _303 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _304 = mem[_303]
    _305 = mem[64]
    mem[64] = mem[64] + 96
    mem[_305] = 0
    mem[_305 + 32] = 0
    mem[_305 + 64] = _290
    mem[mem[64] + 4 len 96] = 0, 0, _290
    mem[mem[64] + 100] = 1
    require ext_code.size(sub_2be8585aAddress)
    staticcall sub_2be8585aAddress.calc_token_amount(uint256[3] arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, 0, _290 >> 512, 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _310 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _311 = mem[_310]
    _312 = mem[64]
    mem[64] = mem[64] + 96
    mem[_312 len 96] = call.data[calldata.size len 96]
    _313 = mem[64]
    mem[64] = mem[64] + 96
    mem[_313] = _297
    mem[_313 + 32] = _304
    mem[_313 + 64] = _311
    if _304 > _297:
        if _304 < _297:
            _325 = mem[64]
            mem[64] = mem[64] + (32 * sub_a3331f1b.length) + 32
            mem[_325] = sub_a3331f1b.length
            if not sub_a3331f1b.length:
                _339 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = sub_a3331f1b.length
                idx = 0
                s = mem[64] + 64
                t = _325 + 32
                while idx < sub_a3331f1b.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _339 + (32 * sub_a3331f1b.length) + -mem[64] + 64
            mem[0] = 16
            mem[_325 + 32] = address(sub_a3331f1b.field_0)
            if (32 * sub_a3331f1b.length) + 32 <= 64:
                _344 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = sub_a3331f1b.length
                idx = 0
                s = mem[64] + 64
                t = _325 + 32
                while idx < sub_a3331f1b.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _344 + (32 * sub_a3331f1b.length) + -mem[64] + 64
            mem[_325 + 64] = address(sub_a3331f1b.field_256)
            idx = _325 + 64
            s = 1
            while _325 + (32 * sub_a3331f1b.length) > idx:
                mem[idx + 32] = sub_a3331f1b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _418 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_a3331f1b.length
            idx = 0
            s = mem[64] + 64
            t = _325 + 32
            while idx < sub_a3331f1b.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _418 + (32 * sub_a3331f1b.length) + -mem[64] + 64
        if _304 < _311:
            _330 = mem[64]
            mem[64] = mem[64] + (32 * sub_a3331f1b.length) + 32
            mem[_330] = sub_a3331f1b.length
            if not sub_a3331f1b.length:
                _345 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = sub_a3331f1b.length
                idx = 0
                s = mem[64] + 64
                t = _330 + 32
                while idx < sub_a3331f1b.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _345 + (32 * sub_a3331f1b.length) + -mem[64] + 64
            mem[0] = 16
            mem[_330 + 32] = address(sub_a3331f1b.field_0)
            if (32 * sub_a3331f1b.length) + 32 <= 64:
                _350 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = sub_a3331f1b.length
                idx = 0
                s = mem[64] + 64
                t = _330 + 32
                while idx < sub_a3331f1b.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _350 + (32 * sub_a3331f1b.length) + -mem[64] + 64
            mem[_330 + 64] = address(sub_a3331f1b.field_256)
            idx = _330 + 64
            s = 1
            while _330 + (32 * sub_a3331f1b.length) > idx:
                mem[idx + 32] = sub_a3331f1b[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _419 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_a3331f1b.length
            idx = 0
            s = mem[64] + 64
            t = _330 + 32
            while idx < sub_a3331f1b.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _419 + (32 * sub_a3331f1b.length) + -mem[64] + 64
        _331 = mem[64]
        mem[64] = mem[64] + (32 * sub_d09197e7.length) + 32
        mem[_331] = sub_d09197e7.length
        if not sub_d09197e7.length:
            _346 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_d09197e7.length
            idx = 0
            s = mem[64] + 64
            t = _331 + 32
            while idx < sub_d09197e7.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _346 + (32 * sub_d09197e7.length) + -mem[64] + 64
        mem[0] = 15
        mem[_331 + 32] = address(sub_d09197e7.field_0)
        if (32 * sub_d09197e7.length) + 32 <= 64:
            _352 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_d09197e7.length
            idx = 0
            s = mem[64] + 64
            t = _331 + 32
            while idx < sub_d09197e7.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _352 + (32 * sub_d09197e7.length) + -mem[64] + 64
        mem[_331 + 64] = address(sub_d09197e7.field_256)
        idx = _331 + 64
        s = 1
        while _331 + (32 * sub_d09197e7.length) > idx:
            mem[idx + 32] = sub_d09197e7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _420 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_d09197e7.length
        idx = 0
        s = mem[64] + 64
        t = _331 + 32
        while idx < sub_d09197e7.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _420 + (32 * sub_d09197e7.length) + -mem[64] + 64
    if _297 >= _311:
        _324 = mem[64]
        mem[64] = mem[64] + (32 * sub_1b00a657.length) + 32
        mem[_324] = sub_1b00a657.length
        if not sub_1b00a657.length:
            _338 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_1b00a657.length
            idx = 0
            s = mem[64] + 64
            t = _324 + 32
            while idx < sub_1b00a657.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _338 + (32 * sub_1b00a657.length) + -mem[64] + 64
        mem[0] = 14
        mem[_324 + 32] = address(sub_1b00a657.field_0)
        idx = _324 + 32
        s = 0
        while _324 + (32 * sub_1b00a657.length) > idx:
            mem[idx + 32] = sub_1b00a657[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _424 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_1b00a657.length
        idx = 0
        s = mem[64] + 64
        t = _324 + 32
        while idx < sub_1b00a657.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _424 + (32 * sub_1b00a657.length) + -mem[64] + 64
    if _304 < _297:
        _332 = mem[64]
        mem[64] = mem[64] + (32 * sub_a3331f1b.length) + 32
        mem[_332] = sub_a3331f1b.length
        if not sub_a3331f1b.length:
            _347 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_a3331f1b.length
            idx = 0
            s = mem[64] + 64
            t = _332 + 32
            while idx < sub_a3331f1b.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _347 + (32 * sub_a3331f1b.length) + -mem[64] + 64
        mem[0] = 16
        mem[_332 + 32] = address(sub_a3331f1b.field_0)
        if (32 * sub_a3331f1b.length) + 32 <= 64:
            _354 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_a3331f1b.length
            idx = 0
            s = mem[64] + 64
            t = _332 + 32
            while idx < sub_a3331f1b.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _354 + (32 * sub_a3331f1b.length) + -mem[64] + 64
        mem[_332 + 64] = address(sub_a3331f1b.field_256)
        idx = _332 + 64
        s = 1
        while _332 + (32 * sub_a3331f1b.length) > idx:
            mem[idx + 32] = sub_a3331f1b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _421 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_a3331f1b.length
        idx = 0
        s = mem[64] + 64
        t = _332 + 32
        while idx < sub_a3331f1b.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _421 + (32 * sub_a3331f1b.length) + -mem[64] + 64
    if _304 < _311:
        _336 = mem[64]
        mem[64] = mem[64] + (32 * sub_a3331f1b.length) + 32
        mem[_336] = sub_a3331f1b.length
        if not sub_a3331f1b.length:
            _355 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_a3331f1b.length
            idx = 0
            s = mem[64] + 64
            t = _336 + 32
            while idx < sub_a3331f1b.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _355 + (32 * sub_a3331f1b.length) + -mem[64] + 64
        mem[0] = 16
        mem[_336 + 32] = address(sub_a3331f1b.field_0)
        if (32 * sub_a3331f1b.length) + 32 <= 64:
            _363 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_a3331f1b.length
            idx = 0
            s = mem[64] + 64
            t = _336 + 32
            while idx < sub_a3331f1b.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _363 + (32 * sub_a3331f1b.length) + -mem[64] + 64
        mem[_336 + 64] = address(sub_a3331f1b.field_256)
        idx = _336 + 64
        s = 1
        while _336 + (32 * sub_a3331f1b.length) > idx:
            mem[idx + 32] = sub_a3331f1b[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _422 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_a3331f1b.length
        idx = 0
        s = mem[64] + 64
        t = _336 + 32
        while idx < sub_a3331f1b.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _422 + (32 * sub_a3331f1b.length) + -mem[64] + 64
    _337 = mem[64]
    mem[64] = mem[64] + (32 * sub_d09197e7.length) + 32
    mem[_337] = sub_d09197e7.length
    if not sub_d09197e7.length:
        _356 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_d09197e7.length
        idx = 0
        s = mem[64] + 64
        t = _337 + 32
        while idx < sub_d09197e7.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _356 + (32 * sub_d09197e7.length) + -mem[64] + 64
    mem[0] = 15
    mem[_337 + 32] = address(sub_d09197e7.field_0)
    if (32 * sub_d09197e7.length) + 32 <= 64:
        _365 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_d09197e7.length
        idx = 0
        s = mem[64] + 64
        t = _337 + 32
        while idx < sub_d09197e7.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _365 + (32 * sub_d09197e7.length) + -mem[64] + 64
    mem[_337 + 64] = address(sub_d09197e7.field_256)
    idx = _337 + 64
    s = 1
    while _337 + (32 * sub_d09197e7.length) > idx:
        mem[idx + 32] = sub_d09197e7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _423 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = sub_d09197e7.length
    idx = 0
    s = mem[64] + 64
    t = _337 + 32
    while idx < sub_d09197e7.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _423 + (32 * sub_d09197e7.length) + -mem[64] + 64
}



}
