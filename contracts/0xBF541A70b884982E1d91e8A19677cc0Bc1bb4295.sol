contract main {




// =====================  Runtime code  =====================


#
#  - assets()
#  - asset(address arg1)
#  - adapterInfo()
#
address managementListAddress;
address oracleAddress;
address registryAddress;
array of address positionSpender;

function positionSpenderAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < positionSpender.length
    return address(positionSpender[arg1])
}

function managementList() payable {
    return managementListAddress
}

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

function setPositionSpenderAddresses(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg1.length) + 101] = msg.sender
    require ext_code.size(managementListAddress)
    call managementListAddress.isManager(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[floor32(arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ManagementList: caller is not a manager'
    positionSpender.length = arg1.length
    if not arg1.length:
        idx = 0
        while positionSpender.length > idx:
            uint256(positionSpender[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(positionSpender[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while positionSpender.length > idx:
            uint256(positionSpender[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_e26a05e6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).token() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 1
    mem[ceil32(return_data.size) + 160] = 0
    mem[ceil32(return_data.size) + 192] = 0
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 260] = address(arg1)
    mem[ceil32(return_data.size) + 292] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[64] = (2 * ceil32(return_data.size)) + 352
    mem[(2 * ceil32(return_data.size)) + 256] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 288] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = (2 * ceil32(return_data.size)) + 256
    mem[(2 * ceil32(return_data.size)) + 352] = 32
    mem[(2 * ceil32(return_data.size)) + 384] = 1
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 416
    while idx < mem[ceil32(return_data.size) + 96]:
        _20 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_20 + 44 len 20]
        mem[t + 64] = mem[_20 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len (2 * ceil32(return_data.size)) + -mem[64] + 512
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

function sub_541e347f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if positionSpender.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = positionSpender.length
    mem[64] = (32 * positionSpender.length) + 128
    if not positionSpender.length:
        idx = 0
        while idx < positionSpender.length:
            mem[0] = 3
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = address(positionSpender[idx])
            require ext_code.size(address(arg2))
            staticcall address(arg2).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(positionSpender[idx])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _49 = mem[_45]
            require mem[_45] == mem[_45]
            _55 = mem[64]
            mem[64] = mem[64] + 96
            mem[_55] = address(arg1)
            mem[_55 + 32] = address(positionSpender[idx])
            mem[_55 + 64] = _49
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _55
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _35:
            _61 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_61 + 44 len 20]
            mem[t + 64] = mem[_61 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _32 + (96 * _35) + -mem[64] + 64
    mem[64] = (32 * positionSpender.length) + 224
    mem[(32 * positionSpender.length) + 128] = 0
    mem[(32 * positionSpender.length) + 160] = 0
    mem[(32 * positionSpender.length) + 192] = 0
    mem[var29001] = (32 * positionSpender.length) + 128
    s = var29001
    idx = var29002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * positionSpender.length) + 128] = 0
        mem[(32 * positionSpender.length) + 160] = 0
        mem[(32 * positionSpender.length) + 192] = 0
        mem[s + 32] = (32 * positionSpender.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < positionSpender.length:
        mem[0] = 3
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = address(positionSpender[idx])
        require ext_code.size(address(arg2))
        staticcall address(arg2).allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), address(positionSpender[idx])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _90 = mem[_88]
        require mem[_88] == mem[_88]
        _92 = mem[64]
        mem[64] = mem[64] + 96
        mem[_92] = address(arg1)
        mem[_92 + 32] = address(positionSpender[idx])
        mem[_92 + 64] = _90
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _92
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _80 = mem[64]
    mem[mem[64]] = 32
    _83 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _83:
        _94 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_94 + 44 len 20]
        mem[t + 64] = mem[_94 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _80 + (96 * _83) + -mem[64] + 64
}

function positionOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 96
    mem[192] = 256
    mem[224] = 96
    require ext_code.size(arg2)
    staticcall arg2.token() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 388] = arg1
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 388] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.token() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(8 * ceil32(return_data.size)) + 384] = 1
    mem[(8 * ceil32(return_data.size)) + 448] = 0
    mem[(8 * ceil32(return_data.size)) + 480] = 0
    mem[(8 * ceil32(return_data.size)) + 512] = 0
    mem[(8 * ceil32(return_data.size)) + 548] = arg1
    mem[(8 * ceil32(return_data.size)) + 580] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[(8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 544] = arg1
    mem[(10 * ceil32(return_data.size)) + 576] = arg2
    mem[(10 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 416] = (10 * ceil32(return_data.size)) + 544
    if positionSpender.length > test266151307():
        revert with 'NH{q', 65
    mem[(10 * ceil32(return_data.size)) + 640] = positionSpender.length
    mem[64] = (10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 672
    if not positionSpender.length:
        idx = 0
        while idx < positionSpender.length:
            mem[0] = 3
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(positionSpender[idx])
            require ext_code.size(arg2)
            staticcall arg2.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(positionSpender[idx])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _127 = mem[_122]
            require mem[_122] == mem[_122]
            _133 = mem[64]
            mem[64] = mem[64] + 96
            mem[_133] = arg1
            mem[_133 + 32] = address(positionSpender[idx])
            mem[_133 + 64] = _127
            if idx >= mem[(10 * ceil32(return_data.size)) + 640]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (10 * ceil32(return_data.size)) + 672] = _133
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _106 = mem[64]
        mem[64] = mem[64] + 128
        mem[_106] = address(ext_call.return_data[0])
        mem[_106 + 32] = ext_call.return_data[0]
        mem[_106 + 64] = ext_call.return_data[0]
        mem[_106 + 96] = (8 * ceil32(return_data.size)) + 384
        _107 = mem[64]
        mem[64] = mem[64] + 160
        mem[_107] = arg2
        mem[_107 + 32] = ext_call.return_data[0]
        mem[_107 + 64] = ext_call.return_data[0]
        mem[_107 + 96] = _106
        mem[_107 + 128] = (10 * ceil32(return_data.size)) + 640
        _110 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = 160
        mem[mem[64] + 192] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 224] = ext_call.return_data[0]
        mem[mem[64] + 256] = ext_call.return_data[0]
        mem[mem[64] + 288] = 128
        _141 = mem[(8 * ceil32(return_data.size)) + 384]
        mem[mem[64] + 320] = mem[(8 * ceil32(return_data.size)) + 384]
        idx = 0
        s = (8 * ceil32(return_data.size)) + 416
        t = mem[64] + 352
        while idx < _141:
            _166 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_166 + 44 len 20]
            mem[t + 64] = mem[_166 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        _171 = mem[_107 + 128]
        mem[_110 + 160] = (96 * _141) + 320
        _174 = mem[_171]
        mem[_110 + (96 * _141) + 352] = mem[_171]
        idx = 0
        s = _171 + 32
        t = _110 + (96 * _141) + 384
        while idx < _174:
            _207 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_207 + 44 len 20]
            mem[t + 64] = mem[_207 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _110 + (96 * _141) + (96 * _174) + -mem[64] + 384
    mem[64] = (10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 768
    mem[(10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 672] = 0
    mem[(10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 704] = 0
    mem[(10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 736] = 0
    mem[var186001] = (10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 672
    s = var186001
    idx = var186002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 672] = 0
        mem[(10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 704] = 0
        mem[(10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 736] = 0
        mem[s + 32] = (10 * ceil32(return_data.size)) + (32 * positionSpender.length) + 672
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < positionSpender.length:
        mem[0] = 3
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = address(positionSpender[idx])
        require ext_code.size(arg2)
        staticcall arg2.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), address(positionSpender[idx])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _188 = mem[_184]
        require mem[_184] == mem[_184]
        _191 = mem[64]
        mem[64] = mem[64] + 96
        mem[_191] = arg1
        mem[_191 + 32] = address(positionSpender[idx])
        mem[_191 + 64] = _188
        if idx >= mem[(10 * ceil32(return_data.size)) + 640]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (10 * ceil32(return_data.size)) + 672] = _191
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 128
    mem[_167] = address(ext_call.return_data[0])
    mem[_167 + 32] = ext_call.return_data[0]
    mem[_167 + 64] = ext_call.return_data[0]
    mem[_167 + 96] = (8 * ceil32(return_data.size)) + 384
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168] = arg2
    mem[_168 + 32] = ext_call.return_data[0]
    mem[_168 + 64] = ext_call.return_data[0]
    mem[_168 + 96] = _167
    mem[_168 + 128] = (10 * ceil32(return_data.size)) + 640
    _173 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = arg2
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = 160
    mem[mem[64] + 192] = uint64(ext_call.return_data[0]) << 96
    mem[mem[64] + 224] = ext_call.return_data[0]
    mem[mem[64] + 256] = ext_call.return_data[0]
    mem[mem[64] + 288] = 128
    _195 = mem[(8 * ceil32(return_data.size)) + 384]
    mem[mem[64] + 320] = mem[(8 * ceil32(return_data.size)) + 384]
    idx = 0
    s = (8 * ceil32(return_data.size)) + 416
    t = mem[64] + 352
    while idx < _195:
        _208 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_208 + 44 len 20]
        mem[t + 64] = mem[_208 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    _210 = mem[_168 + 128]
    mem[_173 + 160] = (96 * _195) + 320
    _213 = mem[_210]
    mem[_173 + (96 * _195) + 352] = mem[_210]
    idx = 0
    s = _210 + 32
    t = _173 + (96 * _195) + 384
    while idx < _213:
        _223 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_223 + 44 len 20]
        mem[t + 64] = mem[_223 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _173 + (96 * _195) + (96 * _213) + -mem[64] + 384
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
                staticcall address(_187).symbol() with:
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
                    staticcall address(_187).decimals() with:
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
                    staticcall address(_187).decimals() with:
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
                staticcall address(_187).symbol() with:
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
                    staticcall address(_187).decimals() with:
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
                    staticcall address(_187).decimals() with:
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
                staticcall address(_534).symbol() with:
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
                    staticcall address(_534).decimals() with:
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
                    staticcall address(_534).decimals() with:
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
                staticcall address(_534).symbol() with:
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
                    staticcall address(_534).decimals() with:
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
                    staticcall address(_534).decimals() with:
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
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _157 = mem[_155]
        require mem[_155] == mem[_155 + 12 len 20]
        mem[mem[64] + 4] = mem[_155 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_157)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_197] == mem[_197]
        if s > -mem[_197] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_197]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    _146 = mem[64]
    if not s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _146 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
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
            _493 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _502 = mem[_493]
            require mem[_493] == mem[_493 + 12 len 20]
            mem[mem[64] + 4] = mem[_493 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_502)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _552 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _562 = mem[_552]
            require mem[_552] == mem[_552]
            s = 0
            t = 0
            while s < _562:
                mem[mem[64] + 4] = address(_502)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_502), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _868 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_868] == mem[_868 + 12 len 20]
                if t >= mem[_146]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _146 + 32] = mem[_868 + 12 len 20]
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
        _476 = mem[_146]
        if mem[_146] > test266151307():
            revert with 'NH{q', 65
        _478 = mem[64]
        mem[mem[64]] = mem[_146]
        mem[64] = mem[64] + (32 * _476) + 32
        if not _476:
            idx = 0
            while idx < _476:
                if idx >= mem[_146]:
                    revert with 'NH{q', 50
                _825 = mem[(32 * idx) + _146 + 32]
                _830 = mem[64]
                mem[64] = mem[64] + 160
                mem[_830] = 0
                mem[_830 + 32] = 0
                mem[_830 + 64] = 0
                _833 = mem[64]
                mem[64] = mem[64] + 128
                mem[_833] = 0
                mem[_833 + 32] = 0
                mem[_833 + 64] = 0
                mem[_833 + 96] = 96
                mem[_830 + 96] = _833
                mem[_830 + 128] = 96
                require ext_code.size(address(_825))
                staticcall address(_825).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _842 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _851 = mem[_842]
                require mem[_842] == mem[_842 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_825))
                staticcall address(_825).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _904 = mem[_900]
                require mem[_900] == mem[_900]
                mem[mem[64] + 4] = address(_851)
                mem[mem[64] + 36] = _904
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_851), _904
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _944 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _948 = mem[_944]
                require mem[_944] == mem[_944]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_851))
                staticcall address(_851).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _988 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _992 = mem[_988]
                require mem[_988] == mem[_988]
                mem[mem[64] + 4] = address(_851)
                mem[mem[64] + 36] = _992
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_851), _992
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1012 = mem[_1010]
                require mem[_1010] == mem[_1010]
                require ext_code.size(address(_825))
                staticcall address(_825).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1024 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1026 = mem[_1024]
                require mem[_1024] == mem[_1024 + 12 len 20]
                _1036 = mem[64]
                _1038 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_1038] = 0
                mem[_1038 + 32] = 0
                mem[_1038 + 64] = 0
                mem[_1036 + 164] = arg1
                mem[_1036 + 196] = address(_825)
                require ext_code.size(address(_1026))
                staticcall address(_1026).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(_825)
                mem[_1036 + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[64] = _1036 + ceil32(return_data.size) + 256
                mem[_1036 + ceil32(return_data.size) + 160] = arg1
                mem[_1036 + ceil32(return_data.size) + 192] = address(_825)
                mem[_1036 + ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if 0 >= mem[_1036]:
                    revert with 'NH{q', 50
                mem[_1036 + 32] = _1036 + ceil32(return_data.size) + 160
                if positionSpender.length > test266151307():
                    revert with 'NH{q', 65
                mem[_1036 + ceil32(return_data.size) + 256] = positionSpender.length
                mem[64] = _1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                if not positionSpender.length:
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_825))
                        staticcall address(_825).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1213 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1224 = mem[_1213]
                        require mem[_1213] == mem[_1213]
                        _1239 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1239] = arg1
                        mem[_1239 + 32] = address(positionSpender[s])
                        mem[_1239 + 64] = _1224
                        if s >= mem[_1036 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1036 + ceil32(return_data.size) + 288] = _1239
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1160 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1160] = address(_851)
                    mem[_1160 + 32] = _992
                    mem[_1160 + 64] = _1012
                    mem[_1160 + 96] = _1036
                    _1161 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1161] = address(_825)
                    mem[_1161 + 32] = _904
                    mem[_1161 + 64] = _948
                    mem[_1161 + 96] = _1160
                    mem[_1161 + 128] = _1036 + ceil32(return_data.size) + 256
                    if idx >= mem[_478]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _478 + 32] = _1161
                else:
                    mem[64] = _1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 384
                    mem[_1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                    mem[_1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                    mem[_1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                    mem[var220001] = _1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                    t = var220001
                    s = var220002
                    while s - 1:
                        mem[64] = mem[64] + 96
                        mem[_1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                        mem[_1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                        mem[_1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                        mem[t + 32] = _1036 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                        t = t + 32
                        s = s - 1
                        continue 
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_825))
                        staticcall address(_825).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1650 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1654 = mem[_1650]
                        require mem[_1650] == mem[_1650]
                        _1660 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1660] = arg1
                        mem[_1660 + 32] = address(positionSpender[s])
                        mem[_1660 + 64] = _1654
                        if s >= mem[_1036 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1036 + ceil32(return_data.size) + 288] = _1660
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1608 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1608] = address(_851)
                    mem[_1608 + 32] = _992
                    mem[_1608 + 64] = _1012
                    mem[_1608 + 96] = _1036
                    _1609 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1609] = address(_825)
                    mem[_1609 + 32] = _904
                    mem[_1609 + 64] = _948
                    mem[_1609 + 96] = _1608
                    mem[_1609 + 128] = _1036 + ceil32(return_data.size) + 256
                    if idx >= mem[_478]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _478 + 32] = _1609
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _824 = mem[64]
            mem[mem[64]] = 32
            _832 = mem[_478]
            mem[mem[64] + 32] = mem[_478]
            idx = 0
            s = _478 + 32
            t = mem[64] + (32 * _832) + 64
            u = mem[64] + 64
            while idx < _832:
                mem[u] = t + -_824 - 64
                _1154 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1154 + 32]
                mem[t + 64] = mem[_1154 + 64]
                _1210 = mem[_1154 + 96]
                mem[t + 96] = 160
                mem[t + 160] = mem[_1210 + 12 len 20]
                mem[t + 192] = mem[_1210 + 32]
                mem[t + 224] = mem[_1210 + 64]
                _1246 = mem[_1210 + 96]
                mem[t + 256] = 128
                _1252 = mem[_1246]
                mem[t + 288] = mem[_1246]
                v = 0
                w = _1246 + 32
                x = t + 320
                while v < _1252:
                    _1404 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1404 + 44 len 20]
                    mem[x + 64] = mem[_1404 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                _1406 = mem[_1154 + 128]
                mem[t + 128] = (96 * _1252) + 320
                _1412 = mem[_1406]
                mem[t + (96 * _1252) + 320] = mem[_1406]
                v = 0
                w = _1406 + 32
                x = t + (96 * _1252) + 352
                while v < _1412:
                    _1604 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1604 + 44 len 20]
                    mem[x + 64] = mem[_1604 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _1252) + (96 * _1412) + 352
                u = u + 32
                continue 
        else:
            mem[_478 + (32 * _476) + 32] = 0
            mem[_478 + (32 * _476) + 64] = 0
            mem[_478 + (32 * _476) + 96] = 0
            mem[64] = _478 + (32 * _476) + 320
            mem[_478 + (32 * _476) + 192] = 0
            mem[_478 + (32 * _476) + 224] = 0
            mem[_478 + (32 * _476) + 256] = 0
            mem[_478 + (32 * _476) + 288] = 96
            mem[_478 + (32 * _476) + 128] = _478 + (32 * _476) + 192
            mem[_478 + (32 * _476) + 160] = 96
            mem[var60002] = _478 + (32 * _476) + 32
            s = _478 + (32 * _476) + 128
            s = _478 + (32 * _476) + 32
            s = var60002
            idx = var60003
            while idx - 1:
                _1410 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1410] = 0
                mem[_1410 + 32] = 0
                mem[_1410 + 64] = 0
                mem[64] = mem[64] + 128
                mem[_478 + (32 * _476) + 192] = 0
                mem[_478 + (32 * _476) + 224] = 0
                mem[_478 + (32 * _476) + 256] = 0
                mem[_478 + (32 * _476) + 288] = 96
                mem[_1410 + 96] = _478 + (32 * _476) + 192
                mem[_1410 + 128] = 96
                mem[s + 32] = _1410
                s = _1410 + 96
                s = _1410
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _476:
                if idx >= mem[_146]:
                    revert with 'NH{q', 50
                _1613 = mem[(32 * idx) + _146 + 32]
                _1624 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1624] = 0
                mem[_1624 + 32] = 0
                mem[_1624 + 64] = 0
                _1627 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1627] = 0
                mem[_1627 + 32] = 0
                mem[_1627 + 64] = 0
                mem[_1627 + 96] = 96
                mem[_1624 + 96] = _1627
                mem[_1624 + 128] = 96
                require ext_code.size(address(_1613))
                staticcall address(_1613).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1639 = mem[_1635]
                require mem[_1635] == mem[_1635 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1613))
                staticcall address(_1613).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1670 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1672 = mem[_1670]
                require mem[_1670] == mem[_1670]
                mem[mem[64] + 4] = address(_1639)
                mem[mem[64] + 36] = _1672
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1639), _1672
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1696 = mem[_1692]
                require mem[_1692] == mem[_1692]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1639))
                staticcall address(_1639).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1716 = mem[_1712]
                require mem[_1712] == mem[_1712]
                mem[mem[64] + 4] = address(_1639)
                mem[mem[64] + 36] = _1716
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1639), _1716
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1722 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1724 = mem[_1722]
                require mem[_1722] == mem[_1722]
                require ext_code.size(address(_1613))
                staticcall address(_1613).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1732 = mem[_1730]
                require mem[_1730] == mem[_1730 + 12 len 20]
                _1734 = mem[64]
                _1736 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_1736] = 0
                mem[_1736 + 32] = 0
                mem[_1736 + 64] = 0
                mem[_1734 + 164] = arg1
                mem[_1734 + 196] = address(_1613)
                require ext_code.size(address(_1732))
                staticcall address(_1732).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(_1613)
                mem[_1734 + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[64] = _1734 + ceil32(return_data.size) + 256
                mem[_1734 + ceil32(return_data.size) + 160] = arg1
                mem[_1734 + ceil32(return_data.size) + 192] = address(_1613)
                mem[_1734 + ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if 0 >= mem[_1734]:
                    revert with 'NH{q', 50
                mem[_1734 + 32] = _1734 + ceil32(return_data.size) + 160
                if positionSpender.length > test266151307():
                    revert with 'NH{q', 65
                mem[_1734 + ceil32(return_data.size) + 256] = positionSpender.length
                mem[64] = _1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                if not positionSpender.length:
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_1613))
                        staticcall address(_1613).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1831 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1834 = mem[_1831]
                        require mem[_1831] == mem[_1831]
                        _1845 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1845] = arg1
                        mem[_1845 + 32] = address(positionSpender[s])
                        mem[_1845 + 64] = _1834
                        if s >= mem[_1734 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1734 + ceil32(return_data.size) + 288] = _1845
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1798 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1798] = address(_1639)
                    mem[_1798 + 32] = _1716
                    mem[_1798 + 64] = _1724
                    mem[_1798 + 96] = _1734
                    _1799 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1799] = address(_1613)
                    mem[_1799 + 32] = _1672
                    mem[_1799 + 64] = _1696
                    mem[_1799 + 96] = _1798
                    mem[_1799 + 128] = _1734 + ceil32(return_data.size) + 256
                    if idx >= mem[_478]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _478 + 32] = _1799
                else:
                    mem[64] = _1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 384
                    mem[_1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                    mem[_1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                    mem[_1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                    mem[var230001] = _1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                    t = var230001
                    s = var230002
                    while s - 1:
                        mem[64] = mem[64] + 96
                        mem[_1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                        mem[_1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                        mem[_1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                        mem[t + 32] = _1734 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                        t = t + 32
                        s = s - 1
                        continue 
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_1613))
                        staticcall address(_1613).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1942 = mem[_1940]
                        require mem[_1940] == mem[_1940]
                        _1944 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1944] = arg1
                        mem[_1944 + 32] = address(positionSpender[s])
                        mem[_1944 + 64] = _1942
                        if s >= mem[_1734 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1734 + ceil32(return_data.size) + 288] = _1944
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1922 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1922] = address(_1639)
                    mem[_1922 + 32] = _1716
                    mem[_1922 + 64] = _1724
                    mem[_1922 + 96] = _1734
                    _1923 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1923] = address(_1613)
                    mem[_1923 + 32] = _1672
                    mem[_1923 + 64] = _1696
                    mem[_1923 + 96] = _1922
                    mem[_1923 + 128] = _1734 + ceil32(return_data.size) + 256
                    if idx >= mem[_478]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _478 + 32] = _1923
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1612 = mem[64]
            mem[mem[64]] = 32
            _1626 = mem[_478]
            mem[mem[64] + 32] = mem[_478]
            idx = 0
            s = _478 + 32
            t = mem[64] + (32 * _1626) + 64
            u = mem[64] + 64
            while idx < _1626:
                mem[u] = t + -_1612 - 64
                _1794 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1794 + 32]
                mem[t + 64] = mem[_1794 + 64]
                _1828 = mem[_1794 + 96]
                mem[t + 96] = 160
                mem[t + 160] = mem[_1828 + 12 len 20]
                mem[t + 192] = mem[_1828 + 32]
                mem[t + 224] = mem[_1828 + 64]
                _1850 = mem[_1828 + 96]
                mem[t + 256] = 128
                _1856 = mem[_1850]
                mem[t + 288] = mem[_1850]
                v = 0
                w = _1850 + 32
                x = t + 320
                while v < _1856:
                    _1880 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1880 + 44 len 20]
                    mem[x + 64] = mem[_1880 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                _1882 = mem[_1794 + 128]
                mem[t + 128] = (96 * _1856) + 320
                _1886 = mem[_1882]
                mem[t + (96 * _1856) + 320] = mem[_1882]
                v = 0
                w = _1882 + 32
                x = t + (96 * _1856) + 352
                while v < _1886:
                    _1920 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1920 + 44 len 20]
                    mem[x + 64] = mem[_1920 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _1856) + (96 * _1886) + 352
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
        mem[64] = _146 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
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
            _495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _505 = mem[_495]
            require mem[_495] == mem[_495 + 12 len 20]
            mem[mem[64] + 4] = mem[_495 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_505)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _553 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _565 = mem[_553]
            require mem[_553] == mem[_553]
            s = 0
            t = 0
            while s < _565:
                mem[mem[64] + 4] = address(_505)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_505), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_869] == mem[_869 + 12 len 20]
                if t >= mem[_146]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _146 + 32] = mem[_869 + 12 len 20]
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
        _477 = mem[_146]
        if mem[_146] > test266151307():
            revert with 'NH{q', 65
        _479 = mem[64]
        mem[mem[64]] = mem[_146]
        mem[64] = mem[64] + (32 * _477) + 32
        if not _477:
            idx = 0
            while idx < _477:
                if idx >= mem[_146]:
                    revert with 'NH{q', 50
                _828 = mem[(32 * idx) + _146 + 32]
                _831 = mem[64]
                mem[64] = mem[64] + 160
                mem[_831] = 0
                mem[_831 + 32] = 0
                mem[_831 + 64] = 0
                _835 = mem[64]
                mem[64] = mem[64] + 128
                mem[_835] = 0
                mem[_835 + 32] = 0
                mem[_835 + 64] = 0
                mem[_835 + 96] = 96
                mem[_831 + 96] = _835
                mem[_831 + 128] = 96
                require ext_code.size(address(_828))
                staticcall address(_828).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _845 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _855 = mem[_845]
                require mem[_845] == mem[_845 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_828))
                staticcall address(_828).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _902 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _905 = mem[_902]
                require mem[_902] == mem[_902]
                mem[mem[64] + 4] = address(_855)
                mem[mem[64] + 36] = _905
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_855), _905
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _945 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _949 = mem[_945]
                require mem[_945] == mem[_945]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_855))
                staticcall address(_855).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _989 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _994 = mem[_989]
                require mem[_989] == mem[_989]
                mem[mem[64] + 4] = address(_855)
                mem[mem[64] + 36] = _994
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_855), _994
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1011 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1013 = mem[_1011]
                require mem[_1011] == mem[_1011]
                require ext_code.size(address(_828))
                staticcall address(_828).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1025 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1027 = mem[_1025]
                require mem[_1025] == mem[_1025 + 12 len 20]
                _1037 = mem[64]
                _1039 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_1039] = 0
                mem[_1039 + 32] = 0
                mem[_1039 + 64] = 0
                mem[_1037 + 164] = arg1
                mem[_1037 + 196] = address(_828)
                require ext_code.size(address(_1027))
                staticcall address(_1027).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(_828)
                mem[_1037 + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[64] = _1037 + ceil32(return_data.size) + 256
                mem[_1037 + ceil32(return_data.size) + 160] = arg1
                mem[_1037 + ceil32(return_data.size) + 192] = address(_828)
                mem[_1037 + ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if 0 >= mem[_1037]:
                    revert with 'NH{q', 50
                mem[_1037 + 32] = _1037 + ceil32(return_data.size) + 160
                if positionSpender.length > test266151307():
                    revert with 'NH{q', 65
                mem[_1037 + ceil32(return_data.size) + 256] = positionSpender.length
                mem[64] = _1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                if not positionSpender.length:
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_828))
                        staticcall address(_828).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1217 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1226 = mem[_1217]
                        require mem[_1217] == mem[_1217]
                        _1242 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1242] = arg1
                        mem[_1242 + 32] = address(positionSpender[s])
                        mem[_1242 + 64] = _1226
                        if s >= mem[_1037 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1037 + ceil32(return_data.size) + 288] = _1242
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1164 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1164] = address(_855)
                    mem[_1164 + 32] = _994
                    mem[_1164 + 64] = _1013
                    mem[_1164 + 96] = _1037
                    _1165 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1165] = address(_828)
                    mem[_1165 + 32] = _905
                    mem[_1165 + 64] = _949
                    mem[_1165 + 96] = _1164
                    mem[_1165 + 128] = _1037 + ceil32(return_data.size) + 256
                    if idx >= mem[_479]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _479 + 32] = _1165
                else:
                    mem[64] = _1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 384
                    mem[_1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                    mem[_1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                    mem[_1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                    mem[var221001] = _1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                    t = var221001
                    s = var221002
                    while s - 1:
                        mem[64] = mem[64] + 96
                        mem[_1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                        mem[_1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                        mem[_1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                        mem[t + 32] = _1037 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                        t = t + 32
                        s = s - 1
                        continue 
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_828))
                        staticcall address(_828).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1651 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1656 = mem[_1651]
                        require mem[_1651] == mem[_1651]
                        _1663 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1663] = arg1
                        mem[_1663 + 32] = address(positionSpender[s])
                        mem[_1663 + 64] = _1656
                        if s >= mem[_1037 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1037 + ceil32(return_data.size) + 288] = _1663
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1614 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1614] = address(_855)
                    mem[_1614 + 32] = _994
                    mem[_1614 + 64] = _1013
                    mem[_1614 + 96] = _1037
                    _1615 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1615] = address(_828)
                    mem[_1615 + 32] = _905
                    mem[_1615 + 64] = _949
                    mem[_1615 + 96] = _1614
                    mem[_1615 + 128] = _1037 + ceil32(return_data.size) + 256
                    if idx >= mem[_479]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _479 + 32] = _1615
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _827 = mem[64]
            mem[mem[64]] = 32
            _834 = mem[_479]
            mem[mem[64] + 32] = mem[_479]
            idx = 0
            s = _479 + 32
            t = mem[64] + (32 * _834) + 64
            u = mem[64] + 64
            while idx < _834:
                mem[u] = t + -_827 - 64
                _1157 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1157 + 32]
                mem[t + 64] = mem[_1157 + 64]
                _1211 = mem[_1157 + 96]
                mem[t + 96] = 160
                mem[t + 160] = mem[_1211 + 12 len 20]
                mem[t + 192] = mem[_1211 + 32]
                mem[t + 224] = mem[_1211 + 64]
                _1247 = mem[_1211 + 96]
                mem[t + 256] = 128
                _1254 = mem[_1247]
                mem[t + 288] = mem[_1247]
                v = 0
                w = _1247 + 32
                x = t + 320
                while v < _1254:
                    _1405 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1405 + 44 len 20]
                    mem[x + 64] = mem[_1405 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                _1408 = mem[_1157 + 128]
                mem[t + 128] = (96 * _1254) + 320
                _1413 = mem[_1408]
                mem[t + (96 * _1254) + 320] = mem[_1408]
                v = 0
                w = _1408 + 32
                x = t + (96 * _1254) + 352
                while v < _1413:
                    _1606 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1606 + 44 len 20]
                    mem[x + 64] = mem[_1606 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _1254) + (96 * _1413) + 352
                u = u + 32
                continue 
        else:
            mem[_479 + (32 * _477) + 32] = 0
            mem[_479 + (32 * _477) + 64] = 0
            mem[_479 + (32 * _477) + 96] = 0
            mem[64] = _479 + (32 * _477) + 320
            mem[_479 + (32 * _477) + 192] = 0
            mem[_479 + (32 * _477) + 224] = 0
            mem[_479 + (32 * _477) + 256] = 0
            mem[_479 + (32 * _477) + 288] = 96
            mem[_479 + (32 * _477) + 128] = _479 + (32 * _477) + 192
            mem[_479 + (32 * _477) + 160] = 96
            mem[var61002] = _479 + (32 * _477) + 32
            s = _479 + (32 * _477) + 128
            s = _479 + (32 * _477) + 32
            s = var61002
            idx = var61003
            while idx - 1:
                _1411 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1411] = 0
                mem[_1411 + 32] = 0
                mem[_1411 + 64] = 0
                mem[64] = mem[64] + 128
                mem[_479 + (32 * _477) + 192] = 0
                mem[_479 + (32 * _477) + 224] = 0
                mem[_479 + (32 * _477) + 256] = 0
                mem[_479 + (32 * _477) + 288] = 96
                mem[_1411 + 96] = _479 + (32 * _477) + 192
                mem[_1411 + 128] = 96
                mem[s + 32] = _1411
                s = _1411 + 96
                s = _1411
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < _477:
                if idx >= mem[_146]:
                    revert with 'NH{q', 50
                _1619 = mem[(32 * idx) + _146 + 32]
                _1625 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1625] = 0
                mem[_1625 + 32] = 0
                mem[_1625 + 64] = 0
                _1629 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1629] = 0
                mem[_1629 + 32] = 0
                mem[_1629 + 64] = 0
                mem[_1629 + 96] = 96
                mem[_1625 + 96] = _1629
                mem[_1625 + 128] = 96
                require ext_code.size(address(_1619))
                staticcall address(_1619).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1637 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1641 = mem[_1637]
                require mem[_1637] == mem[_1637 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1619))
                staticcall address(_1619).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1671 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1673 = mem[_1671]
                require mem[_1671] == mem[_1671]
                mem[mem[64] + 4] = address(_1641)
                mem[mem[64] + 36] = _1673
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1641), _1673
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1693 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1697 = mem[_1693]
                require mem[_1693] == mem[_1693]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1641))
                staticcall address(_1641).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1713 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1717 = mem[_1713]
                require mem[_1713] == mem[_1713]
                mem[mem[64] + 4] = address(_1641)
                mem[mem[64] + 36] = _1717
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getNormalizedValueUsdc(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_1641), _1717
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1725 = mem[_1723]
                require mem[_1723] == mem[_1723]
                require ext_code.size(address(_1619))
                staticcall address(_1619).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1733 = mem[_1731]
                require mem[_1731] == mem[_1731 + 12 len 20]
                _1735 = mem[64]
                _1737 = mem[64] + 64
                mem[64] = mem[64] + 160
                mem[_1737] = 0
                mem[_1737 + 32] = 0
                mem[_1737 + 64] = 0
                mem[_1735 + 164] = arg1
                mem[_1735 + 196] = address(_1619)
                require ext_code.size(address(_1733))
                staticcall address(_1733).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(_1619)
                mem[_1735 + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[64] = _1735 + ceil32(return_data.size) + 256
                mem[_1735 + ceil32(return_data.size) + 160] = arg1
                mem[_1735 + ceil32(return_data.size) + 192] = address(_1619)
                mem[_1735 + ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if 0 >= mem[_1735]:
                    revert with 'NH{q', 50
                mem[_1735 + 32] = _1735 + ceil32(return_data.size) + 160
                if positionSpender.length > test266151307():
                    revert with 'NH{q', 65
                mem[_1735 + ceil32(return_data.size) + 256] = positionSpender.length
                mem[64] = _1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                if not positionSpender.length:
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_1619))
                        staticcall address(_1619).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1833 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1836 = mem[_1833]
                        require mem[_1833] == mem[_1833]
                        _1848 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1848] = arg1
                        mem[_1848 + 32] = address(positionSpender[s])
                        mem[_1848 + 64] = _1836
                        if s >= mem[_1735 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1735 + ceil32(return_data.size) + 288] = _1848
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1802 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1802] = address(_1641)
                    mem[_1802 + 32] = _1717
                    mem[_1802 + 64] = _1725
                    mem[_1802 + 96] = _1735
                    _1803 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1803] = address(_1619)
                    mem[_1803 + 32] = _1673
                    mem[_1803 + 64] = _1697
                    mem[_1803 + 96] = _1802
                    mem[_1803 + 128] = _1735 + ceil32(return_data.size) + 256
                    if idx >= mem[_479]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _479 + 32] = _1803
                else:
                    mem[64] = _1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 384
                    mem[_1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                    mem[_1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                    mem[_1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                    mem[var231001] = _1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                    t = var231001
                    s = var231002
                    while s - 1:
                        mem[64] = mem[64] + 96
                        mem[_1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 288] = 0
                        mem[_1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 320] = 0
                        mem[_1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 352] = 0
                        mem[t + 32] = _1735 + ceil32(return_data.size) + (32 * positionSpender.length) + 288
                        t = t + 32
                        s = s - 1
                        continue 
                    s = 0
                    while s < positionSpender.length:
                        mem[0] = 3
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = address(positionSpender[s])
                        require ext_code.size(address(_1619))
                        staticcall address(_1619).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(positionSpender[s])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1943 = mem[_1941]
                        require mem[_1941] == mem[_1941]
                        _1946 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1946] = arg1
                        mem[_1946 + 32] = address(positionSpender[s])
                        mem[_1946 + 64] = _1943
                        if s >= mem[_1735 + ceil32(return_data.size) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _1735 + ceil32(return_data.size) + 288] = _1946
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    _1926 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1926] = address(_1641)
                    mem[_1926 + 32] = _1717
                    mem[_1926 + 64] = _1725
                    mem[_1926 + 96] = _1735
                    _1927 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1927] = address(_1619)
                    mem[_1927 + 32] = _1673
                    mem[_1927 + 64] = _1697
                    mem[_1927 + 96] = _1926
                    mem[_1927 + 128] = _1735 + ceil32(return_data.size) + 256
                    if idx >= mem[_479]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _479 + 32] = _1927
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1618 = mem[64]
            mem[mem[64]] = 32
            _1628 = mem[_479]
            mem[mem[64] + 32] = mem[_479]
            idx = 0
            s = _479 + 32
            t = mem[64] + (32 * _1628) + 64
            u = mem[64] + 64
            while idx < _1628:
                mem[u] = t + -_1618 - 64
                _1796 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1796 + 32]
                mem[t + 64] = mem[_1796 + 64]
                _1829 = mem[_1796 + 96]
                mem[t + 96] = 160
                mem[t + 160] = mem[_1829 + 12 len 20]
                mem[t + 192] = mem[_1829 + 32]
                mem[t + 224] = mem[_1829 + 64]
                _1851 = mem[_1829 + 96]
                mem[t + 256] = 128
                _1857 = mem[_1851]
                mem[t + 288] = mem[_1851]
                v = 0
                w = _1851 + 32
                x = t + 320
                while v < _1857:
                    _1881 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1881 + 44 len 20]
                    mem[x + 64] = mem[_1881 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                _1884 = mem[_1796 + 128]
                mem[t + 128] = (96 * _1857) + 320
                _1887 = mem[_1884]
                mem[t + (96 * _1857) + 320] = mem[_1884]
                v = 0
                w = _1884 + 32
                x = t + (96 * _1857) + 352
                while v < _1887:
                    _1921 = mem[w]
                    mem[x] = mem[mem[w] + 12 len 20]
                    mem[x + 32] = mem[_1921 + 44 len 20]
                    mem[x + 64] = mem[_1921 + 64]
                    v = v + 1
                    w = w + 32
                    x = x + 96
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (96 * _1857) + (96 * _1887) + 352
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
