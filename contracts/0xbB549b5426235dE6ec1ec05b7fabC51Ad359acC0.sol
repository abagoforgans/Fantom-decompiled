contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function accountBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function sub_106284e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x2f703498 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return (ext_call.return_data[12 len 20] == address(ext_call.return_data[0]))
}

function sub_9eb4740b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xeeb269fe with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getCompBalanceMetadata(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 292] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getCurrentVotes(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    mem[(2 * ceil32(return_data.size)) + 292] = arg2
    require ext_code.size(arg1)
    staticcall arg1.delegates(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[256] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[20 len 12]
    mem[(4 * ceil32(return_data.size)) + 352] = mem[268 len 20]
    return ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 320 len 64]
}

function cTokenUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getOracleForAsset(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return address(arg1), ext_call.return_data[0]
}

function cTokenBalances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x2f703498 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
        return arg1 << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               eth.balance(arg2),
               eth.balance(arg2)
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return arg1 << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getCompBalanceMetadataExt(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.hasRainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(arg2)
        staticcall arg2.rainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).claimComp(address arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.hasRainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            revert with 0, '', 0
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, '', 0
        return ext_call.return_data[0], 0, 0, 0
    require ext_code.size(arg2)
    staticcall arg2.rainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).compAccrued(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, '', 0
    if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
        revert with 0, '', 0
    return ext_call.return_data[0], 0, 0, ext_call.return_data[0]
}

function getCompVotes(address arg1, address arg2, uint32[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[64] = (32 * arg3.length) + 128
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            _27 = mem[64]
            mem[64] = mem[64] + 64
            require cd[((32 * idx) + arg3 + 36)] == uint32(cd[((32 * idx) + arg3 + 36)])
            mem[_27] = uint32(cd[((32 * idx) + arg3 + 36)])
            require idx < arg3.length
            require cd[((32 * idx) + arg3 + 36)] == uint32(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = uint32(cd[((32 * idx) + arg3 + 36)])
            require ext_code.size(arg1)
            staticcall arg1.getPriorVotes(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg2), uint32(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_45] == mem[_45 + 20 len 12]
            mem[_27 + 32] = mem[_45 + 20 len 12]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _27
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _53 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_53 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _29 + (64 * _30) + -mem[64] + 64
    mem[64] = (32 * arg3.length) + 192
    mem[(32 * arg3.length) + 128] = 0
    mem[(32 * arg3.length) + 160] = 0
    mem[var36001] = (32 * arg3.length) + 128
    s = var36001
    idx = var36002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg3.length) + 128] = 0
        mem[(32 * arg3.length) + 160] = 0
        mem[s + 32] = (32 * arg3.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg3.length:
        _69 = mem[64]
        mem[64] = mem[64] + 64
        require cd[((32 * idx) + arg3 + 36)] == uint32(cd[((32 * idx) + arg3 + 36)])
        mem[_69] = uint32(cd[((32 * idx) + arg3 + 36)])
        require idx < arg3.length
        require cd[((32 * idx) + arg3 + 36)] == uint32(cd[((32 * idx) + arg3 + 36)])
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = uint32(cd[((32 * idx) + arg3 + 36)])
        require ext_code.size(arg1)
        staticcall arg1.getPriorVotes(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), uint32(cd[((32 * idx) + arg3 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_78] == mem[_78 + 20 len 12]
        mem[_69 + 32] = mem[_78 + 20 len 12]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _69
        idx = idx + 1
        continue 
    _70 = mem[64]
    mem[mem[64]] = 32
    _71 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _71:
        _81 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_81 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _70 + (64 * _71) + -mem[64] + 64
}

function getAccountLimits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg2
    mem[256 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require 0 == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidityByLiquidationFactor(address arg1) with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(return_data.size) + 256 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require 0 == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 416] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 420] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    _17 = mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64
    require mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64 + 447 < (2 * ceil32(return_data.size)) + return_data.size + 416
    _18 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64 + 416]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64 + 416] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64 + 416]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64 + 416]) + 448 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], address(arg2) << 64 + 416]) + 448
    mem[(4 * ceil32(return_data.size)) + 416] = _18
    require _17 + (32 * _18) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _17 + 448
    t = (4 * ceil32(return_data.size)) + 448
    while idx < _18:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 256] = (4 * ceil32(return_data.size)) + 416
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[32]
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[32]
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[64]
    _31 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 160
    mem[mem[64] + 192] = _18
    idx = 0
    s = (4 * ceil32(return_data.size)) + 448
    t = mem[64] + 224
    while idx < _18:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_31 + 64] = mem[(2 * ceil32(return_data.size)) + 288]
    mem[_31 + 96] = mem[(2 * ceil32(return_data.size)) + 320]
    mem[_31 + 128] = mem[(2 * ceil32(return_data.size)) + 352]
    mem[_31 + 160] = mem[(2 * ceil32(return_data.size)) + 384]
    return memory
      from mem[64]
       len _31 + (32 * _18) + -mem[64] + 224
}

function sub_a9a7e80f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAllMarkets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[256]
    require mem[256] <= test266151307()
    require mem[256] + 287 < return_data.size + 256
    _6 = mem[mem[256] + 256]
    require mem[mem[256] + 256] <= test266151307()
    require (32 * mem[mem[256] + 256]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[256] + 256]) + 288 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[256] + 256]) + 288
    mem[ceil32(return_data.size) + 256] = mem[mem[256] + 256]
    require _5 + (32 * _6) + 32 <= return_data.size
    idx = 0
    s = _5 + 288
    t = ceil32(return_data.size) + 288
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < _6:
        require idx < mem[ceil32(return_data.size) + 256]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 300 len 20])
        call mem[(32 * idx) + ceil32(return_data.size) + 300 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _92 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_92] == mem[_92]
        if mem[_92]:
            revert with 0, 'Accrue interest failed'
        idx = idx + 1
        continue 
    _90 = mem[64]
    mem[64] = mem[64] + 160
    mem[_90] = 96
    mem[_90 + 32] = 0
    mem[_90 + 64] = 0
    mem[_90 + 96] = 0
    mem[_90 + 128] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_95] == mem[_95]
    _99 = mem[_95 + 32]
    require mem[_95 + 32] == mem[_95 + 32]
    _100 = mem[_95 + 64]
    require mem[_95 + 64] == mem[_95 + 64]
    require 0 == mem[_95]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAccountLiquidityByLiquidationFactor(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_103] == mem[_103]
    _105 = mem[_103 + 32]
    require mem[_103 + 32] == mem[_103 + 32]
    _106 = mem[_103 + 64]
    require mem[_103 + 64] == mem[_103 + 64]
    require 0 == mem[_103]
    _107 = mem[64]
    mem[64] = mem[64] + 160
    mem[_107 + 160] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[_107 + 164] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1) with:
         funct ext_call.return_data[0 len 4]
            gas gas_remaining wei
           args mem[mem[64] + 4 len _107 + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] <= test266151307()
    require _109 + mem[_109] + 31 < _109 + return_data.size
    _111 = mem[_109 + mem[_109]]
    require mem[_109 + mem[_109]] <= test266151307()
    require (32 * mem[_109 + mem[_109]]) + 32 >= 0 and _109 + ceil32(return_data.size) + (32 * mem[_109 + mem[_109]]) + 32 <= test266151307()
    mem[64] = _109 + ceil32(return_data.size) + (32 * mem[_109 + mem[_109]]) + 32
    mem[_109 + ceil32(return_data.size)] = _111
    require _110 + (32 * _111) + 32 <= return_data.size
    idx = 0
    s = _109 + _110 + 32
    t = _109 + ceil32(return_data.size) + 32
    while idx < _111:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_107] = _109 + ceil32(return_data.size)
    mem[_107 + 32] = _99
    mem[_107 + 64] = _100
    mem[_107 + 96] = _105
    mem[_107 + 128] = _106
    _124 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 160
    mem[mem[64] + 192] = _111
    idx = 0
    s = _109 + ceil32(return_data.size) + 32
    t = mem[64] + 224
    while idx < _111:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_124 + 64] = mem[_107 + 32]
    mem[_124 + 96] = mem[_107 + 64]
    mem[_124 + 128] = mem[_107 + 96]
    mem[_124 + 160] = mem[_107 + 128]
    return memory
      from mem[64]
       len _124 + (32 * _111) + -mem[64] + 224
}

