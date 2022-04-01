contract main {




// =====================  Runtime code  =====================


#
#  - assets()
#  - asset(address arg1)
#  - adapterInfo()
#
address registryAddress;
address oracleAddress;

function oracle() payable {
    return oracleAddress
}

function registryAddress() payable {
    return registryAddress
}

function _fallback() payable {
    revert
}

function assetTvl(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.totalAssets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function assetsLength() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        require mem[_19] == mem[_19 + 12 len 20]
        mem[mem[64] + 4] = mem[_19 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_20)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_23] == mem[_23]
        if s > -mem[_23] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_23]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function positionOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[192] = 224
    require ext_code.size(arg2)
    staticcall arg2.token() with:
            gas gas_remaining wei
    mem[352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 356] = arg1
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 356] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 356] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 356] = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 356] = arg1
    mem[(7 * ceil32(return_data.size)) + 388] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 352] = arg1
    mem[(8 * ceil32(return_data.size)) + 384] = arg2
    mem[(8 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 448] = 1
    mem[(8 * ceil32(return_data.size)) + 512] = 0
    mem[(8 * ceil32(return_data.size)) + 544] = 0
    mem[(8 * ceil32(return_data.size)) + 576] = 0
    mem[(8 * ceil32(return_data.size)) + 480] = (8 * ceil32(return_data.size)) + 352
    mem[(8 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 704] = (8 * ceil32(return_data.size)) + 448
    mem[64] = (8 * ceil32(return_data.size)) + 864
    mem[(8 * ceil32(return_data.size)) + 736] = arg2
    mem[(8 * ceil32(return_data.size)) + 768] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 832] = (8 * ceil32(return_data.size)) + 608
    mem[(8 * ceil32(return_data.size)) + 864] = 32
    mem[(8 * ceil32(return_data.size)) + 896] = arg2
    mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 992] = 128
    mem[(8 * ceil32(return_data.size)) + 1024] = uint64(ext_call.return_data[0]) << 96
    mem[(8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 1088] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 1120] = 128
    mem[(8 * ceil32(return_data.size)) + 1152] = 1
    idx = 0
    s = (8 * ceil32(return_data.size)) + 480
    t = (8 * ceil32(return_data.size)) + 1184
    while idx < mem[(8 * ceil32(return_data.size)) + 448]:
        _48 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_48 + 44 len 20]
        mem[t + 64] = mem[_48 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return 32, address(arg2), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           128,
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           ext_call.return_data[0],
           128,
           mem[(8 * ceil32(return_data.size)) + 448],
           mem[(8 * ceil32(return_data.size)) + 1184 len 96]
}

function assetsAddresses() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _47 = mem[_45]
        require mem[_45] == mem[_45 + 12 len 20]
        mem[mem[64] + 4] = mem[_45 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_47)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_65] == mem[_65]
        if s > -mem[_65] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_65]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    _36 = mem[64]
    if not s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _36 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0], None == ext_call.return_data[0], None
        idx = 0
        while idx < ext_call.return_data[0], None:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_94]
            require mem[_94] == mem[_94 + 12 len 20]
            mem[mem[64] + 4] = mem[_94 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_97)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_106]
            require mem[_106] == mem[_106]
            s = 0
            t = 0
            while s < _108:
                mem[mem[64] + 4] = address(_97)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_97), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _128 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_128] == mem[_128 + 12 len 20]
                if t >= mem[_36]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _36 + 32] = mem[_128 + 12 len 20]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[_36]
        mem[mem[64] + 32] = mem[_36]
        idx = 0
        s = _36 + 32
        t = mem[64] + 64
        while idx < _90:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _88 + (32 * _90) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]] = call.data[calldata.size len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]]
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _36 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
    require return_data.size >= 32
    require ext_call.return_data[0], None == ext_call.return_data[0], None
    idx = 0
    while idx < ext_call.return_data[0], None:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_95]
        require mem[_95] == mem[_95 + 12 len 20]
        mem[mem[64] + 4] = mem[_95 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_99)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_107]
        require mem[_107] == mem[_107]
        s = 0
        t = 0
        while s < _109:
            mem[mem[64] + 4] = address(_99)
            mem[mem[64] + 36] = s
            require ext_code.size(registryAddress)
            staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(_99), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_129] == mem[_129 + 12 len 20]
            if t >= mem[_36]:
                revert with 'NH{q', 50
            mem[(32 * t) + _36 + 32] = mem[_129 + 12 len 20]
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _89 = mem[64]
    mem[mem[64]] = 32
    _91 = mem[_36]
    mem[mem[64] + 32] = mem[_36]
    idx = 0
    s = _36 + 32
    t = mem[64] + 64
    while idx < _91:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _89 + (32 * _91) + -mem[64] + 64
}

