contract main {




// =====================  Runtime code  =====================


#
#  - approveAll()
#  - harvest()
#
const apiVersion = '', 0

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const voter = 0x72a34abafab09b15e7191822a679f28e067c4a16

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
    if not arg2:
        require arg1 < pathTarget.length
        pathTarget[arg1] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    else:
        if 1 == arg2:
            require arg1 < pathTarget.length
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
    _56 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _57 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _56 + (32 * _57) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _57] = mem[_56 + 224 len 32 * _57]
    require _57 - 1 < _57
    _102 = mem[(32 * _57 - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * _57 - 1) + ceil32(return_data.size) + 224]:
        require ext_code.size(curveAddress)
        staticcall curveAddress.get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_109]:
            revert with 0, 'SafeMath: division by zero', 0
    else:
        if 10^12 * mem[(32 * _57 - 1) + ceil32(return_data.size) + 224] / mem[(32 * _57 - 1) + ceil32(return_data.size) + 224] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(curveAddress)
        staticcall curveAddress.get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^12 * _102:
            if 1000000000000 * 10^18 * _102 / 10^12 * _102 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_110]:
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
    _56 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _57 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _56 + (32 * _57) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _57] = mem[_56 + 224 len 32 * _57]
    require _57 - 1 < _57
    _102 = mem[(32 * _57 - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * _57 - 1) + ceil32(return_data.size) + 224]:
        require ext_code.size(curveAddress)
        staticcall curveAddress.get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_109]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / mem[_109])
    if 10^12 * mem[(32 * _57 - 1) + ceil32(return_data.size) + 224] / mem[(32 * _57 - 1) + ceil32(return_data.size) + 224] != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(curveAddress)
    staticcall curveAddress.get_virtual_price() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not 10^12 * _102:
        if not mem[_110]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / mem[_110])
    if 1000000000000 * 10^18 * _102 / 10^12 * _102 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not mem[_110]:
        revert with 0, 'SafeMath: division by zero', 0
    return (1000000000000 * 10^18 * _102 / mem[_110])
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
    _314 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _315 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _314 + (32 * _315) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _315] = mem[_314 + 224 len 32 * _315]
    require _315 - 1 < _315
    _618 = mem[(32 * _315 - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * _315 - 1) + ceil32(return_data.size) + 224]:
        require ext_code.size(curveAddress)
        staticcall curveAddress.get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _625 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _627 = mem[_625]
        _629 = mem[64]
        mem[64] = mem[64] + 64
        mem[_629] = 26
        mem[_629 + 32] = 'SafeMath: division by zero'
        if not _627:
            revert with 0, 'SafeMath: division by zero', 0
        _642 = mem[64]
        mem[64] = mem[64] + 288
        mem[_642] = 0
        mem[_642 + 32] = 0
        mem[_642 + 64] = 0
        mem[_642 + 96] = 0
        mem[_642 + 128] = 0
        mem[_642 + 160] = 0
        mem[_642 + 192] = 0
        mem[_642 + 224] = 0
        mem[_642 + 256] = 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.strategies(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _656 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _660 = mem[64]
        require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
        mem[64] = mem[64] + 288
        mem[_660] = mem[_656]
        mem[_660 + 32] = mem[_656 + 32]
        mem[_660 + 64] = mem[_656 + 64]
        mem[_660 + 96] = mem[_656 + 96]
        mem[_660 + 128] = mem[_656 + 128]
        mem[_660 + 160] = mem[_656 + 160]
        mem[_660 + 192] = mem[_656 + 192]
        mem[_660 + 224] = mem[_656 + 224]
        mem[_660 + 256] = mem[_656 + 256]
        if 0 == mem[_660 + 32]:
            return 0
        _683 = mem[_660 + 160]
        _685 = mem[64]
        mem[64] = mem[64] + 64
        mem[_685] = 30
        mem[_685 + 32] = 'SafeMath: subtraction overflow'
        if _683 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - _683 < minReportDelay:
            return 0
        _710 = mem[_660 + 160]
        _714 = mem[64]
        mem[64] = mem[64] + 64
        mem[_714] = 30
        mem[_714 + 32] = 'SafeMath: subtraction overflow'
        if _710 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - _710 >= maxReportDelay:
            return 1
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.debtOutstanding() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _745 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_745] > debtThreshold:
            return 1
        mem[mem[64] + 4] = this.address
        require ext_code.size(gaugeAddress)
        staticcall gaugeAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _776 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _780 = mem[_776]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _789 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _792 = mem[_789]
        if _780 + mem[_789] < mem[_789]:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + _780 + mem[_789] < mem[_660 + 192]:
            return 1
        if _780 + mem[_789] <= mem[_660 + 192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_821] < mem[_821]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                mem[mem[64]] = 0 < mem[_821]
            else:
                if 0 / _627 * profitFactor / profitFactor != 0 / _627:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 0 / _627 * profitFactor < mem[_821]
        else:
            _813 = mem[_660 + 192]
            _815 = mem[64]
            mem[64] = mem[64] + 64
            mem[_815] = 30
            mem[_815 + 32] = 'SafeMath: subtraction overflow'
            if _813 > _780 + _792:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _853 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _780 + _792 - _813 + mem[_853] < mem[_853]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                mem[mem[64]] = 0 < _780 + _792 - _813 + mem[_853]
            else:
                if 0 / _627 * profitFactor / profitFactor != 0 / _627:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 0 / _627 * profitFactor < _780 + _792 - _813 + mem[_853]
    else:
        if 10^12 * mem[(32 * _315 - 1) + ceil32(return_data.size) + 224] / mem[(32 * _315 - 1) + ceil32(return_data.size) + 224] != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(curveAddress)
        staticcall curveAddress.get_virtual_price() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _626 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _628 = mem[_626]
        if not 10^12 * _618:
            _631 = mem[64]
            mem[64] = mem[64] + 64
            mem[_631] = 26
            mem[_631 + 32] = 'SafeMath: division by zero'
            if not _628:
                revert with 0, 'SafeMath: division by zero', 0
            _646 = mem[64]
            mem[64] = mem[64] + 288
            mem[_646] = 0
            mem[_646 + 32] = 0
            mem[_646 + 64] = 0
            mem[_646 + 96] = 0
            mem[_646 + 128] = 0
            mem[_646 + 160] = 0
            mem[_646 + 192] = 0
            mem[_646 + 224] = 0
            mem[_646 + 256] = 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.strategies(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _662 = mem[64]
            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
            mem[64] = mem[64] + 288
            mem[_662] = mem[_659]
            mem[_662 + 32] = mem[_659 + 32]
            mem[_662 + 64] = mem[_659 + 64]
            mem[_662 + 96] = mem[_659 + 96]
            mem[_662 + 128] = mem[_659 + 128]
            mem[_662 + 160] = mem[_659 + 160]
            mem[_662 + 192] = mem[_659 + 192]
            mem[_662 + 224] = mem[_659 + 224]
            mem[_662 + 256] = mem[_659 + 256]
            if 0 == mem[_662 + 32]:
                return 0
            _695 = mem[_662 + 160]
            _698 = mem[64]
            mem[64] = mem[64] + 64
            mem[_698] = 30
            mem[_698 + 32] = 'SafeMath: subtraction overflow'
            if _695 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _695 < minReportDelay:
                return 0
            _715 = mem[_662 + 160]
            _718 = mem[64]
            mem[64] = mem[64] + 64
            mem[_718] = 30
            mem[_718 + 32] = 'SafeMath: subtraction overflow'
            if _715 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _715 >= maxReportDelay:
                return 1
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _751 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_751] > debtThreshold:
                return 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(gaugeAddress)
            staticcall gaugeAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _779 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _782 = mem[_779]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _794 = mem[_791]
            if _782 + mem[_791] < mem[_791]:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + _782 + mem[_791] < mem[_662 + 192]:
                return 1
            if _782 + mem[_791] <= mem[_662 + 192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_830] < mem[_830]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < mem[_830]
                else:
                    if 0 / _628 * profitFactor / profitFactor != 0 / _628:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 0 / _628 * profitFactor < mem[_830]
            else:
                _820 = mem[_662 + 192]
                _823 = mem[64]
                mem[64] = mem[64] + 64
                mem[_823] = 30
                mem[_823 + 32] = 'SafeMath: subtraction overflow'
                if _820 > _782 + _794:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _860 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _782 + _794 - _820 + mem[_860] < mem[_860]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < _782 + _794 - _820 + mem[_860]
                else:
                    if 0 / _628 * profitFactor / profitFactor != 0 / _628:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 0 / _628 * profitFactor < _782 + _794 - _820 + mem[_860]
        else:
            if 1000000000000 * 10^18 * _618 / 10^12 * _618 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _635 = mem[64]
            mem[64] = mem[64] + 64
            mem[_635] = 26
            mem[_635 + 32] = 'SafeMath: division by zero'
            if not _628:
                revert with 0, 'SafeMath: division by zero', 0
            _651 = mem[64]
            mem[64] = mem[64] + 288
            mem[_651] = 0
            mem[_651 + 32] = 0
            mem[_651 + 64] = 0
            mem[_651 + 96] = 0
            mem[_651 + 128] = 0
            mem[_651 + 160] = 0
            mem[_651 + 192] = 0
            mem[_651 + 224] = 0
            mem[_651 + 256] = 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.strategies(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _673 = mem[64]
            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
            mem[64] = mem[64] + 288
            mem[_673] = mem[_661]
            mem[_673 + 32] = mem[_661 + 32]
            mem[_673 + 64] = mem[_661 + 64]
            mem[_673 + 96] = mem[_661 + 96]
            mem[_673 + 128] = mem[_661 + 128]
            mem[_673 + 160] = mem[_661 + 160]
            mem[_673 + 192] = mem[_661 + 192]
            mem[_673 + 224] = mem[_661 + 224]
            mem[_673 + 256] = mem[_661 + 256]
            if 0 == mem[_673 + 32]:
                return 0
            _700 = mem[_673 + 160]
            _704 = mem[64]
            mem[64] = mem[64] + 64
            mem[_704] = 30
            mem[_704 + 32] = 'SafeMath: subtraction overflow'
            if _700 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _700 < minReportDelay:
                return 0
            _721 = mem[_673 + 160]
            _727 = mem[64]
            mem[64] = mem[64] + 64
            mem[_727] = 30
            mem[_727 + 32] = 'SafeMath: subtraction overflow'
            if _721 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - _721 >= maxReportDelay:
                return 1
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _757 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_757] > debtThreshold:
                return 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(gaugeAddress)
            staticcall gaugeAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _781 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _784 = mem[_781]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _795 = mem[_793]
            if _784 + mem[_793] < mem[_793]:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + _784 + mem[_793] < mem[_673 + 192]:
                return 1
            if _784 + mem[_793] <= mem[_673 + 192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _837 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_837] < mem[_837]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < mem[_837]
                else:
                    if 1000000000000 * 10^18 * _618 / _628 * profitFactor / profitFactor != 1000000000000 * 10^18 * _618 / _628:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 1000000000000 * 10^18 * _618 / _628 * profitFactor < mem[_837]
            else:
                _829 = mem[_673 + 192]
                _833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_833] = 30
                mem[_833 + 32] = 'SafeMath: subtraction overflow'
                if _829 > _784 + _795:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _784 + _795 - _829 + mem[_865] < mem[_865]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    mem[mem[64]] = 0 < _784 + _795 - _829 + mem[_865]
                else:
                    if 1000000000000 * 10^18 * _618 / _628 * profitFactor / profitFactor != 1000000000000 * 10^18 * _618 / _628:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 1000000000000 * 10^18 * _618 / _628 * profitFactor < _784 + _795 - _829 + mem[_865]
    return memory
      from mem[64]
       len 32
}



}