function getGovReceipts(address arg1, address arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg3.length) + 128] = arg3.length
    mem[64] = (64 * arg3.length) + 160
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            _109 = mem[64]
            mem[64] = mem[64] + 96
            mem[_109] = 0
            mem[_109 + 32] = 0
            mem[_109 + 64] = 0
            require idx < mem[96]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.getReceipt(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _132 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            require mem[_125] == bool(mem[_125])
            mem[_132] = mem[_125]
            require mem[_125 + 32] == bool(mem[_125 + 32])
            mem[_132 + 32] = mem[_125 + 32]
            require mem[_125 + 64] == mem[_125 + 84 len 12]
            mem[_132 + 64] = mem[_125 + 64]
            _145 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[96]
            mem[_145] = mem[(32 * idx) + 128]
            mem[_145 + 32] = bool(mem[_132])
            mem[_145 + 64] = bool(mem[_132 + 32])
            mem[_145 + 96] = mem[_132 + 84 len 12]
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = _145
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 32
        _114 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
        idx = 0
        s = (32 * arg3.length) + 160
        t = mem[64] + 64
        while idx < _114:
            _160 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = bool(mem[_160 + 32])
            mem[t + 64] = bool(mem[_160 + 64])
            mem[t + 96] = mem[_160 + 116 len 12]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _110 + (128 * _114) + -mem[64] + 64
    mem[64] = (64 * arg3.length) + 288
    mem[(64 * arg3.length) + 160] = 0
    mem[(64 * arg3.length) + 192] = 0
    mem[(64 * arg3.length) + 224] = 0
    mem[(64 * arg3.length) + 256] = 0
    mem[var44001] = (64 * arg3.length) + 160
    s = var44001
    idx = var44002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(64 * arg3.length) + 160] = 0
        mem[(64 * arg3.length) + 192] = 0
        mem[(64 * arg3.length) + 224] = 0
        mem[(64 * arg3.length) + 256] = 0
        mem[s + 32] = (64 * arg3.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg3.length:
        _191 = mem[64]
        mem[64] = mem[64] + 96
        mem[_191] = 0
        mem[_191 + 32] = 0
        mem[_191 + 64] = 0
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        staticcall arg1.getReceipt(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(arg2)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _204 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require mem[_201] == bool(mem[_201])
        mem[_204] = mem[_201]
        require mem[_201 + 32] == bool(mem[_201 + 32])
        mem[_204 + 32] = mem[_201 + 32]
        require mem[_201 + 64] == mem[_201 + 84 len 12]
        mem[_204 + 64] = mem[_201 + 64]
        _209 = mem[64]
        mem[64] = mem[64] + 128
        require idx < mem[96]
        mem[_209] = mem[(32 * idx) + 128]
        mem[_209 + 32] = bool(mem[_204])
        mem[_209 + 64] = bool(mem[_204 + 32])
        mem[_209 + 96] = mem[_204 + 84 len 12]
        require idx < mem[(32 * arg3.length) + 128]
        mem[(32 * idx) + (32 * arg3.length) + 160] = _209
        idx = idx + 1
        continue 
    _192 = mem[64]
    mem[mem[64]] = 32
    _196 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
    idx = 0
    s = (32 * arg3.length) + 160
    t = mem[64] + 64
    while idx < _196:
        _216 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = bool(mem[_216 + 32])
        mem[t + 64] = bool(mem[_216 + 64])
        mem[t + 96] = mem[_216 + 116 len 12]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _192 + (128 * _196) + -mem[64] + 64
}

function cTokenUnderlyingPriceAll(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 0
            mem[_69 + 32] = 0
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_76] == mem[_76 + 12 len 20]
            require ext_code.size(mem[_76 + 12 len 20])
            staticcall mem[_76 + 12 len 20].getRegistry() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _87 = mem[_86]
            require mem[_86] == mem[_86 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_94]
            require mem[_94] == mem[_94 + 12 len 20]
            mem[mem[64] + 4] = mem[_94 + 12 len 20]
            require ext_code.size(address(_87))
            staticcall address(_87).getOracleForAsset(address arg1) with:
                    gas gas_remaining wei
                   args address(_95)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _104 = mem[_103]
            require mem[_103] == mem[_103 + 12 len 20]
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(_104))
            staticcall address(_104).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_113] == mem[_113]
            mem[_108 + 32] = mem[_113]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _108
            idx = idx + 1
            continue 
        _62 = mem[64]
        mem[mem[64]] = 32
        _63 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _63:
            _121 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_121 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _62 + (64 * _63) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[var16001] = (32 * arg1.length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _159 = mem[64]
        mem[64] = mem[64] + 64
        mem[_159] = 0
        mem[_159 + 32] = 0
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] == mem[_163 + 12 len 20]
        require ext_code.size(mem[_163 + 12 len 20])
        staticcall mem[_163 + 12 len 20].getRegistry() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _168 = mem[_167]
        require mem[_167] == mem[_167 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _172 = mem[_171]
        require mem[_171] == mem[_171 + 12 len 20]
        mem[mem[64] + 4] = mem[_171 + 12 len 20]
        require ext_code.size(address(_168))
        staticcall address(_168).getOracleForAsset(address arg1) with:
                gas gas_remaining wei
               args address(_172)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _176 = mem[_175]
        require mem[_175] == mem[_175 + 12 len 20]
        _177 = mem[64]
        mem[64] = mem[64] + 64
        mem[_177] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
        require ext_code.size(address(_176))
        staticcall address(_176).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_180] == mem[_180]
        mem[_177 + 32] = mem[_180]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _177
        idx = idx + 1
        continue 
    _154 = mem[64]
    mem[mem[64]] = 32
    _155 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _155:
        _183 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_183 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _154 + (64 * _155) + -mem[64] + 64
}