function assetsTvl() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _60 = mem[_58]
        require mem[_58] == mem[_58 + 12 len 20]
        mem[mem[64] + 4] = mem[_58 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_60)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_89] == mem[_89]
        if s > -mem[_89] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_89]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    _49 = mem[64]
    if not s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _49 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0], None == ext_call.return_data[0], None
        idx = 0
        while idx < ext_call.return_data[0], None:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _149 = mem[_143]
            require mem[_143] == mem[_143 + 12 len 20]
            mem[mem[64] + 4] = mem[_143 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_149)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _167 = mem[_163]
            require mem[_163] == mem[_163]
            s = 0
            t = 0
            while s < _167:
                mem[mem[64] + 4] = address(_149)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_149), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_207] == mem[_207 + 12 len 20]
                if t >= mem[_49]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _49 + 32] = mem[_207 + 12 len 20]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _127 = mem[_49]
        idx = 0
        s = 0
        while idx < _127:
            if idx >= mem[_49]:
                revert with 'NH{q', 50
            _190 = mem[(32 * idx) + _49 + 32]
            require ext_code.size(mem[(32 * idx) + _49 + 44 len 20])
            staticcall mem[(32 * idx) + _49 + 44 len 20].totalAssets() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _200 = mem[_197]
            require mem[_197] == mem[_197]
            require ext_code.size(address(_190))
            staticcall address(_190).token() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_211] == mem[_211 + 12 len 20]
            mem[mem[64] + 4] = mem[_211 + 12 len 20]
            mem[mem[64] + 36] = _200
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _200
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_223] == mem[_223]
            if s > -mem[_223] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_223]
            continue 
        return (s * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127 * _127)
    mem[mem[64] + 32 len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]] = call.data[calldata.size len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]]
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _49 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
    require return_data.size >= 32
    require ext_call.return_data[0], None == ext_call.return_data[0], None
    idx = 0
    while idx < ext_call.return_data[0], None:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _150 = mem[_144]
        require mem[_144] == mem[_144 + 12 len 20]
        mem[mem[64] + 4] = mem[_144 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_150)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _168 = mem[_164]
        require mem[_164] == mem[_164]
        s = 0
        t = 0
        while s < _168:
            mem[mem[64] + 4] = address(_150)
            mem[mem[64] + 36] = s
            require ext_code.size(registryAddress)
            staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(_150), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_210] == mem[_210 + 12 len 20]
            if t >= mem[_49]:
                revert with 'NH{q', 50
            mem[(32 * t) + _49 + 32] = mem[_210 + 12 len 20]
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _128 = mem[_49]
    idx = 0
    s = 0
    while idx < _128:
        if idx >= mem[_49]:
            revert with 'NH{q', 50
        _192 = mem[(32 * idx) + _49 + 32]
        require ext_code.size(mem[(32 * idx) + _49 + 44 len 20])
        staticcall mem[(32 * idx) + _49 + 44 len 20].totalAssets() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _202 = mem[_198]
        require mem[_198] == mem[_198]
        require ext_code.size(address(_192))
        staticcall address(_192).token() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_212] == mem[_212 + 12 len 20]
        mem[mem[64] + 4] = mem[_212 + 12 len 20]
        mem[mem[64] + 36] = _202
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], _202
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_224] == mem[_224]
        if s > -mem[_224] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_224]
        continue 
    return (s * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128 * _128)
}

