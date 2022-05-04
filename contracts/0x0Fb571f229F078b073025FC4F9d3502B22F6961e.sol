contract main {




// =====================  Runtime code  =====================


#
#  - approveAll()
#  - harvest()
#
const apiVersion = '', 0

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const voter = 0x72a34abafab09b15e7191822a679f28e067c4a16

const sub_4e1ea47c(?) = 0x49d68029688eabf473097a2fc38ef61633a3c7a

const crv = 0x1e4f97b9f9f913c46f1632781732927b9019c68b

const delegatedAssets = 0

const sushiswap = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506

const dai = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const sub_f6c6e5e8(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const DENOMINATOR = 10000


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
array of address dex;
address curveAddress;
address gaugeAddress;
uint256 keepCRV;
array of address pathTarget;

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

function dex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < dex.length
    return dex[arg1]
}

function maxReportDelay() payable {
    return maxReportDelay
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function pathTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pathTarget.length
    return pathTarget[arg1]
}

function curve() payable {
    return curveAddress
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

function gauge() payable {
    return gaugeAddress
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

function balanceOfPool() payable {
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setKeepCRV(uint256 arg1) payable {
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
    keepCRV = arg1
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

function estimatedTotalAssets() payable {
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
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
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function setPathTarget(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
    require arg1 < pathTarget.length
    if not arg2:
        pathTarget[arg1] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    else:
        if arg2 != 1:
            pathTarget[arg1] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        else:
            pathTarget[arg1] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
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
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
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
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0] > 0)
}

function switchDex(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
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
    if arg2 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
        if arg2 != 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506:
            revert with 0, '!dex'
    require arg1 < dex.length
    dex[arg1] = arg2
    require 0 < dex.length
    require ext_code.size(0x1e4f97b9f9f913c46f1632781732927b9019c68b)
    call 0x1e4f97b9f9f913c46f1632781732927b9019c68b.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args dex, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require 0 < dex.length
    require ext_code.size(0x1e4f97b9f9f913c46f1632781732927b9019c68b)
    call 0x1e4f97b9f9f913c46f1632781732927b9019c68b.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args dex, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(gaugeAddress)
        call gaugeAddress.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        _39 = mem[64]
        mem[mem[64] + 32] = 0x4375727665000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 37 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        mem[_5 + mem[64] + 37] = 'VoterProxy' << 176
        if ceil32(_5) <= _5:
            _71 = mem[64]
            mem[64] = _5 + _39 + 47
            mem[_5 + _39 + 47] = 32
            _77 = mem[_71]
            mem[_5 + _39 + 79] = mem[_71]
            mem[_5 + _39 + 111 len ceil32(_77)] = mem[_71 + 32 len ceil32(_77)]
            if ceil32(_77) > _77:
                mem[_5 + _39 + _77 + 111] = 0
            return 32, mem[_5 + _39 + 79 len ceil32(_77) + 32]
        _74 = mem[64]
        mem[64] = _5 + _39 + 47
        mem[_5 + _39 + 47] = 32
        _81 = mem[_74]
        mem[_5 + _39 + 79] = mem[_74]
        mem[_5 + _39 + 111 len ceil32(_81)] = mem[_74 + 32 len ceil32(_81)]
        if ceil32(_81) > _81:
            mem[_5 + _39 + _81 + 111] = 0
        return 32, mem[_5 + _39 + 79 len ceil32(_81) + 32]
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _41 = mem[64]
    mem[mem[64] + 32] = 0x4375727665000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 37 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    mem[_5 + mem[64] + 37] = 'VoterProxy' << 176
    if ceil32(_5) <= _5:
        _72 = mem[64]
        mem[64] = _5 + _41 + 47
        mem[_5 + _41 + 47] = 32
        _79 = mem[_72]
        mem[_5 + _41 + 79] = mem[_72]
        mem[_5 + _41 + 111 len ceil32(_79)] = mem[_72 + 32 len ceil32(_79)]
        if ceil32(_79) > _79:
            mem[_5 + _41 + _79 + 111] = 0
        return 32, mem[_5 + _41 + 79 len ceil32(_79) + 32]
    _76 = mem[64]
    mem[64] = _5 + _41 + 47
    mem[_5 + _41 + 47] = 32
    _82 = mem[_76]
    mem[_5 + _41 + 79] = mem[_76]
    mem[_5 + _41 + 111 len ceil32(_82)] = mem[_76 + 32 len ceil32(_82)]
    if ceil32(_82) > _82:
        mem[_5 + _41 + _82 + 111] = 0
    return 32, mem[_5 + _41 + 79 len ceil32(_82) + 32]
}

function tendTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    require 0 < dex.length
    mem[0] = 11
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
    require ext_code.size(dex)
    staticcall dex.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _64 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _65 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _64 + (32 * _65) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _65] = mem[_64 + 224 len 32 * _65]
    require _65 - 1 < _65
    _118 = mem[(32 * _65 - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * _65 - 1) + ceil32(return_data.size) + 224]:
        require ext_code.size(curveAddress)
        staticcall curveAddress.pool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_125] == mem[_125 + 12 len 20]
        require ext_code.size(mem[_125 + 12 len 20])
        staticcall mem[_125 + 12 len 20].get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_133]:
            revert with 0, 'SafeMath: division by zero', 0
    else:
        if 10^12 * mem[(32 * _65 - 1) + ceil32(return_data.size) + 224] / mem[(32 * _65 - 1) + ceil32(return_data.size) + 224] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(curveAddress)
        staticcall curveAddress.pool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_126] == mem[_126 + 12 len 20]
        require ext_code.size(mem[_126 + 12 len 20])
        staticcall mem[_126 + 12 len 20].get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^12 * _118:
            if 1000000000000 * 10^18 * _118 / 10^12 * _118 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_134]:
            revert with 0, 'SafeMath: division by zero', 0
    return 0
}

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    require 0 < dex.length
    mem[0] = 11
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
    require ext_code.size(dex)
    staticcall dex.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _64 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _65 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _64 + (32 * _65) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _65] = mem[_64 + 224 len 32 * _65]
    require _65 - 1 < _65
    _118 = mem[(32 * _65 - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * _65 - 1) + ceil32(return_data.size) + 224]:
        require ext_code.size(curveAddress)
        staticcall curveAddress.pool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_125] == mem[_125 + 12 len 20]
        require ext_code.size(mem[_125 + 12 len 20])
        staticcall mem[_125 + 12 len 20].get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_133]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / mem[_133])
    if 10^12 * mem[(32 * _65 - 1) + ceil32(return_data.size) + 224] / mem[(32 * _65 - 1) + ceil32(return_data.size) + 224] != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(curveAddress)
    staticcall curveAddress.pool() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _126 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_126] == mem[_126 + 12 len 20]
    require ext_code.size(mem[_126 + 12 len 20])
    staticcall mem[_126 + 12 len 20].get_virtual_price() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _134 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not 10^12 * _118:
        if not mem[_134]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / mem[_134])
    if 1000000000000 * 10^18 * _118 / 10^12 * _118 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not mem[_134]:
        revert with 0, 'SafeMath: division by zero', 0
    return (1000000000000 * 10^18 * _118 / mem[_134])
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
    mem[ceil32(return_data.size) + 128] = 0x1e4f97b9f9f913c46f1632781732927b9019c68b
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
    staticcall arg1.balanceOf(address arg1) with:
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
    mem[(4 * ceil32(return_data.size)) + 192 len 4] = transfer(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 324 len floor32((5 * ceil32(return_data.size)) + 99)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 260 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
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
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
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
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(gaugeAddress)
        staticcall gaugeAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gaugeAddress)
        if arg1 - ext_call.return_data[0] < ext_call.return_data[0]:
            call gaugeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (arg1 - ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < arg1 - ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            call gaugeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 2 * ext_call.return_data[0] < arg1:
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 2 * ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 2 * ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 2 * ext_call.return_data[0], 0) << 288)
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
                if arg1 <= 2 * ext_call.return_data[0]:
                    return 0
                return (arg1 - (2 * ext_call.return_data[0]))
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
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
    return 0
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
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(gaugeAddress)
    call gaugeAddress.withdraw(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x1e4f97b9f9f913c46f1632781732927b9019c68b)
    staticcall 0x1e4f97b9f9f913c46f1632781732927b9019c68b.balanceOf(address arg1) with:
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
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x1e4f97b9f9f913c46f1632781732927b9019c68b):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(0x1e4f97b9f9f913c46f1632781732927b9019c68b):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call 0x1e4f97b9f9f913c46f1632781732927b9019c68b with:
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
        mem[(4 * ceil32(return_data.size)) + 264] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 296] = arg1
        mem[(6 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 260] = 68
        mem[(6 * ceil32(return_data.size)) + 292 len 4] = transfer(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + 360] = 32
        mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), ext_call.return_data[0], 0
        mem[(6 * ceil32(return_data.size)) + 492] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
            mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                if not mem[(6 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
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
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), ext_call.return_data[0], 0
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    require 0 < dex.length
    mem[0] = 11
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
    require ext_code.size(dex)
    staticcall dex.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _322 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _323 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _322 + (32 * _323) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _323] = mem[_322 + 224 len 32 * _323]
    require _323 - 1 < _323
    _634 = mem[(32 * _323 - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * _323 - 1) + ceil32(return_data.size) + 224]:
        require ext_code.size(curveAddress)
        staticcall curveAddress.pool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _641 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_641] == mem[_641 + 12 len 20]
        require ext_code.size(mem[_641 + 12 len 20])
        staticcall mem[_641 + 12 len 20].get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _649 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _651 = mem[_649]
        _653 = mem[64]
        mem[64] = mem[64] + 64
        mem[_653] = 26
        mem[_653 + 32] = 'SafeMath: division by zero'
        if not _651:
            revert with 0, 'SafeMath: division by zero', 0
        _666 = mem[64]
        mem[64] = mem[64] + 288
        mem[_666] = 0
        mem[_666 + 32] = 0
        mem[_666 + 64] = 0
        mem[_666 + 96] = 0
        mem[_666 + 128] = 0
        mem[_666 + 160] = 0
        mem[_666 + 192] = 0
        mem[_666 + 224] = 0
        mem[_666 + 256] = 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.strategies(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _680 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _684 = mem[64]
        require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
        mem[64] = mem[64] + 288
        mem[_684] = mem[_680]
        mem[_684 + 32] = mem[_680 + 32]
        mem[_684 + 64] = mem[_680 + 64]
        mem[_684 + 96] = mem[_680 + 96]
        mem[_684 + 128] = mem[_680 + 128]
        mem[_684 + 160] = mem[_680 + 160]
        mem[_684 + 192] = mem[_680 + 192]
        mem[_684 + 224] = mem[_680 + 224]
        mem[_684 + 256] = mem[_680 + 256]
        if 0 == mem[_684 + 32]:
            return 0
        _707 = mem[_684 + 160]
        _709 = mem[64]
        mem[64] = mem[64] + 64
        mem[_709] = 30
        mem[_709 + 32] = 'SafeMath: subtraction overflow'
        if _707 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - _707 < minReportDelay:
            return 0
        _734 = mem[_684 + 160]
        _738 = mem[64]
        mem[64] = mem[64] + 64
        mem[_738] = 30
        mem[_738 + 32] = 'SafeMath: subtraction overflow'
        if _734 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - _734 >= maxReportDelay:
            return 1
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.debtOutstanding() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _769 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_769] > debtThreshold:
            return 1
        mem[mem[64] + 4] = this.address
        require ext_code.size(gaugeAddress)
        staticcall gaugeAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _800 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _804 = mem[_800]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _813 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _816 = mem[_813]
        if _804 + mem[_813] < mem[_813]:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + _804 + mem[_813] < mem[_684 + 192]:
            return 1
        if _804 + mem[_813] <= mem[_684 + 192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _845 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_845] < mem[_845]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                mem[mem[64]] = 0 < mem[_845]
            else:
                if 0 / _651 * profitFactor / profitFactor != 0 / _651:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 0 / _651 * profitFactor < mem[_845]
        else:
            _837 = mem[_684 + 192]
            _839 = mem[64]
            mem[64] = mem[64] + 64
            mem[_839] = 30
            mem[_839 + 32] = 'SafeMath: subtraction overflow'
            if _837 > _804 + _816:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _877 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _804 + _816 - _837 + mem[_877] < mem[_877]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                mem[mem[64]] = 0 < _804 + _816 - _837 + mem[_877]
            else:
                if 0 / _651 * profitFactor / profitFactor != 0 / _651:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 0 / _651 * profitFactor < _804 + _816 - _837 + mem[_877]
    else:
        if 10^12 * mem[(32 * _323 - 1) + ceil32(return_data.size) + 224] / mem[(32 * _323 - 1) + ceil32(return_data.size) + 224] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(curveAddress)
        staticcall curveAddress.pool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _642 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_642] == mem[_642 + 12 len 20]
        require ext_code.size(mem[_642 + 12 len 20])
        staticcall mem[_642 + 12 len 20].get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _650 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _652 = mem[_650]
        if not 10^12 * _634:
            _655 = mem[64]
            mem[64] = mem[64] + 64
            mem[_655] = 26
            mem[_655 + 32] = 'SafeMath: division by zero'
            if not _652:
                revert with 0, 'SafeMath: division by zero', 0
            _670 = mem[64]
            mem[64] = mem[64] + 288
            mem[_670] = 0
            mem[_670 + 32] = 0
            mem[_670 + 64] = 0
            mem[_670 + 96] = 0
            mem[_670 + 128] = 0
            mem[_670 + 160] = 0
            mem[_670 + 192] = 0
            mem[_670 + 224] = 0
            mem[_670 + 256] = 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.strategies(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _683 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _686 = mem[64]
            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
            mem[64] = mem[64] + 288
            mem[_686] = mem[_683]
            mem[_686 + 32] = mem[_683 + 32]
            mem[_686 + 64] = mem[_683 + 64]
            mem[_686 + 96] = mem[_683 + 96]
            mem[_686 + 128] = mem[_683 + 128]
            mem[_686 + 160] = mem[_683 + 160]
            mem[_686 + 192] = mem[_683 + 192]
            mem[_686 + 224] = mem[_683 + 224]
            mem[_686 + 256] = mem[_683 + 256]
            if 0 == mem[_686 + 32]:
                return 0
            _719 = mem[_686 + 160]
            _722 = mem[64]
            mem[64] = mem[64] + 64
            mem[_722] = 30
            mem[_722 + 32] = 'SafeMath: subtraction overflow'
            if _719 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _719 < minReportDelay:
                return 0
            _739 = mem[_686 + 160]
            _742 = mem[64]
            mem[64] = mem[64] + 64
            mem[_742] = 30
            mem[_742 + 32] = 'SafeMath: subtraction overflow'
            if _739 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _739 >= maxReportDelay:
                return 1
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _775 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_775] > debtThreshold:
                return 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(gaugeAddress)
            staticcall gaugeAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _806 = mem[_803]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _815 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _818 = mem[_815]
            if _806 + mem[_815] < mem[_815]:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + _806 + mem[_815] < mem[_686 + 192]:
                return 1
            if _806 + mem[_815] <= mem[_686 + 192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _854 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_854] < mem[_854]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < mem[_854]
                else:
                    if 0 / _652 * profitFactor / profitFactor != 0 / _652:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 0 / _652 * profitFactor < mem[_854]
            else:
                _844 = mem[_686 + 192]
                _847 = mem[64]
                mem[64] = mem[64] + 64
                mem[_847] = 30
                mem[_847 + 32] = 'SafeMath: subtraction overflow'
                if _844 > _806 + _818:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _884 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _806 + _818 - _844 + mem[_884] < mem[_884]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < _806 + _818 - _844 + mem[_884]
                else:
                    if 0 / _652 * profitFactor / profitFactor != 0 / _652:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 0 / _652 * profitFactor < _806 + _818 - _844 + mem[_884]
        else:
            if 1000000000000 * 10^18 * _634 / 10^12 * _634 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _659 = mem[64]
            mem[64] = mem[64] + 64
            mem[_659] = 26
            mem[_659 + 32] = 'SafeMath: division by zero'
            if not _652:
                revert with 0, 'SafeMath: division by zero', 0
            _675 = mem[64]
            mem[64] = mem[64] + 288
            mem[_675] = 0
            mem[_675 + 32] = 0
            mem[_675 + 64] = 0
            mem[_675 + 96] = 0
            mem[_675 + 128] = 0
            mem[_675 + 160] = 0
            mem[_675 + 192] = 0
            mem[_675 + 224] = 0
            mem[_675 + 256] = 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.strategies(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _697 = mem[64]
            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
            mem[64] = mem[64] + 288
            mem[_697] = mem[_685]
            mem[_697 + 32] = mem[_685 + 32]
            mem[_697 + 64] = mem[_685 + 64]
            mem[_697 + 96] = mem[_685 + 96]
            mem[_697 + 128] = mem[_685 + 128]
            mem[_697 + 160] = mem[_685 + 160]
            mem[_697 + 192] = mem[_685 + 192]
            mem[_697 + 224] = mem[_685 + 224]
            mem[_697 + 256] = mem[_685 + 256]
            if 0 == mem[_697 + 32]:
                return 0
            _724 = mem[_697 + 160]
            _728 = mem[64]
            mem[64] = mem[64] + 64
            mem[_728] = 30
            mem[_728 + 32] = 'SafeMath: subtraction overflow'
            if _724 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _724 < minReportDelay:
                return 0
            _745 = mem[_697 + 160]
            _751 = mem[64]
            mem[64] = mem[64] + 64
            mem[_751] = 30
            mem[_751 + 32] = 'SafeMath: subtraction overflow'
            if _745 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _745 >= maxReportDelay:
                return 1
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _781 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_781] > debtThreshold:
                return 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(gaugeAddress)
            staticcall gaugeAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _808 = mem[_805]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _819 = mem[_817]
            if _808 + mem[_817] < mem[_817]:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + _808 + mem[_817] < mem[_697 + 192]:
                return 1
            if _808 + mem[_817] <= mem[_697 + 192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _861 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_861] < mem[_861]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < mem[_861]
                else:
                    if 1000000000000 * 10^18 * _634 / _652 * profitFactor / profitFactor != 1000000000000 * 10^18 * _634 / _652:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 1000000000000 * 10^18 * _634 / _652 * profitFactor < mem[_861]
            else:
                _853 = mem[_697 + 192]
                _857 = mem[64]
                mem[64] = mem[64] + 64
                mem[_857] = 30
                mem[_857 + 32] = 'SafeMath: subtraction overflow'
                if _853 > _808 + _819:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _889 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _808 + _819 - _853 + mem[_889] < mem[_889]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < _808 + _819 - _853 + mem[_889]
                else:
                    if 1000000000000 * 10^18 * _634 / _652 * profitFactor / profitFactor != 1000000000000 * 10^18 * _634 / _652:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 1000000000000 * 10^18 * _634 / _652 * profitFactor < _808 + _819 - _853 + mem[_889]
    return memory
      from mem[64]
       len 32
}



}