function sub_083667cf(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _146 = mem[(32 * idx) + 128]
            _148 = mem[64]
            mem[64] = mem[64] + 160
            mem[_148] = 96
            mem[_148 + 32] = 0
            mem[_148 + 64] = 0
            mem[_148 + 96] = 0
            mem[_148 + 128] = 0
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidity(address arg1) with:
                    gas gas_remaining wei
                   args address(_146)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_161] == mem[_161]
            _173 = mem[_161 + 32]
            require mem[_161 + 32] == mem[_161 + 32]
            _178 = mem[_161 + 64]
            require mem[_161 + 64] == mem[_161 + 64]
            require 0 == mem[_161]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidityByLiquidationFactor(address arg1) with:
                    gas gas_remaining wei
                   args address(_146)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_188] == mem[_188]
            _193 = mem[_188 + 32]
            require mem[_188 + 32] == mem[_188 + 32]
            _195 = mem[_188 + 64]
            require mem[_188 + 64] == mem[_188 + 64]
            require 0 == mem[_188]
            _197 = mem[64]
            mem[64] = mem[64] + 160
            mem[_197 + 160] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
            mem[_197 + 164] = address(_146)
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]) with:
                 funct ext_call.return_data[0 len 4]
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _197 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _200 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _201 = mem[_200]
            require mem[_200] <= test266151307()
            require _200 + mem[_200] + 31 < _200 + return_data.size
            _203 = mem[_200 + mem[_200]]
            require mem[_200 + mem[_200]] <= test266151307()
            require (32 * mem[_200 + mem[_200]]) + 32 >= 0 and _200 + ceil32(return_data.size) + (32 * mem[_200 + mem[_200]]) + 32 <= test266151307()
            mem[64] = _200 + ceil32(return_data.size) + (32 * mem[_200 + mem[_200]]) + 32
            mem[_200 + ceil32(return_data.size)] = _203
            require _201 + (32 * _203) + 32 <= return_data.size
            s = 0
            t = _200 + _201 + 32
            u = _200 + ceil32(return_data.size) + 32
            while s < _203:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_197] = _200 + ceil32(return_data.size)
            mem[_197 + 32] = _173
            mem[_197 + 64] = _178
            mem[_197 + 96] = _193
            mem[_197 + 128] = _195
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _197
            idx = idx + 1
            continue 
        _147 = mem[64]
        mem[mem[64]] = 32
        _150 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + (32 * _150) + 64
        u = mem[64] + 64
        while idx < _150:
            mem[u] = t + -_147 - 64
            _214 = mem[s]
            _217 = mem[mem[s]]
            mem[t] = 160
            _219 = mem[_217]
            mem[t + 160] = mem[_217]
            v = 0
            w = _217 + 32
            x = t + 192
            while v < _219:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_214 + 32]
            mem[t + 64] = mem[_214 + 64]
            mem[t + 96] = mem[_214 + 96]
            mem[t + 128] = mem[_214 + 128]
            idx = idx + 1
            s = s + 32
            t = t + (32 * _219) + 192
            u = u + 32
            continue 
    else:
        mem[64] = (64 * ('cd', 36).length) + 320
        mem[(64 * ('cd', 36).length) + 160] = 96
        mem[(64 * ('cd', 36).length) + 192] = 0
        mem[(64 * ('cd', 36).length) + 224] = 0
        mem[(64 * ('cd', 36).length) + 256] = 0
        mem[(64 * ('cd', 36).length) + 288] = 0
        mem[var35001] = (64 * ('cd', 36).length) + 160
        s = var35001
        idx = var35002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(64 * ('cd', 36).length) + 160] = 96
            mem[(64 * ('cd', 36).length) + 192] = 0
            mem[(64 * ('cd', 36).length) + 224] = 0
            mem[(64 * ('cd', 36).length) + 256] = 0
            mem[(64 * ('cd', 36).length) + 288] = 0
            mem[s + 32] = (64 * ('cd', 36).length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _262 = mem[(32 * idx) + 128]
            _264 = mem[64]
            mem[64] = mem[64] + 160
            mem[_264] = 96
            mem[_264 + 32] = 0
            mem[_264 + 64] = 0
            mem[_264 + 96] = 0
            mem[_264 + 128] = 0
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidity(address arg1) with:
                    gas gas_remaining wei
                   args address(_262)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_274] == mem[_274]
            _279 = mem[_274 + 32]
            require mem[_274 + 32] == mem[_274 + 32]
            _281 = mem[_274 + 64]
            require mem[_274 + 64] == mem[_274 + 64]
            require 0 == mem[_274]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidityByLiquidationFactor(address arg1) with:
                    gas gas_remaining wei
                   args address(_262)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_286] == mem[_286]
            _288 = mem[_286 + 32]
            require mem[_286 + 32] == mem[_286 + 32]
            _289 = mem[_286 + 64]
            require mem[_286 + 64] == mem[_286 + 64]
            require 0 == mem[_286]
            _290 = mem[64]
            mem[64] = mem[64] + 160
            mem[_290 + 160] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
            mem[_290 + 164] = address(_262)
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]) with:
                 funct ext_call.return_data[0 len 4]
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _290 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _293 = mem[_292]
            require mem[_292] <= test266151307()
            require _292 + mem[_292] + 31 < _292 + return_data.size
            _294 = mem[_292 + mem[_292]]
            require mem[_292 + mem[_292]] <= test266151307()
            require (32 * mem[_292 + mem[_292]]) + 32 >= 0 and _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32 <= test266151307()
            mem[64] = _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32
            mem[_292 + ceil32(return_data.size)] = _294
            require _293 + (32 * _294) + 32 <= return_data.size
            s = 0
            t = _292 + _293 + 32
            u = _292 + ceil32(return_data.size) + 32
            while s < _294:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_290] = _292 + ceil32(return_data.size)
            mem[_290 + 32] = _279
            mem[_290 + 64] = _281
            mem[_290 + 96] = _288
            mem[_290 + 128] = _289
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _290
            idx = idx + 1
            continue 
        _263 = mem[64]
        mem[mem[64]] = 32
        _267 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + (32 * _267) + 64
        u = mem[64] + 64
        while idx < _267:
            mem[u] = t + -_263 - 64
            _298 = mem[s]
            _301 = mem[mem[s]]
            mem[t] = 160
            _303 = mem[_301]
            mem[t + 160] = mem[_301]
            v = 0
            w = _301 + 32
            x = t + 192
            while v < _303:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_298 + 32]
            mem[t + 64] = mem[_298 + 64]
            mem[t + 96] = mem[_298 + 96]
            mem[t + 128] = mem[_298 + 128]
            idx = idx + 1
            s = s + 32
            t = t + (32 * _303) + 192
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function cTokenBalancesAll(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _96 = mem[64]
            mem[64] = mem[64] + 192
            mem[_96] = 0
            mem[_96 + 32] = 0
            mem[_96 + 64] = 0
            mem[_96 + 96] = 0
            mem[_96 + 128] = 0
            mem[_96 + 160] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _112 = mem[_110]
            require mem[_110] == mem[_110]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _123 = mem[_122]
            require mem[_122] == mem[_122]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _131 = mem[_130]
            require mem[_130] == mem[_130]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x2f703498 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _138 = mem[_137]
            require mem[_137] == mem[_137 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_145] == mem[_145 + 12 len 20]
            if mem[_145 + 12 len 20] == address(_138):
                _153 = mem[64]
                mem[64] = mem[64] + 192
                mem[_153] = address(cd[((32 * idx) + arg1 + 36)])
                mem[_153 + 32] = _112
                mem[_153 + 64] = _123
                mem[_153 + 96] = _131
                mem[_153 + 128] = eth.balance(arg2)
                mem[_153 + 160] = eth.balance(arg2)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _153
            else:
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _156 = mem[_154]
                require mem[_154] == mem[_154 + 12 len 20]
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(_156))
                staticcall address(_156).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _167 = mem[_166]
                require mem[_166] == mem[_166]
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(address(_156))
                staticcall address(_156).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _175 = mem[_174]
                require mem[_174] == mem[_174]
                _179 = mem[64]
                mem[64] = mem[64] + 192
                mem[_179] = address(cd[((32 * idx) + arg1 + 36)])
                mem[_179 + 32] = _112
                mem[_179 + 64] = _123
                mem[_179 + 96] = _131
                mem[_179 + 128] = _167
                mem[_179 + 160] = _175
                require idx < mem[96]
                mem[(32 * idx) + 128] = _179
            idx = idx + 1
            continue 
        _89 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _90:
            _184 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_184 + 32]
            mem[t + 64] = mem[_184 + 64]
            mem[t + 96] = mem[_184 + 96]
            mem[t + 128] = mem[_184 + 128]
            mem[t + 160] = mem[_184 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _89 + (192 * _90) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 288] = 0
    mem[var25001] = (32 * arg1.length) + 128
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[(32 * arg1.length) + 256] = 0
        mem[(32 * arg1.length) + 288] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _244 = mem[64]
        mem[64] = mem[64] + 192
        mem[_244] = 0
        mem[_244 + 32] = 0
        mem[_244 + 64] = 0
        mem[_244 + 96] = 0
        mem[_244 + 128] = 0
        mem[_244 + 160] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _252 = mem[_251]
        require mem[_251] == mem[_251]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _256 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _257 = mem[_256]
        require mem[_256] == mem[_256]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _260 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _261 = mem[_260]
        require mem[_260] == mem[_260]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x2f703498 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _265 = mem[_264]
        require mem[_264] == mem[_264 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _268 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_268] == mem[_268 + 12 len 20]
        if mem[_268 + 12 len 20] == address(_265):
            _272 = mem[64]
            mem[64] = mem[64] + 192
            mem[_272] = address(cd[((32 * idx) + arg1 + 36)])
            mem[_272 + 32] = _252
            mem[_272 + 64] = _257
            mem[_272 + 96] = _261
            mem[_272 + 128] = eth.balance(arg2)
            mem[_272 + 160] = eth.balance(arg2)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _272
        else:
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _275 = mem[_273]
            require mem[_273] == mem[_273 + 12 len 20]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_275))
            staticcall address(_275).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _279 = mem[_278]
            require mem[_278] == mem[_278]
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(_275))
            staticcall address(_275).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _283 = mem[_282]
            require mem[_282] == mem[_282]
            _284 = mem[64]
            mem[64] = mem[64] + 192
            mem[_284] = address(cd[((32 * idx) + arg1 + 36)])
            mem[_284 + 32] = _252
            mem[_284 + 64] = _257
            mem[_284 + 96] = _261
            mem[_284 + 128] = _279
            mem[_284 + 160] = _283
            require idx < mem[96]
            mem[(32 * idx) + 128] = _284
        idx = idx + 1
        continue 
    _239 = mem[64]
    mem[mem[64]] = 32
    _240 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _240:
        _286 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_286 + 32]
        mem[t + 64] = mem[_286 + 64]
        mem[t + 96] = mem[_286 + 96]
        mem[t + 128] = mem[_286 + 128]
        mem[t + 160] = mem[_286 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _239 + (192 * _240) + -mem[64] + 64
}