function tokens() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _187 = mem[_184]
            require mem[_184] == mem[_184 + 12 len 20]
            _198 = mem[64]
            mem[64] = mem[64] + 160
            mem[_198] = 0
            mem[_198 + 32] = 96
            mem[_198 + 64] = 96
            mem[_198 + 96] = 0
            mem[_198 + 128] = 0
            _199 = mem[64]
            mem[64] = mem[64] + 160
            mem[_199] = address(_187)
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_187))
            staticcall address(_187).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _206 = mem[_203]
            require mem[_203] <= test266151307()
            require _203 + mem[_203] + 31 < _203 + return_data.size
            _211 = mem[_203 + mem[_203]]
            if mem[_203 + mem[_203]] > test266151307():
                revert with 'NH{q', 65
            if _203 + ceil32(return_data.size) + ceil32(ceil32(mem[_203 + mem[_203]])) + 1 > test266151307() or ceil32(ceil32(mem[_203 + mem[_203]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _203 + ceil32(return_data.size) + ceil32(ceil32(mem[_203 + mem[_203]])) + 1
            mem[_203 + ceil32(return_data.size)] = _211
            require _206 + _211 + 32 <= return_data.size
            s = 0
            while s < _211:
                mem[_203 + ceil32(return_data.size) + s + 32] = mem[_203 + _206 + s + 32]
                s = s + 32
                continue 
            if ceil32(_211) <= _211:
                mem[_199 + 32] = _203 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_187))
                staticcall address(_187).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _359 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _363 = mem[_359]
                require mem[_359] <= test266151307()
                require _359 + mem[_359] + 31 < _359 + return_data.size
                _367 = mem[_359 + mem[_359]]
                if mem[_359 + mem[_359]] > test266151307():
                    revert with 'NH{q', 65
                if _359 + ceil32(return_data.size) + ceil32(ceil32(mem[_359 + mem[_359]])) + 1 > test266151307() or ceil32(ceil32(mem[_359 + mem[_359]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _359 + ceil32(return_data.size) + ceil32(ceil32(mem[_359 + mem[_359]])) + 1
                mem[_359 + ceil32(return_data.size)] = _367
                require _363 + _367 + 32 <= return_data.size
                s = 0
                while s < _367:
                    mem[_359 + ceil32(return_data.size) + s + 32] = mem[_359 + _363 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_367) <= _367:
                    mem[_199 + 64] = _359 + ceil32(return_data.size)
                    require ext_code.size(address(_187))
                    staticcall address(_187).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_523] == mem[_523 + 31 len 1]
                    mem[_199 + 96] = mem[_523 + 31 len 1]
                    mem[mem[64] + 4] = address(_187)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_187)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_562] == mem[_562]
                    mem[_199 + 128] = mem[_562]
                else:
                    mem[_359 + ceil32(return_data.size) + _367 + 32] = 0
                    mem[_199 + 64] = _359 + ceil32(return_data.size)
                    require ext_code.size(address(_187))
                    staticcall address(_187).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_526] == mem[_526 + 31 len 1]
                    mem[_199 + 96] = mem[_526 + 31 len 1]
                    mem[mem[64] + 4] = address(_187)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_187)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _566 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_566] == mem[_566]
                    mem[_199 + 128] = mem[_566]
            else:
                mem[_203 + ceil32(return_data.size) + _211 + 32] = 0
                mem[_199 + 32] = _203 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_187))
                staticcall address(_187).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _361 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _365 = mem[_361]
                require mem[_361] <= test266151307()
                require _361 + mem[_361] + 31 < _361 + return_data.size
                _369 = mem[_361 + mem[_361]]
                if mem[_361 + mem[_361]] > test266151307():
                    revert with 'NH{q', 65
                if _361 + ceil32(return_data.size) + ceil32(ceil32(mem[_361 + mem[_361]])) + 1 > test266151307() or ceil32(ceil32(mem[_361 + mem[_361]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _361 + ceil32(return_data.size) + ceil32(ceil32(mem[_361 + mem[_361]])) + 1
                mem[_361 + ceil32(return_data.size)] = _369
                require _365 + _369 + 32 <= return_data.size
                s = 0
                while s < _369:
                    mem[_361 + ceil32(return_data.size) + s + 32] = mem[_361 + _365 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_369) <= _369:
                    mem[_199 + 64] = _361 + ceil32(return_data.size)
                    require ext_code.size(address(_187))
                    staticcall address(_187).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_524] == mem[_524 + 31 len 1]
                    mem[_199 + 96] = mem[_524 + 31 len 1]
                    mem[mem[64] + 4] = address(_187)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_187)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_563] == mem[_563]
                    mem[_199 + 128] = mem[_563]
                else:
                    mem[_361 + ceil32(return_data.size) + _369 + 32] = 0
                    mem[_199 + 64] = _361 + ceil32(return_data.size)
                    require ext_code.size(address(_187))
                    staticcall address(_187).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_527] == mem[_527 + 31 len 1]
                    mem[_199 + 96] = mem[_527 + 31 len 1]
                    mem[mem[64] + 4] = address(_187)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_187)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_567] == mem[_567]
                    mem[_199 + 128] = mem[_567]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _199
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _179 = mem[64]
        mem[mem[64]] = 32
        _180 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _180) + 64
        u = mem[64] + 64
        while idx < _180:
            mem[u] = t + -_179 - 64
            _349 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _360 = mem[_349 + 32]
            mem[t + 32] = 160
            _364 = mem[_360]
            mem[t + 160] = mem[_360]
            v = 0
            while v < _364:
                mem[t + v + 192] = mem[_360 + v + 32]
                v = v + 32
                continue 
            if ceil32(_364) <= _364:
                _511 = mem[_349 + 64]
                mem[t + 64] = ceil32(_364) + 192
                _522 = mem[_511]
                mem[t + ceil32(_364) + 192] = mem[_511]
                v = 0
                while v < _522:
                    mem[t + ceil32(_364) + v + 224] = mem[_511 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_522) > _522:
                    mem[t + ceil32(_364) + _522 + 224] = 0
                mem[t + 96] = mem[_349 + 127 len 1]
                mem[t + 128] = mem[_349 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_364) + ceil32(_522) + 224
                u = u + 32
                continue 
            mem[t + _364 + 192] = 0
            _516 = mem[_349 + 64]
            mem[t + 64] = ceil32(_364) + 192
            _525 = mem[_516]
            mem[t + ceil32(_364) + 192] = mem[_516]
            v = 0
            while v < _525:
                mem[t + ceil32(_364) + v + 224] = mem[_516 + v + 32]
                v = v + 32
                continue 
            if ceil32(_525) > _525:
                mem[t + ceil32(_364) + _525 + 224] = 0
            mem[t + 96] = mem[_349 + 127 len 1]
            mem[t + 128] = mem[_349 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_364) + ceil32(_525) + 224
            u = u + 32
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
        mem[var20001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var20001
        idx = var20002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _528 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _534 = mem[_528]
            require mem[_528] == mem[_528 + 12 len 20]
            _550 = mem[64]
            mem[64] = mem[64] + 160
            mem[_550] = 0
            mem[_550 + 32] = 96
            mem[_550 + 64] = 96
            mem[_550 + 96] = 0
            mem[_550 + 128] = 0
            _553 = mem[64]
            mem[64] = mem[64] + 160
            mem[_553] = address(_534)
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_534))
            staticcall address(_534).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _559 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _565 = mem[_559]
            require mem[_559] <= test266151307()
            require _559 + mem[_559] + 31 < _559 + return_data.size
            _570 = mem[_559 + mem[_559]]
            if mem[_559 + mem[_559]] > test266151307():
                revert with 'NH{q', 65
            if _559 + ceil32(return_data.size) + ceil32(ceil32(mem[_559 + mem[_559]])) + 1 > test266151307() or ceil32(ceil32(mem[_559 + mem[_559]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _559 + ceil32(return_data.size) + ceil32(ceil32(mem[_559 + mem[_559]])) + 1
            mem[_559 + ceil32(return_data.size)] = _570
            require _565 + _570 + 32 <= return_data.size
            s = 0
            while s < _570:
                mem[_559 + ceil32(return_data.size) + s + 32] = mem[_559 + _565 + s + 32]
                s = s + 32
                continue 
            if ceil32(_570) <= _570:
                mem[_553 + 32] = _559 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_534))
                staticcall address(_534).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _657 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _662 = mem[_657]
                require mem[_657] <= test266151307()
                require _657 + mem[_657] + 31 < _657 + return_data.size
                _667 = mem[_657 + mem[_657]]
                if mem[_657 + mem[_657]] > test266151307():
                    revert with 'NH{q', 65
                if _657 + ceil32(return_data.size) + ceil32(ceil32(mem[_657 + mem[_657]])) + 1 > test266151307() or ceil32(ceil32(mem[_657 + mem[_657]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _657 + ceil32(return_data.size) + ceil32(ceil32(mem[_657 + mem[_657]])) + 1
                mem[_657 + ceil32(return_data.size)] = _667
                require _662 + _667 + 32 <= return_data.size
                s = 0
                while s < _667:
                    mem[_657 + ceil32(return_data.size) + s + 32] = mem[_657 + _662 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_667) <= _667:
                    mem[_553 + 64] = _657 + ceil32(return_data.size)
                    require ext_code.size(address(_534))
                    staticcall address(_534).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _738 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_738] == mem[_738 + 31 len 1]
                    mem[_553 + 96] = mem[_738 + 31 len 1]
                    mem[mem[64] + 4] = address(_534)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_534)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _765 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_765] == mem[_765]
                    mem[_553 + 128] = mem[_765]
                else:
                    mem[_657 + ceil32(return_data.size) + _667 + 32] = 0
                    mem[_553 + 64] = _657 + ceil32(return_data.size)
                    require ext_code.size(address(_534))
                    staticcall address(_534).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _741 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_741] == mem[_741 + 31 len 1]
                    mem[_553 + 96] = mem[_741 + 31 len 1]
                    mem[mem[64] + 4] = address(_534)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_534)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767]
                    mem[_553 + 128] = mem[_767]
            else:
                mem[_559 + ceil32(return_data.size) + _570 + 32] = 0
                mem[_553 + 32] = _559 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_534))
                staticcall address(_534).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _659 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _666 = mem[_659]
                require mem[_659] <= test266151307()
                require _659 + mem[_659] + 31 < _659 + return_data.size
                _668 = mem[_659 + mem[_659]]
                if mem[_659 + mem[_659]] > test266151307():
                    revert with 'NH{q', 65
                if _659 + ceil32(return_data.size) + ceil32(ceil32(mem[_659 + mem[_659]])) + 1 > test266151307() or ceil32(ceil32(mem[_659 + mem[_659]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _659 + ceil32(return_data.size) + ceil32(ceil32(mem[_659 + mem[_659]])) + 1
                mem[_659 + ceil32(return_data.size)] = _668
                require _666 + _668 + 32 <= return_data.size
                s = 0
                while s < _668:
                    mem[_659 + ceil32(return_data.size) + s + 32] = mem[_659 + _666 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_668) <= _668:
                    mem[_553 + 64] = _659 + ceil32(return_data.size)
                    require ext_code.size(address(_534))
                    staticcall address(_534).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_739] == mem[_739 + 31 len 1]
                    mem[_553 + 96] = mem[_739 + 31 len 1]
                    mem[mem[64] + 4] = address(_534)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_534)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _766 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_766] == mem[_766]
                    mem[_553 + 128] = mem[_766]
                else:
                    mem[_659 + ceil32(return_data.size) + _668 + 32] = 0
                    mem[_553 + 64] = _659 + ceil32(return_data.size)
                    require ext_code.size(address(_534))
                    staticcall address(_534).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_742] == mem[_742 + 31 len 1]
                    mem[_553 + 96] = mem[_742 + 31 len 1]
                    mem[mem[64] + 4] = address(_534)
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceUsdcRecommended(address rg1) with:
                            gas gas_remaining wei
                           args address(_534)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_768] == mem[_768]
                    mem[_553 + 128] = mem[_768]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _553
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _509 = mem[64]
        mem[mem[64]] = 32
        _510 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + (32 * _510) + 64
        u = mem[64] + 64
        while idx < _510:
            mem[u] = t + -_509 - 64
            _645 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _658 = mem[_645 + 32]
            mem[t + 32] = 160
            _665 = mem[_658]
            mem[t + 160] = mem[_658]
            v = 0
            while v < _665:
                mem[t + v + 192] = mem[_658 + v + 32]
                v = v + 32
                continue 
            if ceil32(_665) <= _665:
                _727 = mem[_645 + 64]
                mem[t + 64] = ceil32(_665) + 192
                _737 = mem[_727]
                mem[t + ceil32(_665) + 192] = mem[_727]
                v = 0
                while v < _737:
                    mem[t + ceil32(_665) + v + 224] = mem[_727 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_737) > _737:
                    mem[t + ceil32(_665) + _737 + 224] = 0
                mem[t + 96] = mem[_645 + 127 len 1]
                mem[t + 128] = mem[_645 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_665) + ceil32(_737) + 224
                u = u + 32
                continue 
            mem[t + _665 + 192] = 0
            _732 = mem[_645 + 64]
            mem[t + 64] = ceil32(_665) + 192
            _740 = mem[_732]
            mem[t + ceil32(_665) + 192] = mem[_732]
            v = 0
            while v < _740:
                mem[t + ceil32(_665) + v + 224] = mem[_732 + v + 32]
                v = v + 32
                continue 
            if ceil32(_740) > _740:
                mem[t + ceil32(_665) + _740 + 224] = 0
            mem[t + 96] = mem[_645 + 127 len 1]
            mem[t + 128] = mem[_645 + 128]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_665) + ceil32(_740) + 224
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function positionsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _148 = mem[_146]
        require mem[_146] == mem[_146 + 12 len 20]
        mem[mem[64] + 4] = mem[_146 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_148)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == mem[_188]
        if s > -mem[_188] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_188]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    _137 = mem[64]
    if not s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _137 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0], None == ext_call.return_data[0], None
        idx = 0
        while idx < ext_call.return_data[0], None:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _423 = mem[_414]
            require mem[_414] == mem[_414 + 12 len 20]
            mem[mem[64] + 4] = mem[_414 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_423)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _473 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _483 = mem[_473]
            require mem[_473] == mem[_473]
            s = 0
            t = 0
            while s < _483:
                mem[mem[64] + 4] = address(_423)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_423), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _687 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_687] == mem[_687 + 12 len 20]
                if t >= mem[_137]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _137 + 32] = mem[_687 + 12 len 20]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _397 = mem[_137]
        if mem[_137] > test266151307():
            revert with 'NH{q', 65
        _399 = mem[64]
        mem[mem[64]] = mem[_137]
        mem[64] = mem[64] + (32 * _397) + 32
        if not _397:
            idx = 0
            while idx < _397:
                if idx >= mem[_137]:
                    revert with 'NH{q', 50
                _644 = mem[(32 * idx) + _137 + 32]
                _649 = mem[64]
                mem[64] = mem[64] + 128
                mem[_649] = 0
                mem[_649 + 32] = 0
                mem[_649 + 64] = 0
                _652 = mem[64]
                mem[64] = mem[64] + 128
                mem[_652] = 0
                mem[_652 + 32] = 0
                mem[_652 + 64] = 0
                mem[_652 + 96] = 96
                mem[_649 + 96] = _652
                require ext_code.size(address(_644))
                staticcall address(_644).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _661 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _670 = mem[_661]
                require mem[_661] == mem[_661 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_644))
                staticcall address(_644).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _723 = mem[_719]
                require mem[_719] == mem[_719]
                mem[mem[64] + 4] = address(_670)
                mem[mem[64] + 36] = _723
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_670), _723
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _761 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _763 = mem[_761]
                require mem[_761] == mem[_761]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_670))
                staticcall address(_670).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _791 = mem[_789]
                require mem[_789] == mem[_789]
                mem[mem[64] + 4] = address(_670)
                mem[mem[64] + 36] = _791
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_670), _791
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _807 = mem[_805]
                require mem[_805] == mem[_805]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(_644)
                require ext_code.size(address(_670))
                staticcall address(_670).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), address(_644)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _823 = mem[_821]
                require mem[_821] == mem[_821]
                _829 = mem[64]
                mem[64] = mem[64] + 96
                mem[_829] = arg1
                mem[_829 + 32] = address(_644)
                mem[_829 + 64] = _823
                _833 = mem[64]
                mem[mem[64]] = 1
                _835 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_835] = 0
                mem[_835 + 32] = 0
                mem[_835 + 64] = 0
                if 0 >= mem[_833]:
                    revert with 'NH{q', 50
                mem[_833 + 32] = _829
                mem[_833 + 160] = address(_670)
                mem[_833 + 192] = _791
                mem[_833 + 224] = _807
                mem[_833 + 256] = _833
                mem[64] = _833 + 416
                mem[_833 + 288] = address(_644)
                mem[_833 + 320] = _723
                mem[_833 + 352] = _763
                mem[_833 + 384] = _833 + 160
                if idx >= mem[_399]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _399 + 32] = _833 + 288
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _643 = mem[64]
            mem[mem[64]] = 32
            _651 = mem[_399]
            mem[mem[64] + 32] = mem[_399]
            idx = 0
            s = _399 + 32
            t = mem[64] + (32 * _651) + 64
            u = mem[64] + 64
            while idx < _651:
                mem[u] = t + -_643 - 64
                _861 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_861 + 32]
                mem[t + 64] = mem[_861 + 64]
                _893 = mem[_861 + 96]
                mem[t + 96] = 128
                mem[t + 128] = mem[_893 + 12 len 20]
                mem[t + 160] = mem[_893 + 32]
                mem[t + 192] = mem[_893 + 64]
                _915 = mem[_893 + 96]
                mem[t + 224] = 128
                _917 = mem[_915]
                mem[t + 256] = mem[_915]
                v = 0
                w = _915 + 32
                x = t + 288
                while v < _917:
                    _1001 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1001 + 44 len 20]
                    mem[x + 64] = mem[_1001 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _917) + 288
                u = u + 32
                continue 
        else:
            mem[_399 + (32 * _397) + 32] = 0
            mem[_399 + (32 * _397) + 64] = 0
            mem[_399 + (32 * _397) + 96] = 0
            mem[64] = _399 + (32 * _397) + 288
            mem[_399 + (32 * _397) + 160] = 0
            mem[_399 + (32 * _397) + 192] = 0
            mem[_399 + (32 * _397) + 224] = 0
            mem[_399 + (32 * _397) + 256] = 96
            mem[_399 + (32 * _397) + 128] = _399 + (32 * _397) + 160
            mem[var60002] = _399 + (32 * _397) + 32
            s = _399 + (32 * _397) + 128
            s = _399 + (32 * _397) + 32
            s = var60002
            idx = var60003
            while idx - 1:
                _1005 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1005] = 0
                mem[_1005 + 32] = 0
                mem[_1005 + 64] = 0
                mem[64] = mem[64] + 128
                mem[_399 + (32 * _397) + 160] = 0
                mem[_399 + (32 * _397) + 192] = 0
                mem[_399 + (32 * _397) + 224] = 0
                mem[_399 + (32 * _397) + 256] = 96
                mem[_1005 + 96] = _399 + (32 * _397) + 160
                mem[s + 32] = _1005
                s = _1005 + 96
                s = _1005
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _397:
                if idx >= mem[_137]:
                    revert with 'NH{q', 50
                _1118 = mem[(32 * idx) + _137 + 32]
                _1121 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1121] = 0
                mem[_1121 + 32] = 0
                mem[_1121 + 64] = 0
                _1124 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1124] = 0
                mem[_1124 + 32] = 0
                mem[_1124 + 64] = 0
                mem[_1124 + 96] = 96
                mem[_1121 + 96] = _1124
                require ext_code.size(address(_1118))
                staticcall address(_1118).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1131 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1134 = mem[_1131]
                require mem[_1131] == mem[_1131 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1118))
                staticcall address(_1118).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1155 = mem[_1153]
                require mem[_1153] == mem[_1153]
                mem[mem[64] + 4] = address(_1134)
                mem[mem[64] + 36] = _1155
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1134), _1155
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1173 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1175 = mem[_1173]
                require mem[_1173] == mem[_1173]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1134))
                staticcall address(_1134).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1185 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1187 = mem[_1185]
                require mem[_1185] == mem[_1185]
                mem[mem[64] + 4] = address(_1134)
                mem[mem[64] + 36] = _1187
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1134), _1187
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1195 = mem[_1193]
                require mem[_1193] == mem[_1193]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(_1118)
                require ext_code.size(address(_1134))
                staticcall address(_1134).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), address(_1118)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1203 = mem[_1201]
                require mem[_1201] == mem[_1201]
                _1205 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1205] = arg1
                mem[_1205 + 32] = address(_1118)
                mem[_1205 + 64] = _1203
                _1207 = mem[64]
                mem[mem[64]] = 1
                _1209 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_1209] = 0
                mem[_1209 + 32] = 0
                mem[_1209 + 64] = 0
                if 0 >= mem[_1207]:
                    revert with 'NH{q', 50
                mem[_1207 + 32] = _1205
                mem[_1207 + 160] = address(_1134)
                mem[_1207 + 192] = _1187
                mem[_1207 + 224] = _1195
                mem[_1207 + 256] = _1207
                mem[64] = _1207 + 416
                mem[_1207 + 288] = address(_1118)
                mem[_1207 + 320] = _1155
                mem[_1207 + 352] = _1175
                mem[_1207 + 384] = _1207 + 160
                if idx >= mem[_399]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _399 + 32] = _1207 + 288
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1117 = mem[64]
            mem[mem[64]] = 32
            _1123 = mem[_399]
            mem[mem[64] + 32] = mem[_399]
            idx = 0
            s = _399 + 32
            t = mem[64] + (32 * _1123) + 64
            u = mem[64] + 64
            while idx < _1123:
                mem[u] = t + -_1117 - 64
                _1219 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1219 + 32]
                mem[t + 64] = mem[_1219 + 64]
                _1229 = mem[_1219 + 96]
                mem[t + 96] = 128
                mem[t + 128] = mem[_1229 + 12 len 20]
                mem[t + 160] = mem[_1229 + 32]
                mem[t + 192] = mem[_1229 + 64]
                _1237 = mem[_1229 + 96]
                mem[t + 224] = 128
                _1239 = mem[_1237]
                mem[t + 256] = mem[_1237]
                v = 0
                w = _1237 + 32
                x = t + 288
                while v < _1239:
                    _1249 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1249 + 44 len 20]
                    mem[x + 64] = mem[_1249 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _1239) + 288
                u = u + 32
                continue 
    else:
        mem[mem[64] + 32 len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]] = call.data[calldata.size len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _137 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0], None == ext_call.return_data[0], None
        idx = 0
        while idx < ext_call.return_data[0], None:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _426 = mem[_416]
            require mem[_416] == mem[_416 + 12 len 20]
            mem[mem[64] + 4] = mem[_416 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_426)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _486 = mem[_474]
            require mem[_474] == mem[_474]
            s = 0
            t = 0
            while s < _486:
                mem[mem[64] + 4] = address(_426)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_426), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _688 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_688] == mem[_688 + 12 len 20]
                if t >= mem[_137]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _137 + 32] = mem[_688 + 12 len 20]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _398 = mem[_137]
        if mem[_137] > test266151307():
            revert with 'NH{q', 65
        _400 = mem[64]
        mem[mem[64]] = mem[_137]
        mem[64] = mem[64] + (32 * _398) + 32
        if not _398:
            idx = 0
            while idx < _398:
                if idx >= mem[_137]:
                    revert with 'NH{q', 50
                _647 = mem[(32 * idx) + _137 + 32]
                _650 = mem[64]
                mem[64] = mem[64] + 128
                mem[_650] = 0
                mem[_650 + 32] = 0
                mem[_650 + 64] = 0
                _654 = mem[64]
                mem[64] = mem[64] + 128
                mem[_654] = 0
                mem[_654 + 32] = 0
                mem[_654 + 64] = 0
                mem[_654 + 96] = 96
                mem[_650 + 96] = _654
                require ext_code.size(address(_647))
                staticcall address(_647).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _664 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _674 = mem[_664]
                require mem[_664] == mem[_664 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_647))
                staticcall address(_647).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _721 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _724 = mem[_721]
                require mem[_721] == mem[_721]
                mem[mem[64] + 4] = address(_674)
                mem[mem[64] + 36] = _724
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_674), _724
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _762 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _764 = mem[_762]
                require mem[_762] == mem[_762]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_674))
                staticcall address(_674).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _790 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _792 = mem[_790]
                require mem[_790] == mem[_790]
                mem[mem[64] + 4] = address(_674)
                mem[mem[64] + 36] = _792
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_674), _792
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _806 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _808 = mem[_806]
                require mem[_806] == mem[_806]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(_647)
                require ext_code.size(address(_674))
                staticcall address(_674).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), address(_647)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _824 = mem[_822]
                require mem[_822] == mem[_822]
                _831 = mem[64]
                mem[64] = mem[64] + 96
                mem[_831] = arg1
                mem[_831 + 32] = address(_647)
                mem[_831 + 64] = _824
                _834 = mem[64]
                mem[mem[64]] = 1
                _836 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_836] = 0
                mem[_836 + 32] = 0
                mem[_836 + 64] = 0
                if 0 >= mem[_834]:
                    revert with 'NH{q', 50
                mem[_834 + 32] = _831
                mem[_834 + 160] = address(_674)
                mem[_834 + 192] = _792
                mem[_834 + 224] = _808
                mem[_834 + 256] = _834
                mem[64] = _834 + 416
                mem[_834 + 288] = address(_647)
                mem[_834 + 320] = _724
                mem[_834 + 352] = _764
                mem[_834 + 384] = _834 + 160
                if idx >= mem[_400]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _400 + 32] = _834 + 288
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _646 = mem[64]
            mem[mem[64]] = 32
            _653 = mem[_400]
            mem[mem[64] + 32] = mem[_400]
            idx = 0
            s = _400 + 32
            t = mem[64] + (32 * _653) + 64
            u = mem[64] + 64
            while idx < _653:
                mem[u] = t + -_646 - 64
                _863 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_863 + 32]
                mem[t + 64] = mem[_863 + 64]
                _894 = mem[_863 + 96]
                mem[t + 96] = 128
                mem[t + 128] = mem[_894 + 12 len 20]
                mem[t + 160] = mem[_894 + 32]
                mem[t + 192] = mem[_894 + 64]
                _916 = mem[_894 + 96]
                mem[t + 224] = 128
                _919 = mem[_916]
                mem[t + 256] = mem[_916]
                v = 0
                w = _916 + 32
                x = t + 288
                while v < _919:
                    _1002 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1002 + 44 len 20]
                    mem[x + 64] = mem[_1002 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _919) + 288
                u = u + 32
                continue 
        else:
            mem[_400 + (32 * _398) + 32] = 0
            mem[_400 + (32 * _398) + 64] = 0
            mem[_400 + (32 * _398) + 96] = 0
            mem[64] = _400 + (32 * _398) + 288
            mem[_400 + (32 * _398) + 160] = 0
            mem[_400 + (32 * _398) + 192] = 0
            mem[_400 + (32 * _398) + 224] = 0
            mem[_400 + (32 * _398) + 256] = 96
            mem[_400 + (32 * _398) + 128] = _400 + (32 * _398) + 160
            mem[var61002] = _400 + (32 * _398) + 32
            s = _400 + (32 * _398) + 128
            s = _400 + (32 * _398) + 32
            s = var61002
            idx = var61003
            while idx - 1:
                _1006 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1006] = 0
                mem[_1006 + 32] = 0
                mem[_1006 + 64] = 0
                mem[64] = mem[64] + 128
                mem[_400 + (32 * _398) + 160] = 0
                mem[_400 + (32 * _398) + 192] = 0
                mem[_400 + (32 * _398) + 224] = 0
                mem[_400 + (32 * _398) + 256] = 96
                mem[_1006 + 96] = _400 + (32 * _398) + 160
                mem[s + 32] = _1006
                s = _1006 + 96
                s = _1006
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _398:
                if idx >= mem[_137]:
                    revert with 'NH{q', 50
                _1120 = mem[(32 * idx) + _137 + 32]
                _1122 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1122] = 0
                mem[_1122 + 32] = 0
                mem[_1122 + 64] = 0
                _1126 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1126] = 0
                mem[_1126 + 32] = 0
                mem[_1126 + 64] = 0
                mem[_1126 + 96] = 96
                mem[_1122 + 96] = _1126
                require ext_code.size(address(_1120))
                staticcall address(_1120).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1136 = mem[_1132]
                require mem[_1132] == mem[_1132 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1120))
                staticcall address(_1120).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1156 = mem[_1154]
                require mem[_1154] == mem[_1154]
                mem[mem[64] + 4] = address(_1136)
                mem[mem[64] + 36] = _1156
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1136), _1156
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1176 = mem[_1174]
                require mem[_1174] == mem[_1174]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1136))
                staticcall address(_1136).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1188 = mem[_1186]
                require mem[_1186] == mem[_1186]
                mem[mem[64] + 4] = address(_1136)
                mem[mem[64] + 36] = _1188
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1136), _1188
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1196 = mem[_1194]
                require mem[_1194] == mem[_1194]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(_1120)
                require ext_code.size(address(_1136))
                staticcall address(_1136).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), address(_1120)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1204 = mem[_1202]
                require mem[_1202] == mem[_1202]
                _1206 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1206] = arg1
                mem[_1206 + 32] = address(_1120)
                mem[_1206 + 64] = _1204
                _1208 = mem[64]
                mem[mem[64]] = 1
                _1210 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_1210] = 0
                mem[_1210 + 32] = 0
                mem[_1210 + 64] = 0
                if 0 >= mem[_1208]:
                    revert with 'NH{q', 50
                mem[_1208 + 32] = _1206
                mem[_1208 + 160] = address(_1136)
                mem[_1208 + 192] = _1188
                mem[_1208 + 224] = _1196
                mem[_1208 + 256] = _1208
                mem[64] = _1208 + 416
                mem[_1208 + 288] = address(_1120)
                mem[_1208 + 320] = _1156
                mem[_1208 + 352] = _1176
                mem[_1208 + 384] = _1208 + 160
                if idx >= mem[_400]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _400 + 32] = _1208 + 288
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1119 = mem[64]
            mem[mem[64]] = 32
            _1125 = mem[_400]
            mem[mem[64] + 32] = mem[_400]
            idx = 0
            s = _400 + 32
            t = mem[64] + (32 * _1125) + 64
            u = mem[64] + 64
            while idx < _1125:
                mem[u] = t + -_1119 - 64
                _1220 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1220 + 32]
                mem[t + 64] = mem[_1220 + 64]
                _1230 = mem[_1220 + 96]
                mem[t + 96] = 128
                mem[t + 128] = mem[_1230 + 12 len 20]
                mem[t + 160] = mem[_1230 + 32]
                mem[t + 192] = mem[_1230 + 64]
                _1238 = mem[_1230 + 96]
                mem[t + 224] = 128
                _1240 = mem[_1238]
                mem[t + 256] = mem[_1238]
                v = 0
                w = _1238 + 32
                x = t + 288
                while v < _1240:
                    _1250 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1250 + 44 len 20]
                    mem[x + 64] = mem[_1250 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _1240) + 288
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