function getGovProposals(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            mem[mem[64]] = 0x328dd98200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(arg1)
            staticcall arg1.getActions(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _153 = mem[_150]
            require mem[_150] <= test266151307()
            require _150 + mem[_150] + 31 < _150 + return_data.size
            _157 = mem[_150 + mem[_150]]
            require mem[_150 + mem[_150]] <= test266151307()
            require (32 * mem[_150 + mem[_150]]) + 32 >= 0 and _150 + ceil32(return_data.size) + (32 * mem[_150 + mem[_150]]) + 32 <= test266151307()
            mem[64] = _150 + ceil32(return_data.size) + (32 * mem[_150 + mem[_150]]) + 32
            mem[_150 + ceil32(return_data.size)] = _157
            require _153 + (32 * _157) + 32 <= return_data.size
            s = 0
            t = _150 + _153 + 32
            u = _150 + ceil32(return_data.size) + 32
            while s < _157:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _286 = mem[_150 + 32]
            require mem[_150 + 32] <= test266151307()
            require _150 + mem[_150 + 32] + 31 < _150 + return_data.size
            _290 = mem[_150 + mem[_150 + 32]]
            require mem[_150 + mem[_150 + 32]] <= test266151307()
            _294 = mem[64]
            require mem[64] + (32 * mem[_150 + mem[_150 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_150 + mem[_150 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_150 + mem[_150 + 32]]) + 32
            mem[_294] = _290
            require _286 + (32 * _290) + 32 <= return_data.size
            s = 0
            t = _150 + _286 + 32
            u = _294 + 32
            while s < _290:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _419 = mem[_150 + 64]
            require mem[_150 + 64] <= test266151307()
            require _150 + mem[_150 + 64] + 31 < _150 + return_data.size
            _424 = mem[_150 + mem[_150 + 64]]
            require mem[_150 + mem[_150 + 64]] <= test266151307()
            _427 = mem[64]
            require mem[64] + (32 * mem[_150 + mem[_150 + 64]]) + 32 >= mem[64] and mem[64] + (32 * mem[_150 + mem[_150 + 64]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_150 + mem[_150 + 64]]) + 32
            mem[_427] = _424
            s = 0
            t = _150 + _419 + 32
            u = _427 + 32
            while s < _424:
                _539 = mem[t]
                require _150 + _419 + mem[t] + 63 < _150 + return_data.size
                _545 = mem[_150 + _419 + mem[t] + 32]
                require mem[_150 + _419 + mem[t] + 32] <= test266151307()
                _551 = mem[64]
                require mem[64] + ceil32(mem[_150 + _419 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_150 + _419 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_150 + _419 + mem[t] + 32]) + 32
                mem[_551] = _545
                require _419 + _539 + _545 + 64 <= return_data.size
                idx = 0
                while idx < _545:
                    mem[idx + _551 + 32] = mem[idx + _150 + _419 + _539 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_545) > _545:
                    mem[_545 + _551 + 32] = 0
                mem[u] = _551
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _542 = mem[_150 + 96]
            require mem[_150 + 96] <= test266151307()
            require _150 + mem[_150 + 96] + 31 < _150 + return_data.size
            _549 = mem[_150 + mem[_150 + 96]]
            require mem[_150 + mem[_150 + 96]] <= test266151307()
            _553 = mem[64]
            require mem[64] + (32 * mem[_150 + mem[_150 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_150 + mem[_150 + 96]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_150 + mem[_150 + 96]]) + 32
            mem[_553] = _549
            s = 0
            t = _150 + _542 + 32
            u = _553 + 32
            while s < _549:
                _645 = mem[t]
                require _150 + _542 + mem[t] + 63 < _150 + return_data.size
                _654 = mem[_150 + _542 + mem[t] + 32]
                require mem[_150 + _542 + mem[t] + 32] <= test266151307()
                _662 = mem[64]
                require mem[64] + ceil32(mem[_150 + _542 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_150 + _542 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_150 + _542 + mem[t] + 32]) + 32
                mem[_662] = _654
                require _542 + _645 + _654 + 64 <= return_data.size
                idx = 0
                while idx < _654:
                    mem[idx + _662 + 32] = mem[idx + _150 + _542 + _645 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_654) > _654:
                    mem[_654 + _662 + 32] = 0
                mem[u] = _662
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _652 = mem[64]
            mem[64] = mem[64] + 416
            mem[_652] = 0
            mem[_652 + 32] = 0
            mem[_652 + 64] = 0
            mem[_652 + 96] = _150 + ceil32(return_data.size)
            mem[_652 + 128] = _294
            mem[_652 + 160] = _427
            mem[_652 + 192] = _553
            mem[_652 + 224] = 0
            mem[_652 + 256] = 0
            mem[_652 + 288] = 0
            mem[_652 + 320] = 0
            mem[_652 + 352] = 0
            mem[_652 + 384] = 0
            require idx < mem[96]
            mem[(32 * idx) + 128] = _652
            require idx < mem[96]
            require idx < arg2.length
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_675] == mem[_675]
            _689 = mem[_675 + 32]
            require mem[_675 + 32] == mem[_675 + 44 len 20]
            _704 = mem[_675 + 64]
            require mem[_675 + 64] == mem[_675 + 64]
            _712 = mem[_675 + 96]
            require mem[_675 + 96] == mem[_675 + 96]
            _715 = mem[_675 + 128]
            require mem[_675 + 128] == mem[_675 + 128]
            _719 = mem[_675 + 160]
            require mem[_675 + 160] == mem[_675 + 160]
            _721 = mem[_675 + 192]
            require mem[_675 + 192] == mem[_675 + 192]
            _723 = mem[_675 + 224]
            require mem[_675 + 224] == bool(mem[_675 + 224])
            _725 = mem[_675 + 256]
            require mem[_675 + 256] == bool(mem[_675 + 256])
            mem[_652] = cd[((32 * idx) + arg2 + 36)]
            mem[_652 + 32] = address(_689)
            mem[_652 + 64] = _704
            mem[_652 + 224] = _712
            mem[_652 + 256] = _715
            mem[_652 + 288] = _719
            mem[_652 + 320] = _721
            mem[_652 + 352] = bool(_723)
            mem[_652 + 384] = bool(_725)
            idx = idx + 1
            continue 
        _144 = mem[64]
        mem[mem[64]] = 32
        _146 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _146:
            mem[u] = t + -_144 - 64
            _285 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_285 + 44 len 20]
            mem[t + 64] = mem[_285 + 64]
            _303 = mem[_285 + 96]
            mem[t + 96] = 416
            _307 = mem[_303]
            mem[t + 416] = mem[_303]
            v = 0
            w = _303 + 32
            x = t + 448
            while v < _307:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _418 = mem[_285 + 128]
            mem[t + 128] = (32 * _307) + 448
            _423 = mem[_418]
            mem[t + (32 * _307) + 448] = mem[_418]
            v = 0
            w = _418 + 32
            x = t + (32 * _307) + 480
            while v < _423:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _541 = mem[_285 + 160]
            mem[t + 160] = (32 * _307) + (32 * _423) + 480
            _548 = mem[_541]
            mem[t + (32 * _307) + (32 * _423) + 480] = mem[_541]
            v = 0
            w = _541 + 32
            x = t + (32 * _307) + (32 * _423) + (32 * _548) + 512
            y = t + (32 * _307) + (32 * _423) + 512
            while v < _548:
                mem[y] = x + -t + -(32 * _307) + -(32 * _423) - 512
                _644 = mem[w]
                _656 = mem[mem[w]]
                mem[x] = mem[mem[w]]
                idx = 0
                while idx < _656:
                    mem[idx + x + 32] = mem[idx + _644 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_656) > _656:
                    mem[_656 + x + 32] = 0
                v = v + 1
                w = w + 32
                x = x + ceil32(_656) + 32
                y = y + 32
                continue 
            _648 = mem[_285 + 192]
            mem[t + 192] = x - t
            _655 = mem[_648]
            mem[x] = mem[_648]
            v = 0
            w = _648 + 32
            y = x + (32 * _655) + 32
            z = x + 32
            while v < _655:
                mem[z] = y + -x - 32
                _730 = mem[w]
                _739 = mem[mem[w]]
                mem[y] = mem[mem[w]]
                idx = 0
                while idx < _739:
                    mem[idx + y + 32] = mem[idx + _730 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_739) > _739:
                    mem[_739 + y + 32] = 0
                v = v + 1
                w = w + 32
                y = y + ceil32(_739) + 32
                z = z + 32
                continue 
            mem[t + 224] = mem[_285 + 224]
            mem[t + 256] = mem[_285 + 256]
            mem[t + 288] = mem[_285 + 288]
            mem[t + 320] = mem[_285 + 320]
            mem[t + 352] = bool(mem[_285 + 352])
            mem[t + 384] = bool(mem[_285 + 384])
            idx = idx + 1
            s = s + 32
            t = y
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg2.length) + 544
        mem[(32 * arg2.length) + 128] = 0
        mem[(32 * arg2.length) + 160] = 0
        mem[(32 * arg2.length) + 192] = 0
        mem[(32 * arg2.length) + 224] = 96
        mem[(32 * arg2.length) + 256] = 96
        mem[(32 * arg2.length) + 288] = 96
        mem[(32 * arg2.length) + 320] = 96
        mem[(32 * arg2.length) + 352] = 0
        mem[(32 * arg2.length) + 384] = 0
        mem[(32 * arg2.length) + 416] = 0
        mem[(32 * arg2.length) + 448] = 0
        mem[(32 * arg2.length) + 480] = 0
        mem[(32 * arg2.length) + 512] = 0
        mem[var27001] = (32 * arg2.length) + 128
        s = var27001
        idx = var27002
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[(32 * arg2.length) + 128] = 0
            mem[(32 * arg2.length) + 160] = 0
            mem[(32 * arg2.length) + 192] = 0
            mem[(32 * arg2.length) + 224] = 96
            mem[(32 * arg2.length) + 256] = 96
            mem[(32 * arg2.length) + 288] = 96
            mem[(32 * arg2.length) + 320] = 96
            mem[(32 * arg2.length) + 352] = 0
            mem[(32 * arg2.length) + 384] = 0
            mem[(32 * arg2.length) + 416] = 0
            mem[(32 * arg2.length) + 448] = 0
            mem[(32 * arg2.length) + 480] = 0
            mem[(32 * arg2.length) + 512] = 0
            mem[s + 32] = (32 * arg2.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2.length:
            mem[mem[64]] = 0x328dd98200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(arg1)
            staticcall arg1.getActions(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _428 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _432 = mem[_428]
            require mem[_428] <= test266151307()
            require _428 + mem[_428] + 31 < _428 + return_data.size
            _439 = mem[_428 + mem[_428]]
            require mem[_428 + mem[_428]] <= test266151307()
            require (32 * mem[_428 + mem[_428]]) + 32 >= 0 and _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32 <= test266151307()
            mem[64] = _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32
            mem[_428 + ceil32(return_data.size)] = _439
            require _432 + (32 * _439) + 32 <= return_data.size
            s = 0
            t = _428 + _432 + 32
            u = _428 + ceil32(return_data.size) + 32
            while s < _439:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _543 = mem[_428 + 32]
            require mem[_428 + 32] <= test266151307()
            require _428 + mem[_428 + 32] + 31 < _428 + return_data.size
            _550 = mem[_428 + mem[_428 + 32]]
            require mem[_428 + mem[_428 + 32]] <= test266151307()
            _554 = mem[64]
            require mem[64] + (32 * mem[_428 + mem[_428 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_428 + mem[_428 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_428 + mem[_428 + 32]]) + 32
            mem[_554] = _550
            require _543 + (32 * _550) + 32 <= return_data.size
            s = 0
            t = _428 + _543 + 32
            u = _554 + 32
            while s < _550:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _650 = mem[_428 + 64]
            require mem[_428 + 64] <= test266151307()
            require _428 + mem[_428 + 64] + 31 < _428 + return_data.size
            _660 = mem[_428 + mem[_428 + 64]]
            require mem[_428 + mem[_428 + 64]] <= test266151307()
            _663 = mem[64]
            require mem[64] + (32 * mem[_428 + mem[_428 + 64]]) + 32 >= mem[64] and mem[64] + (32 * mem[_428 + mem[_428 + 64]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_428 + mem[_428 + 64]]) + 32
            mem[_663] = _660
            s = 0
            t = _428 + _650 + 32
            u = _663 + 32
            while s < _660:
                _734 = mem[t]
                require _428 + _650 + mem[t] + 63 < _428 + return_data.size
                _738 = mem[_428 + _650 + mem[t] + 32]
                require mem[_428 + _650 + mem[t] + 32] <= test266151307()
                _743 = mem[64]
                require mem[64] + ceil32(mem[_428 + _650 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_428 + _650 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_428 + _650 + mem[t] + 32]) + 32
                mem[_743] = _738
                require _650 + _734 + _738 + 64 <= return_data.size
                idx = 0
                while idx < _738:
                    mem[idx + _743 + 32] = mem[idx + _428 + _650 + _734 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_738) > _738:
                    mem[_738 + _743 + 32] = 0
                mem[u] = _743
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _737 = mem[_428 + 96]
            require mem[_428 + 96] <= test266151307()
            require _428 + mem[_428 + 96] + 31 < _428 + return_data.size
            _741 = mem[_428 + mem[_428 + 96]]
            require mem[_428 + mem[_428 + 96]] <= test266151307()
            _744 = mem[64]
            require mem[64] + (32 * mem[_428 + mem[_428 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_428 + mem[_428 + 96]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_428 + mem[_428 + 96]]) + 32
            mem[_744] = _741
            s = 0
            t = _428 + _737 + 32
            u = _744 + 32
            while s < _741:
                _787 = mem[t]
                require _428 + _737 + mem[t] + 63 < _428 + return_data.size
                _792 = mem[_428 + _737 + mem[t] + 32]
                require mem[_428 + _737 + mem[t] + 32] <= test266151307()
                _798 = mem[64]
                require mem[64] + ceil32(mem[_428 + _737 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_428 + _737 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_428 + _737 + mem[t] + 32]) + 32
                mem[_798] = _792
                require _737 + _787 + _792 + 64 <= return_data.size
                idx = 0
                while idx < _792:
                    mem[idx + _798 + 32] = mem[idx + _428 + _737 + _787 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_792) > _792:
                    mem[_792 + _798 + 32] = 0
                mem[u] = _798
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _790 = mem[64]
            mem[64] = mem[64] + 416
            mem[_790] = 0
            mem[_790 + 32] = 0
            mem[_790 + 64] = 0
            mem[_790 + 96] = _428 + ceil32(return_data.size)
            mem[_790 + 128] = _554
            mem[_790 + 160] = _663
            mem[_790 + 192] = _744
            mem[_790 + 224] = 0
            mem[_790 + 256] = 0
            mem[_790 + 288] = 0
            mem[_790 + 320] = 0
            mem[_790 + 352] = 0
            mem[_790 + 384] = 0
            require idx < mem[96]
            mem[(32 * idx) + 128] = _790
            require idx < mem[96]
            require idx < arg2.length
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_805] == mem[_805]
            _811 = mem[_805 + 32]
            require mem[_805 + 32] == mem[_805 + 44 len 20]
            _814 = mem[_805 + 64]
            require mem[_805 + 64] == mem[_805 + 64]
            _815 = mem[_805 + 96]
            require mem[_805 + 96] == mem[_805 + 96]
            _816 = mem[_805 + 128]
            require mem[_805 + 128] == mem[_805 + 128]
            _817 = mem[_805 + 160]
            require mem[_805 + 160] == mem[_805 + 160]
            _818 = mem[_805 + 192]
            require mem[_805 + 192] == mem[_805 + 192]
            _819 = mem[_805 + 224]
            require mem[_805 + 224] == bool(mem[_805 + 224])
            _820 = mem[_805 + 256]
            require mem[_805 + 256] == bool(mem[_805 + 256])
            mem[_790] = cd[((32 * idx) + arg2 + 36)]
            mem[_790 + 32] = address(_811)
            mem[_790 + 64] = _814
            mem[_790 + 224] = _815
            mem[_790 + 256] = _816
            mem[_790 + 288] = _817
            mem[_790 + 320] = _818
            mem[_790 + 352] = bool(_819)
            mem[_790 + 384] = bool(_820)
            idx = idx + 1
            continue 
        _421 = mem[64]
        mem[mem[64]] = 32
        _425 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _425:
            mem[u] = t + -_421 - 64
            _540 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_540 + 44 len 20]
            mem[t + 64] = mem[_540 + 64]
            _569 = mem[_540 + 96]
            mem[t + 96] = 416
            _573 = mem[_569]
            mem[t + 416] = mem[_569]
            v = 0
            w = _569 + 32
            x = t + 448
            while v < _573:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _649 = mem[_540 + 128]
            mem[t + 128] = (32 * _573) + 448
            _658 = mem[_649]
            mem[t + (32 * _573) + 448] = mem[_649]
            v = 0
            w = _649 + 32
            x = t + (32 * _573) + 480
            while v < _658:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _736 = mem[_540 + 160]
            mem[t + 160] = (32 * _573) + (32 * _658) + 480
            _740 = mem[_736]
            mem[t + (32 * _573) + (32 * _658) + 480] = mem[_736]
            v = 0
            w = _736 + 32
            x = t + (32 * _573) + (32 * _658) + (32 * _740) + 512
            y = t + (32 * _573) + (32 * _658) + 512
            while v < _740:
                mem[y] = x + -t + -(32 * _573) + -(32 * _658) - 512
                _786 = mem[w]
                _794 = mem[mem[w]]
                mem[x] = mem[mem[w]]
                idx = 0
                while idx < _794:
                    mem[idx + x + 32] = mem[idx + _786 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_794) > _794:
                    mem[_794 + x + 32] = 0
                v = v + 1
                w = w + 32
                x = x + ceil32(_794) + 32
                y = y + 32
                continue 
            _789 = mem[_540 + 192]
            mem[t + 192] = x - t
            _793 = mem[_789]
            mem[x] = mem[_789]
            v = 0
            w = _789 + 32
            y = x + (32 * _793) + 32
            z = x + 32
            while v < _793:
                mem[z] = y + -x - 32
                _821 = mem[w]
                _825 = mem[mem[w]]
                mem[y] = mem[mem[w]]
                idx = 0
                while idx < _825:
                    mem[idx + y + 32] = mem[idx + _821 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_825) > _825:
                    mem[_825 + y + 32] = 0
                v = v + 1
                w = w + 32
                y = y + ceil32(_825) + 32
                z = z + 32
                continue 
            mem[t + 224] = mem[_540 + 224]
            mem[t + 256] = mem[_540 + 256]
            mem[t + 288] = mem[_540 + 288]
            mem[t + 320] = mem[_540 + 320]
            mem[t + 352] = bool(mem[_540 + 352])
            mem[t + 384] = bool(mem[_540 + 384])
            idx = idx + 1
            s = s + 32
            t = y
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function cTokenMetadata(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).markets(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x2f703498 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
        require ext_code.size(arg1)
        staticcall arg1.supplyRatePerBlock() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.borrowRatePerBlock() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.reserveFactorMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.totalBorrows() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.totalReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.getCash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        if not ext_call.return_data[0]:
            staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            if not ext_call.return_data[0]:
                staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return address(arg1), 
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           bool(ext_call.return_data[0]),
                           ext_call.return_data[32],
                           ext_call.return_data[64],
                           ext_call.return_data[96],
                           address(ext_call.return_data[0]),
                           ext_call.return_data[31 len 1],
                           18,
                           0,
                           0,
                           0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).rainMaker() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                return address(arg1), 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       bool(ext_call.return_data[0]),
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       address(ext_call.return_data[0]),
                       ext_call.return_data[31 len 1],
                       18,
                       0,
                       0,
                       ext_call.return_data[0]
            staticcall address(ext_call.return_data[0]).rainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).compSupplySpeeds(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return address(arg1), 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       bool(ext_call.return_data[0]),
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       address(ext_call.return_data[0]),
                       ext_call.return_data[31 len 1],
                       18,
                       0,
                       ext_call.return_data[0],
                       0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).rainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   address(ext_call.return_data[0]),
                   ext_call.return_data[31 len 1],
                   18,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        staticcall address(ext_call.return_data[0]).rainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).compSpeeds(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        if not ext_call.return_data[0]:
            staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return address(arg1), 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       bool(ext_call.return_data[0]),
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       address(ext_call.return_data[0]),
                       ext_call.return_data[31 len 1],
                       18,
                       ext_call.return_data[0],
                       0,
                       0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).rainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   address(ext_call.return_data[0]),
                   ext_call.return_data[31 len 1],
                   18,
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0]
        staticcall address(ext_call.return_data[0]).rainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).compSupplySpeeds(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   address(ext_call.return_data[0]),
                   ext_call.return_data[31 len 1],
                   18,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).rainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return address(arg1), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               bool(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               address(ext_call.return_data[0]),
               ext_call.return_data[31 len 1],
               18,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.supplyRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.borrowRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.reserveFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.totalBorrows() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.totalReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).hasRainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        if not ext_call.return_data[0]:
            staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return address(arg1), 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       bool(ext_call.return_data[0]),
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       address(ext_call.return_data[0]),
                       ext_call.return_data[31 len 1],
                       ext_call.return_data[0] << 248,
                       0,
                       0,
                       0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).rainMaker() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   address(ext_call.return_data[0]),
                   ext_call.return_data[31 len 1],
                   ext_call.return_data[0] << 248,
                   0,
                   0,
                   ext_call.return_data[0]
        staticcall address(ext_call.return_data[0]).rainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).compSupplySpeeds(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   address(ext_call.return_data[0]),
                   ext_call.return_data[31 len 1],
                   ext_call.return_data[0] << 248,
                   0,
                   ext_call.return_data[0],
                   0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).rainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return address(arg1), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               bool(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               address(ext_call.return_data[0]),
               ext_call.return_data[31 len 1],
               ext_call.return_data[0] << 248,
               0,
               ext_call.return_data[0],
               ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).rainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).compSpeeds(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).hasRainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).hasRainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   address(ext_call.return_data[0]),
                   ext_call.return_data[31 len 1],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   0,
                   0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).rainMaker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return address(arg1), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               bool(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               address(ext_call.return_data[0]),
               ext_call.return_data[31 len 1],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               0,
               ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).rainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).compSupplySpeeds(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).hasRainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return address(arg1), 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               bool(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               address(ext_call.return_data[0]),
               ext_call.return_data[31 len 1],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               ext_call.return_data[0],
               0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).rainMaker() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).compBorrowSpeeds(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return address(arg1), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           address(ext_call.return_data[0]),
           ext_call.return_data[31 len 1],
           ext_call.return_data[0] << 248,
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function cTokenMetadataAll(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _524 = mem[64]
            mem[64] = mem[64] + 608
            mem[_524] = 0
            mem[_524 + 32] = 0
            mem[_524 + 64] = 0
            mem[_524 + 96] = 0
            mem[_524 + 128] = 0
            mem[_524 + 160] = 0
            mem[_524 + 192] = 0
            mem[_524 + 224] = 0
            mem[_524 + 256] = 0
            mem[_524 + 288] = 0
            mem[_524 + 320] = 0
            mem[_524 + 352] = 0
            mem[_524 + 384] = 0
            mem[_524 + 416] = 0
            mem[_524 + 448] = 0
            mem[_524 + 480] = 0
            mem[_524 + 512] = 0
            mem[_524 + 544] = 0
            mem[_524 + 576] = 0
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).exchangeRateCurrent() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _534 = mem[_530]
            require mem[_530] == mem[_530]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _544 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _548 = mem[_544]
            require mem[_544] == mem[_544 + 12 len 20]
            require ext_code.size(mem[_544 + 12 len 20])
            staticcall mem[_544 + 12 len 20].markets(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _565 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _568 = mem[_565]
            require mem[_565] == bool(mem[_565])
            _575 = mem[_565 + 32]
            require mem[_565 + 32] == mem[_565 + 32]
            _580 = mem[_565 + 64]
            require mem[_565 + 64] == mem[_565 + 64]
            _585 = mem[_565 + 96]
            require mem[_565 + 96] == mem[_565 + 96]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _593 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _598 = mem[_593]
            require mem[_593] == mem[_593 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x2f703498 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _607 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _612 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_612] == mem[_612 + 12 len 20]
            if mem[_612 + 12 len 20] == address(_607):
                _620 = mem[64]
                mem[64] = mem[64] + 608
                mem[_620] = address(cd[((32 * idx) + arg1 + 36)])
                mem[_620 + 32] = _534
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _624 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_624] == mem[_624]
                mem[_620 + 64] = mem[_624]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _642 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_642] == mem[_642]
                mem[_620 + 96] = mem[_642]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_659] == mem[_659]
                mem[_620 + 128] = mem[_659]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_675] == mem[_675]
                mem[_620 + 160] = mem[_675]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_691] == mem[_691]
                mem[_620 + 192] = mem[_691]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_707] == mem[_707]
                mem[_620 + 224] = mem[_707]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _729 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_729] == mem[_729]
                mem[_620 + 256] = mem[_729]
                mem[_620 + 288] = bool(_568)
                mem[_620 + 320] = _575
                mem[_620 + 352] = _580
                mem[_620 + 384] = _585
                mem[_620 + 416] = address(_598)
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_751] == mem[_751 + 31 len 1]
                mem[_620 + 448] = mem[_751 + 31 len 1]
                mem[_620 + 480] = 18
                require ext_code.size(address(_548))
                staticcall address(_548).hasRainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _773 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_773] == bool(mem[_773])
                if not mem[_773]:
                    mem[_620 + 512] = 0
                    require ext_code.size(address(_548))
                    staticcall address(_548).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _800 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_800] == bool(mem[_800])
                    if not mem[_800]:
                        mem[_620 + 544] = 0
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_837] == bool(mem[_837])
                        if not mem[_837]:
                            mem[_620 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _876 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _891 = mem[_876]
                            require mem[_876] == mem[_876 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_891))
                            staticcall address(_891).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _957 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_957] == mem[_957]
                            mem[_620 + 576] = mem[_957]
                    else:
                        require ext_code.size(address(_548))
                        staticcall address(_548).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _833 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _844 = mem[_833]
                        require mem[_833] == mem[_833 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_844))
                        staticcall address(_844).compSupplySpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_910] == mem[_910]
                        mem[_620 + 544] = mem[_910]
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _949 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_949] == bool(mem[_949])
                        if not mem[_949]:
                            mem[_620 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _999 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1018 = mem[_999]
                            require mem[_999] == mem[_999 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_1018))
                            staticcall address(_1018).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1078 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1078] == mem[_1078]
                            mem[_620 + 576] = mem[_1078]
                else:
                    require ext_code.size(address(_548))
                    staticcall address(_548).rainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _806 = mem[_798]
                    require mem[_798] == mem[_798 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_806))
                    staticcall address(_806).compSpeeds(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _863 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_863] == mem[_863]
                    mem[_620 + 512] = mem[_863]
                    require ext_code.size(address(_548))
                    staticcall address(_548).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _906 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_906] == bool(mem[_906])
                    if not mem[_906]:
                        mem[_620 + 544] = 0
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _948 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_948] == bool(mem[_948])
                        if not mem[_948]:
                            mem[_620 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _997 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1017 = mem[_997]
                            require mem[_997] == mem[_997 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_1017))
                            staticcall address(_1017).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1077] == mem[_1077]
                            mem[_620 + 576] = mem[_1077]
                    else:
                        require ext_code.size(address(_548))
                        staticcall address(_548).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _946 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _956 = mem[_946]
                        require mem[_946] == mem[_946 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_956))
                        staticcall address(_956).compSupplySpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1041] == mem[_1041]
                        mem[_620 + 544] = mem[_1041]
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1074 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1074] == bool(mem[_1074])
                        if not mem[_1074]:
                            mem[_620 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1107 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1118 = mem[_1107]
                            require mem[_1107] == mem[_1107 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_1118))
                            staticcall address(_1118).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1151] == mem[_1151]
                            mem[_620 + 576] = mem[_1151]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _620
            else:
                require ext_code.size(address(_598))
                staticcall address(_598).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _627 = mem[_623]
                require mem[_623] == mem[_623 + 31 len 1]
                _636 = mem[64]
                mem[64] = mem[64] + 608
                mem[_636] = address(cd[((32 * idx) + arg1 + 36)])
                mem[_636 + 32] = _534
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_641] == mem[_641]
                mem[_636 + 64] = mem[_641]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_658] == mem[_658]
                mem[_636 + 96] = mem[_658]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_674] == mem[_674]
                mem[_636 + 128] = mem[_674]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _690 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_690] == mem[_690]
                mem[_636 + 160] = mem[_690]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _706 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_706] == mem[_706]
                mem[_636 + 192] = mem[_706]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_728] == mem[_728]
                mem[_636 + 224] = mem[_728]
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _750 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_750] == mem[_750]
                mem[_636 + 256] = mem[_750]
                mem[_636 + 288] = bool(_568)
                mem[_636 + 320] = _575
                mem[_636 + 352] = _580
                mem[_636 + 384] = _585
                mem[_636 + 416] = address(_598)
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _772 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_772] == mem[_772 + 31 len 1]
                mem[_636 + 448] = mem[_772 + 31 len 1]
                mem[_636 + 480] = uint8(_627)
                require ext_code.size(address(_548))
                staticcall address(_548).hasRainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_794] == bool(mem[_794])
                if not mem[_794]:
                    mem[_636 + 512] = 0
                    require ext_code.size(address(_548))
                    staticcall address(_548).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_829] == bool(mem[_829])
                    if not mem[_829]:
                        mem[_636 + 544] = 0
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_873] == bool(mem[_873])
                        if not mem[_873]:
                            mem[_636 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _927 = mem[_917]
                            require mem[_917] == mem[_917 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_927))
                            staticcall address(_927).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1005 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1005] == mem[_1005]
                            mem[_636 + 576] = mem[_1005]
                    else:
                        require ext_code.size(address(_548))
                        staticcall address(_548).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _868 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _881 = mem[_868]
                        require mem[_868] == mem[_868 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_881))
                        staticcall address(_881).compSupplySpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _947 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_947] == mem[_947]
                        mem[_636 + 544] = mem[_947]
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _994 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_994] == bool(mem[_994])
                        if not mem[_994]:
                            mem[_636 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1045 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1058 = mem[_1045]
                            require mem[_1045] == mem[_1045 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_1058))
                            staticcall address(_1058).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1112 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1112] == mem[_1112]
                            mem[_636 + 576] = mem[_1112]
                else:
                    require ext_code.size(address(_548))
                    staticcall address(_548).rainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _825 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _836 = mem[_825]
                    require mem[_825] == mem[_825 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_836))
                    staticcall address(_836).compSpeeds(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _905 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_905] == mem[_905]
                    mem[_636 + 512] = mem[_905]
                    require ext_code.size(address(_548))
                    staticcall address(_548).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_940] == bool(mem[_940])
                    if not mem[_940]:
                        mem[_636 + 544] = 0
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_993] == bool(mem[_993])
                        if not mem[_993]:
                            mem[_636 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1043 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1057 = mem[_1043]
                            require mem[_1043] == mem[_1043 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_1057))
                            staticcall address(_1057).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1111 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1111] == mem[_1111]
                            mem[_636 + 576] = mem[_1111]
                    else:
                        require ext_code.size(address(_548))
                        staticcall address(_548).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _988 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1004 = mem[_988]
                        require mem[_988] == mem[_988 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1004))
                        staticcall address(_1004).compSupplySpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1073] == mem[_1073]
                        mem[_636 + 544] = mem[_1073]
                        require ext_code.size(address(_548))
                        staticcall address(_548).hasRainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1104 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1104] == bool(mem[_1104])
                        if not mem[_1104]:
                            mem[_636 + 576] = 0
                        else:
                            require ext_code.size(address(_548))
                            staticcall address(_548).rainMaker() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1136 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1143 = mem[_1136]
                            require mem[_1136] == mem[_1136 + 12 len 20]
                            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(address(_1143))
                            staticcall address(_1143).compBorrowSpeeds(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1160 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1160] == mem[_1160]
                            mem[_636 + 576] = mem[_1160]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _636
            idx = idx + 1
            continue 
        _516 = mem[64]
        mem[mem[64]] = 32
        _517 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _517:
            _716 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_716 + 32]
            mem[t + 64] = mem[_716 + 64]
            mem[t + 96] = mem[_716 + 96]
            mem[t + 128] = mem[_716 + 128]
            mem[t + 160] = mem[_716 + 160]
            mem[t + 192] = mem[_716 + 192]
            mem[t + 224] = mem[_716 + 224]
            mem[t + 256] = mem[_716 + 256]
            mem[t + 288] = bool(mem[_716 + 288])
            mem[t + 320] = mem[_716 + 320]
            mem[t + 352] = mem[_716 + 352]
            mem[t + 384] = mem[_716 + 384]
            mem[t + 416] = mem[_716 + 428 len 20]
            mem[t + 448] = mem[_716 + 448]
            mem[t + 480] = mem[_716 + 480]
            mem[t + 512] = mem[_716 + 512]
            mem[t + 544] = mem[_716 + 544]
            mem[t + 576] = mem[_716 + 576]
            idx = idx + 1
            s = s + 32
            t = t + 608
            continue 
        return memory
          from mem[64]
           len _516 + (608 * _517) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 736
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 288] = 0
    mem[(32 * arg1.length) + 320] = 0
    mem[(32 * arg1.length) + 352] = 0
    mem[(32 * arg1.length) + 384] = 0
    mem[(32 * arg1.length) + 416] = 0
    mem[(32 * arg1.length) + 448] = 0
    mem[(32 * arg1.length) + 480] = 0
    mem[(32 * arg1.length) + 512] = 0
    mem[(32 * arg1.length) + 544] = 0
    mem[(32 * arg1.length) + 576] = 0
    mem[(32 * arg1.length) + 608] = 0
    mem[(32 * arg1.length) + 640] = 0
    mem[(32 * arg1.length) + 672] = 0
    mem[(32 * arg1.length) + 704] = 0
    mem[var16001] = (32 * arg1.length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 608
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[(32 * arg1.length) + 256] = 0
        mem[(32 * arg1.length) + 288] = 0
        mem[(32 * arg1.length) + 320] = 0
        mem[(32 * arg1.length) + 352] = 0
        mem[(32 * arg1.length) + 384] = 0
        mem[(32 * arg1.length) + 416] = 0
        mem[(32 * arg1.length) + 448] = 0
        mem[(32 * arg1.length) + 480] = 0
        mem[(32 * arg1.length) + 512] = 0
        mem[(32 * arg1.length) + 544] = 0
        mem[(32 * arg1.length) + 576] = 0
        mem[(32 * arg1.length) + 608] = 0
        mem[(32 * arg1.length) + 640] = 0
        mem[(32 * arg1.length) + 672] = 0
        mem[(32 * arg1.length) + 704] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _1173 = mem[64]
        mem[64] = mem[64] + 608
        mem[_1173] = 0
        mem[_1173 + 32] = 0
        mem[_1173 + 64] = 0
        mem[_1173 + 96] = 0
        mem[_1173 + 128] = 0
        mem[_1173 + 160] = 0
        mem[_1173 + 192] = 0
        mem[_1173 + 224] = 0
        mem[_1173 + 256] = 0
        mem[_1173 + 288] = 0
        mem[_1173 + 320] = 0
        mem[_1173 + 352] = 0
        mem[_1173 + 384] = 0
        mem[_1173 + 416] = 0
        mem[_1173 + 448] = 0
        mem[_1173 + 480] = 0
        mem[_1173 + 512] = 0
        mem[_1173 + 544] = 0
        mem[_1173 + 576] = 0
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).exchangeRateCurrent() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1178 = mem[_1177]
        require mem[_1177] == mem[_1177]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1185 = mem[_1184]
        require mem[_1184] == mem[_1184 + 12 len 20]
        require ext_code.size(mem[_1184 + 12 len 20])
        staticcall mem[_1184 + 12 len 20].markets(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _1195 = mem[_1194]
        require mem[_1194] == bool(mem[_1194])
        _1198 = mem[_1194 + 32]
        require mem[_1194 + 32] == mem[_1194 + 32]
        _1200 = mem[_1194 + 64]
        require mem[_1194 + 64] == mem[_1194 + 64]
        _1203 = mem[_1194 + 96]
        require mem[_1194 + 96] == mem[_1194 + 96]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1210 = mem[_1208]
        require mem[_1208] == mem[_1208 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x2f703498 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1214 = mem[_1213]
        require mem[_1213] == mem[_1213 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1217] == mem[_1217 + 12 len 20]
        if mem[_1217 + 12 len 20] == address(_1214):
            _1221 = mem[64]
            mem[64] = mem[64] + 608
            mem[_1221] = address(cd[((32 * idx) + arg1 + 36)])
            mem[_1221 + 32] = _1178
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1225] == mem[_1225]
            mem[_1221 + 64] = mem[_1225]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1234] == mem[_1234]
            mem[_1221 + 96] = mem[_1234]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1242] == mem[_1242]
            mem[_1221 + 128] = mem[_1242]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1250] == mem[_1250]
            mem[_1221 + 160] = mem[_1250]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1258] == mem[_1258]
            mem[_1221 + 192] = mem[_1258]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1266] == mem[_1266]
            mem[_1221 + 224] = mem[_1266]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1277] == mem[_1277]
            mem[_1221 + 256] = mem[_1277]
            mem[_1221 + 288] = bool(_1195)
            mem[_1221 + 320] = _1198
            mem[_1221 + 352] = _1200
            mem[_1221 + 384] = _1203
            mem[_1221 + 416] = address(_1210)
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1288] == mem[_1288 + 31 len 1]
            mem[_1221 + 448] = mem[_1288 + 31 len 1]
            mem[_1221 + 480] = 18
            require ext_code.size(address(_1185))
            staticcall address(_1185).hasRainMaker() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1299] == bool(mem[_1299])
            if not mem[_1299]:
                mem[_1221 + 512] = 0
                require ext_code.size(address(_1185))
                staticcall address(_1185).hasRainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1314 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1314] == bool(mem[_1314])
                if not mem[_1314]:
                    mem[_1221 + 544] = 0
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1334] == bool(mem[_1334])
                    if not mem[_1334]:
                        mem[_1221 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1359 = mem[_1354]
                        require mem[_1354] == mem[_1354 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1359))
                        staticcall address(_1359).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1395] == mem[_1395]
                        mem[_1221 + 576] = mem[_1395]
                else:
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).rainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1336 = mem[_1332]
                    require mem[_1332] == mem[_1332 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1336))
                    staticcall address(_1336).compSupplySpeeds(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1369] == mem[_1369]
                    mem[_1221 + 544] = mem[_1369]
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1391 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1391] == bool(mem[_1391])
                    if not mem[_1391]:
                        mem[_1221 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1418 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1426 = mem[_1418]
                        require mem[_1418] == mem[_1418 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1426))
                        staticcall address(_1426).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1453] == mem[_1453]
                        mem[_1221 + 576] = mem[_1453]
            else:
                require ext_code.size(address(_1185))
                staticcall address(_1185).rainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1316 = mem[_1313]
                require mem[_1313] == mem[_1313 + 12 len 20]
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(address(_1316))
                staticcall address(_1316).compSpeeds(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1343] == mem[_1343]
                mem[_1221 + 512] = mem[_1343]
                require ext_code.size(address(_1185))
                staticcall address(_1185).hasRainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1365] == bool(mem[_1365])
                if not mem[_1365]:
                    mem[_1221 + 544] = 0
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1390 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1390] == bool(mem[_1390])
                    if not mem[_1390]:
                        mem[_1221 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1425 = mem[_1416]
                        require mem[_1416] == mem[_1416 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1425))
                        staticcall address(_1425).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1452] == mem[_1452]
                        mem[_1221 + 576] = mem[_1452]
                else:
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).rainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1394 = mem[_1388]
                    require mem[_1388] == mem[_1388 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1394))
                    staticcall address(_1394).compSupplySpeeds(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1433] == mem[_1433]
                    mem[_1221 + 544] = mem[_1433]
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1449] == bool(mem[_1449])
                    if not mem[_1449]:
                        mem[_1221 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1474 = mem[_1467]
                        require mem[_1467] == mem[_1467 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1474))
                        staticcall address(_1474).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1486] == mem[_1486]
                        mem[_1221 + 576] = mem[_1486]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1221
        else:
            require ext_code.size(address(_1210))
            staticcall address(_1210).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1226 = mem[_1224]
            require mem[_1224] == mem[_1224 + 31 len 1]
            _1228 = mem[64]
            mem[64] = mem[64] + 608
            mem[_1228] = address(cd[((32 * idx) + arg1 + 36)])
            mem[_1228 + 32] = _1178
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1233] == mem[_1233]
            mem[_1228 + 64] = mem[_1233]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1241] == mem[_1241]
            mem[_1228 + 96] = mem[_1241]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1249] == mem[_1249]
            mem[_1228 + 128] = mem[_1249]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1257] == mem[_1257]
            mem[_1228 + 160] = mem[_1257]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1265 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1265] == mem[_1265]
            mem[_1228 + 192] = mem[_1265]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1276] == mem[_1276]
            mem[_1228 + 224] = mem[_1276]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1287] == mem[_1287]
            mem[_1228 + 256] = mem[_1287]
            mem[_1228 + 288] = bool(_1195)
            mem[_1228 + 320] = _1198
            mem[_1228 + 352] = _1200
            mem[_1228 + 384] = _1203
            mem[_1228 + 416] = address(_1210)
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1298] == mem[_1298 + 31 len 1]
            mem[_1228 + 448] = mem[_1298 + 31 len 1]
            mem[_1228 + 480] = uint8(_1226)
            require ext_code.size(address(_1185))
            staticcall address(_1185).hasRainMaker() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1309] == bool(mem[_1309])
            if not mem[_1309]:
                mem[_1228 + 512] = 0
                require ext_code.size(address(_1185))
                staticcall address(_1185).hasRainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1328] == bool(mem[_1328])
                if not mem[_1328]:
                    mem[_1228 + 544] = 0
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1351] == bool(mem[_1351])
                    if not mem[_1351]:
                        mem[_1228 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1377 = mem[_1373]
                        require mem[_1373] == mem[_1373 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1377))
                        staticcall address(_1377).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1422] == mem[_1422]
                        mem[_1228 + 576] = mem[_1422]
                else:
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).rainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1356 = mem[_1348]
                    require mem[_1348] == mem[_1348 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1356))
                    staticcall address(_1356).compSupplySpeeds(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1389 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1389] == mem[_1389]
                    mem[_1228 + 544] = mem[_1389]
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1413] == bool(mem[_1413])
                    if not mem[_1413]:
                        mem[_1228 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1437 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1444 = mem[_1437]
                        require mem[_1437] == mem[_1437 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1444))
                        staticcall address(_1444).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1472 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1472] == mem[_1472]
                        mem[_1228 + 576] = mem[_1472]
            else:
                require ext_code.size(address(_1185))
                staticcall address(_1185).rainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1333 = mem[_1325]
                require mem[_1325] == mem[_1325 + 12 len 20]
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(address(_1333))
                staticcall address(_1333).compSpeeds(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1364 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1364] == mem[_1364]
                mem[_1228 + 512] = mem[_1364]
                require ext_code.size(address(_1185))
                staticcall address(_1185).hasRainMaker() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1382] == bool(mem[_1382])
                if not mem[_1382]:
                    mem[_1228 + 544] = 0
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1412] == bool(mem[_1412])
                    if not mem[_1412]:
                        mem[_1228 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1435 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1443 = mem[_1435]
                        require mem[_1435] == mem[_1435 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1443))
                        staticcall address(_1443).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1471] == mem[_1471]
                        mem[_1228 + 576] = mem[_1471]
                else:
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).rainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1421 = mem[_1407]
                    require mem[_1407] == mem[_1407 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1421))
                    staticcall address(_1421).compSupplySpeeds(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1448] == mem[_1448]
                    mem[_1228 + 544] = mem[_1448]
                    require ext_code.size(address(_1185))
                    staticcall address(_1185).hasRainMaker() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1464] == bool(mem[_1464])
                    if not mem[_1464]:
                        mem[_1228 + 576] = 0
                    else:
                        require ext_code.size(address(_1185))
                        staticcall address(_1185).rainMaker() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1484 = mem[_1479]
                        require mem[_1479] == mem[_1479 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_1484))
                        staticcall address(_1484).compBorrowSpeeds(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1491] == mem[_1491]
                        mem[_1228 + 576] = mem[_1491]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1228
        idx = idx + 1
        continue 
    _1168 = mem[64]
    mem[mem[64]] = 32
    _1169 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _1169:
        _1269 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1269 + 32]
        mem[t + 64] = mem[_1269 + 64]
        mem[t + 96] = mem[_1269 + 96]
        mem[t + 128] = mem[_1269 + 128]
        mem[t + 160] = mem[_1269 + 160]
        mem[t + 192] = mem[_1269 + 192]
        mem[t + 224] = mem[_1269 + 224]
        mem[t + 256] = mem[_1269 + 256]
        mem[t + 288] = bool(mem[_1269 + 288])
        mem[t + 320] = mem[_1269 + 320]
        mem[t + 352] = mem[_1269 + 352]
        mem[t + 384] = mem[_1269 + 384]
        mem[t + 416] = mem[_1269 + 428 len 20]
        mem[t + 448] = mem[_1269 + 448]
        mem[t + 480] = mem[_1269 + 480]
        mem[t + 512] = mem[_1269 + 512]
        mem[t + 544] = mem[_1269 + 544]
        mem[t + 576] = mem[_1269 + 576]
        idx = idx + 1
        s = s + 32
        t = t + 608
        continue 
    return memory
      from mem[64]
       len _1168 + (608 * _1169) + -mem[64] + 64
}



}
