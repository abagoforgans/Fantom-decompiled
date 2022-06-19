contract main {




// =====================  Runtime code  =====================


address owner;
address oracleAddress;

function owner() payable {
    return owner
}

function oracleAddress() payable {
    return oracleAddress
}

function _fallback() payable {
    revert
}

function updateSlot(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor[arg1] = arg2
}

function tokensPrices(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg1.length > test266151307():
        revert with 0, 65
    mem[floor32(arg1.length) + 97] = arg1.length
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _71 = mem[(32 * idx) + 128]
            _72 = mem[64]
            mem[64] = mem[64] + 64
            mem[_72] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 4] = address(_71)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_71)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_72 + 32] = mem[_78]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _72
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _75 = mem[64]
        mem[mem[64]] = 32
        _77 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _77:
            _100 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_100 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _75 + (64 * _77) + -mem[64] + 64
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 193
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
    mem[floor32(arg1.length) + 129] = floor32(arg1.length) + (32 * arg1.length) + 129
    s = floor32(arg1.length) + 129
    idx = arg1.length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
        mem[s + 32] = floor32(arg1.length) + (32 * arg1.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _99 = mem[96]
    idx = 0
    while idx < _99:
        if idx >= mem[96]:
            revert with 0, 50
        _105 = mem[(32 * idx) + 128]
        _106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_106] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 4] = address(_105)
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                gas gas_remaining wei
               args address(_105)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_106 + 32] = mem[_111]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + floor32(arg1.length) + 129] = _106
        if idx == -1:
            revert with 0, 17
        _99 = mem[96]
        idx = idx + 1
        continue 
    _109 = mem[64]
    mem[mem[64]] = 32
    _110 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _110:
        _118 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_118 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _109 + (64 * _110) + -mem[64] + 64
}

function tokensBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if floor32(arg2.length) + 97 < 96 or floor32(arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg2.length > test266151307():
        revert with 0, 65
    mem[floor32(arg2.length) + 97] = arg2.length
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 129
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _112 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_112))
            staticcall address(_112).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _126 = mem[_117]
            mem[mem[64] + 4] = address(_112)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_112)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _143 = mem[_135]
            mem[mem[64] + 4] = address(_112)
            mem[mem[64] + 36] = _126
            mem[mem[64] + 68] = _143
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_112), _126, _143
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _151 = mem[_149]
            _154 = mem[64]
            mem[64] = mem[64] + 128
            mem[_154] = address(_112)
            mem[_154 + 32] = _143
            mem[_154 + 64] = _126
            mem[_154 + 96] = _151
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _154
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _111 = mem[64]
        mem[mem[64]] = 32
        _116 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _116:
            _160 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_160 + 32]
            mem[t + 64] = mem[_160 + 64]
            mem[t + 96] = mem[_160 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _111 + (128 * _116) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 257
    mem[floor32(arg2.length) + (32 * arg2.length) + 129] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 161] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 193] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 225] = 0
    mem[var27002] = var27001
    if not var27003 - 1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _222 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_222))
            staticcall address(_222).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _227 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _239 = mem[_227]
            mem[mem[64] + 4] = address(_222)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_222)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _254 = mem[_249]
            mem[mem[64] + 4] = address(_222)
            mem[mem[64] + 36] = _239
            mem[mem[64] + 68] = _254
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_222), _239, _254
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_258]
            _263 = mem[64]
            mem[64] = mem[64] + 128
            mem[_263] = address(_222)
            mem[_263 + 32] = _254
            mem[_263 + 64] = _239
            mem[_263 + 96] = _262
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _263
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _221 = mem[64]
        mem[mem[64]] = 32
        _225 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _225:
            _270 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_270 + 32]
            mem[t + 64] = mem[_270 + 64]
            mem[t + 96] = mem[_270 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _221 + (128 * _225) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 385
    mem[floor32(arg2.length) + (32 * arg2.length) + 257] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 289] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 321] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 353] = 0
    mem[var31002] = var31001
    if not var31003 - 1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _331 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_331))
            staticcall address(_331).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _348 = mem[_336]
            mem[mem[64] + 4] = address(_331)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_331)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _363 = mem[_358]
            mem[mem[64] + 4] = address(_331)
            mem[mem[64] + 36] = _348
            mem[mem[64] + 68] = _363
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_331), _348, _363
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _367 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _371 = mem[_367]
            _372 = mem[64]
            mem[64] = mem[64] + 128
            mem[_372] = address(_331)
            mem[_372 + 32] = _363
            mem[_372 + 64] = _348
            mem[_372 + 96] = _371
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _372
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _330 = mem[64]
        mem[mem[64]] = 32
        _334 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _334:
            _379 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_379 + 32]
            mem[t + 64] = mem[_379 + 64]
            mem[t + 96] = mem[_379 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _330 + (128 * _334) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 513
    mem[floor32(arg2.length) + (32 * arg2.length) + 385] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 417] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 449] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 481] = 0
    mem[var35002] = var35001
    if not var35003 - 1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _440 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_440))
            staticcall address(_440).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _445 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _457 = mem[_445]
            mem[mem[64] + 4] = address(_440)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_440)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _467 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _472 = mem[_467]
            mem[mem[64] + 4] = address(_440)
            mem[mem[64] + 36] = _457
            mem[mem[64] + 68] = _472
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_440), _457, _472
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _476 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _480 = mem[_476]
            _481 = mem[64]
            mem[64] = mem[64] + 128
            mem[_481] = address(_440)
            mem[_481 + 32] = _472
            mem[_481 + 64] = _457
            mem[_481 + 96] = _480
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _481
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _439 = mem[64]
        mem[mem[64]] = 32
        _443 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _443:
            _488 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_488 + 32]
            mem[t + 64] = mem[_488 + 64]
            mem[t + 96] = mem[_488 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _439 + (128 * _443) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 641
    mem[floor32(arg2.length) + (32 * arg2.length) + 513] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 545] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 577] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 609] = 0
    mem[var39002] = var39001
    if not var39003 - 1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _549 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_549))
            staticcall address(_549).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _566 = mem[_554]
            mem[mem[64] + 4] = address(_549)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_549)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _581 = mem[_576]
            mem[mem[64] + 4] = address(_549)
            mem[mem[64] + 36] = _566
            mem[mem[64] + 68] = _581
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_549), _566, _581
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _589 = mem[_585]
            _590 = mem[64]
            mem[64] = mem[64] + 128
            mem[_590] = address(_549)
            mem[_590 + 32] = _581
            mem[_590 + 64] = _566
            mem[_590 + 96] = _589
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _590
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _548 = mem[64]
        mem[mem[64]] = 32
        _552 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _552:
            _597 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_597 + 32]
            mem[t + 64] = mem[_597 + 64]
            mem[t + 96] = mem[_597 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _548 + (128 * _552) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 769
    mem[floor32(arg2.length) + (32 * arg2.length) + 641] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 673] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 705] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 737] = 0
    mem[var43002] = var43001
    if not var43003 - 1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _658 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_658))
            staticcall address(_658).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _675 = mem[_663]
            mem[mem[64] + 4] = address(_658)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_658)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _690 = mem[_685]
            mem[mem[64] + 4] = address(_658)
            mem[mem[64] + 36] = _675
            mem[mem[64] + 68] = _690
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_658), _675, _690
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _694 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _698 = mem[_694]
            _699 = mem[64]
            mem[64] = mem[64] + 128
            mem[_699] = address(_658)
            mem[_699 + 32] = _690
            mem[_699 + 64] = _675
            mem[_699 + 96] = _698
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _699
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _657 = mem[64]
        mem[mem[64]] = 32
        _661 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _661:
            _706 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_706 + 32]
            mem[t + 64] = mem[_706 + 64]
            mem[t + 96] = mem[_706 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _657 + (128 * _661) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 897
    mem[floor32(arg2.length) + (32 * arg2.length) + 769] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 801] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 833] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 865] = 0
    mem[var47002] = var47001
    if not var47003 - 1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _767 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_767))
            staticcall address(_767).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _772 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _784 = mem[_772]
            mem[mem[64] + 4] = address(_767)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_767)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _794 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _799 = mem[_794]
            mem[mem[64] + 4] = address(_767)
            mem[mem[64] + 36] = _784
            mem[mem[64] + 68] = _799
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_767), _784, _799
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _807 = mem[_803]
            _808 = mem[64]
            mem[64] = mem[64] + 128
            mem[_808] = address(_767)
            mem[_808 + 32] = _799
            mem[_808 + 64] = _784
            mem[_808 + 96] = _807
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _808
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _766 = mem[64]
        mem[mem[64]] = 32
        _770 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _770:
            _815 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_815 + 32]
            mem[t + 64] = mem[_815 + 64]
            mem[t + 96] = mem[_815 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _766 + (128 * _770) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 1025
    mem[floor32(arg2.length) + (32 * arg2.length) + 897] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 929] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 961] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 993] = 0
    mem[var51002] = var51001
    if not var51003 - 1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _876 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_876))
            staticcall address(_876).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _881 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _893 = mem[_881]
            mem[mem[64] + 4] = address(_876)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_876)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _908 = mem[_903]
            mem[mem[64] + 4] = address(_876)
            mem[mem[64] + 36] = _893
            mem[mem[64] + 68] = _908
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_876), _893, _908
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _912 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _916 = mem[_912]
            _917 = mem[64]
            mem[64] = mem[64] + 128
            mem[_917] = address(_876)
            mem[_917 + 32] = _908
            mem[_917 + 64] = _893
            mem[_917 + 96] = _916
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _917
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _875 = mem[64]
        mem[mem[64]] = 32
        _879 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _879:
            _924 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_924 + 32]
            mem[t + 64] = mem[_924 + 64]
            mem[t + 96] = mem[_924 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _875 + (128 * _879) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 1153
    mem[floor32(arg2.length) + (32 * arg2.length) + 1025] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 1057] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 1089] = 0
    mem[floor32(arg2.length) + (32 * arg2.length) + 1121] = 0
    mem[var55002] = var55001
    if var55003 - 1:
        # nil
    else:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            _985 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_985))
            staticcall address(_985).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _990 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1002 = mem[_990]
            mem[mem[64] + 4] = address(_985)
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceUsdcRecommended(address arg1) with:
                    gas gas_remaining wei
                   args address(_985)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1012 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1017 = mem[_1012]
            mem[mem[64] + 4] = address(_985)
            mem[mem[64] + 36] = _1002
            mem[mem[64] + 68] = _1017
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(_985), _1002, _1017
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1021 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1025 = mem[_1021]
            _1026 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1026] = address(_985)
            mem[_1026 + 32] = _1017
            mem[_1026 + 64] = _1002
            mem[_1026 + 96] = _1025
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _1026
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _984 = mem[64]
        mem[mem[64]] = 32
        _988 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _988:
            _1033 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1033 + 32]
            mem[t + 64] = mem[_1033 + 64]
            mem[t + 96] = mem[_1033 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _984 + (128 * _988) + -mem[64] + 64
}

function tokensMetadata(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg1.length > test266151307():
        revert with 0, 65
    mem[floor32(arg1.length) + 97] = arg1.length
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _263 = mem[(32 * idx) + 128]
            _264 = mem[64]
            mem[64] = mem[64] + 128
            mem[_264] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_263))
            staticcall address(_263).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _270 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _276 = mem[_270]
            require mem[_270] <= test266151307()
            require _270 + mem[_270] + 31 < _270 + return_data.size
            _284 = mem[_270 + mem[_270]]
            if mem[_270 + mem[_270]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_270 + mem[_270]])) + 1 < 0 or _270 + ceil32(return_data.size) + ceil32(ceil32(mem[_270 + mem[_270]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _270 + ceil32(return_data.size) + ceil32(ceil32(mem[_270 + mem[_270]])) + 1
            mem[_270 + ceil32(return_data.size)] = _284
            require _276 + _284 + 32 <= return_data.size
            s = 0
            while s < _284:
                mem[s + _270 + ceil32(return_data.size) + 32] = mem[s + _270 + _276 + 32]
                s = s + 32
                continue 
            if ceil32(_284) <= _284:
                mem[_264 + 32] = _270 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_263))
                staticcall address(_263).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _407 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _418 = mem[_407]
                require mem[_407] <= test266151307()
                require _407 + mem[_407] + 31 < _407 + return_data.size
                _430 = mem[_407 + mem[_407]]
                if mem[_407 + mem[_407]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_407 + mem[_407]])) + 1 < 0 or _407 + ceil32(return_data.size) + ceil32(ceil32(mem[_407 + mem[_407]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _407 + ceil32(return_data.size) + ceil32(ceil32(mem[_407 + mem[_407]])) + 1
                mem[_407 + ceil32(return_data.size)] = _430
                require _418 + _430 + 32 <= return_data.size
                s = 0
                while s < _430:
                    mem[s + _407 + ceil32(return_data.size) + 32] = mem[s + _407 + _418 + 32]
                    s = s + 32
                    continue 
                if ceil32(_430) <= _430:
                    mem[_264 + 64] = _407 + ceil32(return_data.size)
                    require ext_code.size(address(_263))
                    staticcall address(_263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_594] == mem[_594 + 31 len 1]
                    mem[_264 + 96] = mem[_594 + 31 len 1]
                else:
                    mem[_407 + ceil32(return_data.size) + _430 + 32] = 0
                    mem[_264 + 64] = _407 + ceil32(return_data.size)
                    require ext_code.size(address(_263))
                    staticcall address(_263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _604 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_604] == mem[_604 + 31 len 1]
                    mem[_264 + 96] = mem[_604 + 31 len 1]
            else:
                mem[_270 + ceil32(return_data.size) + _284 + 32] = 0
                mem[_264 + 32] = _270 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_263))
                staticcall address(_263).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _410 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _422 = mem[_410]
                require mem[_410] <= test266151307()
                require _410 + mem[_410] + 31 < _410 + return_data.size
                _433 = mem[_410 + mem[_410]]
                if mem[_410 + mem[_410]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_410 + mem[_410]])) + 1 < 0 or _410 + ceil32(return_data.size) + ceil32(ceil32(mem[_410 + mem[_410]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _410 + ceil32(return_data.size) + ceil32(ceil32(mem[_410 + mem[_410]])) + 1
                mem[_410 + ceil32(return_data.size)] = _433
                require _422 + _433 + 32 <= return_data.size
                s = 0
                while s < _433:
                    mem[s + _410 + ceil32(return_data.size) + 32] = mem[s + _410 + _422 + 32]
                    s = s + 32
                    continue 
                if ceil32(_433) <= _433:
                    mem[_264 + 64] = _410 + ceil32(return_data.size)
                    require ext_code.size(address(_263))
                    staticcall address(_263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_595] == mem[_595 + 31 len 1]
                    mem[_264 + 96] = mem[_595 + 31 len 1]
                else:
                    mem[_410 + ceil32(return_data.size) + _433 + 32] = 0
                    mem[_264 + 64] = _410 + ceil32(return_data.size)
                    require ext_code.size(address(_263))
                    staticcall address(_263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _605 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_605] == mem[_605 + 31 len 1]
                    mem[_264 + 96] = mem[_605 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _264
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _268 = mem[64]
        mem[mem[64]] = 32
        _269 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _269) + 64
        u = mem[64] + 64
        while idx < _269:
            mem[u] = t + -_268 - 64
            _388 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _390 = mem[_388 + 32]
            mem[t + 32] = 128
            _394 = mem[_390]
            mem[t + 128] = mem[_390]
            v = 0
            while v < _394:
                mem[v + t + 160] = mem[v + _390 + 32]
                v = v + 32
                continue 
            if ceil32(_394) <= _394:
                _578 = mem[_388 + 64]
                mem[t + 64] = ceil32(_394) + 160
                _586 = mem[_578]
                mem[ceil32(_394) + t + 160] = mem[_578]
                v = 0
                while v < _586:
                    mem[v + ceil32(_394) + t + 192] = mem[v + _578 + 32]
                    v = v + 32
                    continue 
                if ceil32(_586) > _586:
                    mem[ceil32(_394) + t + _586 + 192] = 0
                mem[t + 96] = mem[_388 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_586) + ceil32(_394) + t + 192
                u = u + 32
                continue 
            mem[t + _394 + 160] = 0
            _587 = mem[_388 + 64]
            mem[t + 64] = ceil32(_394) + 160
            _593 = mem[_587]
            mem[ceil32(_394) + t + 160] = mem[_587]
            v = 0
            while v < _593:
                mem[v + ceil32(_394) + t + 192] = mem[v + _587 + 32]
                v = v + 32
                continue 
            if ceil32(_593) > _593:
                mem[ceil32(_394) + t + _593 + 192] = 0
            mem[t + 96] = mem[_388 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_593) + ceil32(_394) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 257
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _573 = mem[(32 * idx) + 128]
            _574 = mem[64]
            mem[64] = mem[64] + 128
            mem[_574] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_573))
            staticcall address(_573).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _585 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _603 = mem[_585]
            require mem[_585] <= test266151307()
            require _585 + mem[_585] + 31 < _585 + return_data.size
            _614 = mem[_585 + mem[_585]]
            if mem[_585 + mem[_585]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_585 + mem[_585]])) + 1 < 0 or _585 + ceil32(return_data.size) + ceil32(ceil32(mem[_585 + mem[_585]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _585 + ceil32(return_data.size) + ceil32(ceil32(mem[_585 + mem[_585]])) + 1
            mem[_585 + ceil32(return_data.size)] = _614
            require _603 + _614 + 32 <= return_data.size
            s = 0
            while s < _614:
                mem[s + _585 + ceil32(return_data.size) + 32] = mem[s + _585 + _603 + 32]
                s = s + 32
                continue 
            if ceil32(_614) <= _614:
                mem[_574 + 32] = _585 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_573))
                staticcall address(_573).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _754 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _764 = mem[_754]
                require mem[_754] <= test266151307()
                require _754 + mem[_754] + 31 < _754 + return_data.size
                _777 = mem[_754 + mem[_754]]
                if mem[_754 + mem[_754]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_754 + mem[_754]])) + 1 < 0 or _754 + ceil32(return_data.size) + ceil32(ceil32(mem[_754 + mem[_754]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _754 + ceil32(return_data.size) + ceil32(ceil32(mem[_754 + mem[_754]])) + 1
                mem[_754 + ceil32(return_data.size)] = _777
                require _764 + _777 + 32 <= return_data.size
                s = 0
                while s < _777:
                    mem[s + _754 + ceil32(return_data.size) + 32] = mem[s + _754 + _764 + 32]
                    s = s + 32
                    continue 
                if ceil32(_777) <= _777:
                    mem[_574 + 64] = _754 + ceil32(return_data.size)
                    require ext_code.size(address(_573))
                    staticcall address(_573).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _947 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_947] == mem[_947 + 31 len 1]
                    mem[_574 + 96] = mem[_947 + 31 len 1]
                else:
                    mem[_754 + ceil32(return_data.size) + _777 + 32] = 0
                    mem[_574 + 64] = _754 + ceil32(return_data.size)
                    require ext_code.size(address(_573))
                    staticcall address(_573).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _952 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_952] == mem[_952 + 31 len 1]
                    mem[_574 + 96] = mem[_952 + 31 len 1]
            else:
                mem[_585 + ceil32(return_data.size) + _614 + 32] = 0
                mem[_574 + 32] = _585 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_573))
                staticcall address(_573).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _761 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _773 = mem[_761]
                require mem[_761] <= test266151307()
                require _761 + mem[_761] + 31 < _761 + return_data.size
                _783 = mem[_761 + mem[_761]]
                if mem[_761 + mem[_761]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_761 + mem[_761]])) + 1 < 0 or _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1
                mem[_761 + ceil32(return_data.size)] = _783
                require _773 + _783 + 32 <= return_data.size
                s = 0
                while s < _783:
                    mem[s + _761 + ceil32(return_data.size) + 32] = mem[s + _761 + _773 + 32]
                    s = s + 32
                    continue 
                if ceil32(_783) <= _783:
                    mem[_574 + 64] = _761 + ceil32(return_data.size)
                    require ext_code.size(address(_573))
                    staticcall address(_573).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _948 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_948] == mem[_948 + 31 len 1]
                    mem[_574 + 96] = mem[_948 + 31 len 1]
                else:
                    mem[_761 + ceil32(return_data.size) + _783 + 32] = 0
                    mem[_574 + 64] = _761 + ceil32(return_data.size)
                    require ext_code.size(address(_573))
                    staticcall address(_573).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _953 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_953] == mem[_953 + 31 len 1]
                    mem[_574 + 96] = mem[_953 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _574
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _577 = mem[64]
        mem[mem[64]] = 32
        _584 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _584) + 64
        u = mem[64] + 64
        while idx < _584:
            mem[u] = t + -_577 - 64
            _730 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _732 = mem[_730 + 32]
            mem[t + 32] = 128
            _735 = mem[_732]
            mem[t + 128] = mem[_732]
            v = 0
            while v < _735:
                mem[v + t + 160] = mem[v + _732 + 32]
                v = v + 32
                continue 
            if ceil32(_735) <= _735:
                _926 = mem[_730 + 64]
                mem[t + 64] = ceil32(_735) + 160
                _932 = mem[_926]
                mem[ceil32(_735) + t + 160] = mem[_926]
                v = 0
                while v < _932:
                    mem[v + ceil32(_735) + t + 192] = mem[v + _926 + 32]
                    v = v + 32
                    continue 
                if ceil32(_932) > _932:
                    mem[ceil32(_735) + t + _932 + 192] = 0
                mem[t + 96] = mem[_730 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_932) + ceil32(_735) + t + 192
                u = u + 32
                continue 
            mem[t + _735 + 160] = 0
            _933 = mem[_730 + 64]
            mem[t + 64] = ceil32(_735) + 160
            _946 = mem[_933]
            mem[ceil32(_735) + t + 160] = mem[_933]
            v = 0
            while v < _946:
                mem[v + ceil32(_735) + t + 192] = mem[v + _933 + 32]
                v = v + 32
                continue 
            if ceil32(_946) > _946:
                mem[ceil32(_735) + t + _946 + 192] = 0
            mem[t + 96] = mem[_730 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_946) + ceil32(_735) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 385
    mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 321] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 353] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _918 = mem[(32 * idx) + 128]
            _919 = mem[64]
            mem[64] = mem[64] + 128
            mem[_919] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_918))
            staticcall address(_918).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _925 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _945 = mem[_925]
            require mem[_925] <= test266151307()
            require _925 + mem[_925] + 31 < _925 + return_data.size
            _956 = mem[_925 + mem[_925]]
            if mem[_925 + mem[_925]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_925 + mem[_925]])) + 1 < 0 or _925 + ceil32(return_data.size) + ceil32(ceil32(mem[_925 + mem[_925]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _925 + ceil32(return_data.size) + ceil32(ceil32(mem[_925 + mem[_925]])) + 1
            mem[_925 + ceil32(return_data.size)] = _956
            require _945 + _956 + 32 <= return_data.size
            s = 0
            while s < _956:
                mem[s + _925 + ceil32(return_data.size) + 32] = mem[s + _925 + _945 + 32]
                s = s + 32
                continue 
            if ceil32(_956) <= _956:
                mem[_919 + 32] = _925 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_918))
                staticcall address(_918).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1099 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1109 = mem[_1099]
                require mem[_1099] <= test266151307()
                require _1099 + mem[_1099] + 31 < _1099 + return_data.size
                _1122 = mem[_1099 + mem[_1099]]
                if mem[_1099 + mem[_1099]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1099 + mem[_1099]])) + 1 < 0 or _1099 + ceil32(return_data.size) + ceil32(ceil32(mem[_1099 + mem[_1099]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1099 + ceil32(return_data.size) + ceil32(ceil32(mem[_1099 + mem[_1099]])) + 1
                mem[_1099 + ceil32(return_data.size)] = _1122
                require _1109 + _1122 + 32 <= return_data.size
                s = 0
                while s < _1122:
                    mem[s + _1099 + ceil32(return_data.size) + 32] = mem[s + _1099 + _1109 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1122) <= _1122:
                    mem[_919 + 64] = _1099 + ceil32(return_data.size)
                    require ext_code.size(address(_918))
                    staticcall address(_918).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1292] == mem[_1292 + 31 len 1]
                    mem[_919 + 96] = mem[_1292 + 31 len 1]
                else:
                    mem[_1099 + ceil32(return_data.size) + _1122 + 32] = 0
                    mem[_919 + 64] = _1099 + ceil32(return_data.size)
                    require ext_code.size(address(_918))
                    staticcall address(_918).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1297] == mem[_1297 + 31 len 1]
                    mem[_919 + 96] = mem[_1297 + 31 len 1]
            else:
                mem[_925 + ceil32(return_data.size) + _956 + 32] = 0
                mem[_919 + 32] = _925 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_918))
                staticcall address(_918).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1106 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1118 = mem[_1106]
                require mem[_1106] <= test266151307()
                require _1106 + mem[_1106] + 31 < _1106 + return_data.size
                _1128 = mem[_1106 + mem[_1106]]
                if mem[_1106 + mem[_1106]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1106 + mem[_1106]])) + 1 < 0 or _1106 + ceil32(return_data.size) + ceil32(ceil32(mem[_1106 + mem[_1106]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1106 + ceil32(return_data.size) + ceil32(ceil32(mem[_1106 + mem[_1106]])) + 1
                mem[_1106 + ceil32(return_data.size)] = _1128
                require _1118 + _1128 + 32 <= return_data.size
                s = 0
                while s < _1128:
                    mem[s + _1106 + ceil32(return_data.size) + 32] = mem[s + _1106 + _1118 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1128) <= _1128:
                    mem[_919 + 64] = _1106 + ceil32(return_data.size)
                    require ext_code.size(address(_918))
                    staticcall address(_918).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1293] == mem[_1293 + 31 len 1]
                    mem[_919 + 96] = mem[_1293 + 31 len 1]
                else:
                    mem[_1106 + ceil32(return_data.size) + _1128 + 32] = 0
                    mem[_919 + 64] = _1106 + ceil32(return_data.size)
                    require ext_code.size(address(_918))
                    staticcall address(_918).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1298 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1298] == mem[_1298 + 31 len 1]
                    mem[_919 + 96] = mem[_1298 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _919
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _922 = mem[64]
        mem[mem[64]] = 32
        _924 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _924) + 64
        u = mem[64] + 64
        while idx < _924:
            mem[u] = t + -_922 - 64
            _1073 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1075 = mem[_1073 + 32]
            mem[t + 32] = 128
            _1080 = mem[_1075]
            mem[t + 128] = mem[_1075]
            v = 0
            while v < _1080:
                mem[v + t + 160] = mem[v + _1075 + 32]
                v = v + 32
                continue 
            if ceil32(_1080) <= _1080:
                _1271 = mem[_1073 + 64]
                mem[t + 64] = ceil32(_1080) + 160
                _1277 = mem[_1271]
                mem[ceil32(_1080) + t + 160] = mem[_1271]
                v = 0
                while v < _1277:
                    mem[v + ceil32(_1080) + t + 192] = mem[v + _1271 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1277) > _1277:
                    mem[ceil32(_1080) + t + _1277 + 192] = 0
                mem[t + 96] = mem[_1073 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_1277) + ceil32(_1080) + t + 192
                u = u + 32
                continue 
            mem[t + _1080 + 160] = 0
            _1278 = mem[_1073 + 64]
            mem[t + 64] = ceil32(_1080) + 160
            _1291 = mem[_1278]
            mem[ceil32(_1080) + t + 160] = mem[_1278]
            v = 0
            while v < _1291:
                mem[v + ceil32(_1080) + t + 192] = mem[v + _1278 + 32]
                v = v + 32
                continue 
            if ceil32(_1291) > _1291:
                mem[ceil32(_1080) + t + _1291 + 192] = 0
            mem[t + 96] = mem[_1073 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1291) + ceil32(_1080) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 513
    mem[floor32(arg1.length) + (32 * arg1.length) + 385] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 417] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 449] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 481] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1263 = mem[(32 * idx) + 128]
            _1264 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1264] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1263))
            staticcall address(_1263).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1270 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1290 = mem[_1270]
            require mem[_1270] <= test266151307()
            require _1270 + mem[_1270] + 31 < _1270 + return_data.size
            _1301 = mem[_1270 + mem[_1270]]
            if mem[_1270 + mem[_1270]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1270 + mem[_1270]])) + 1 < 0 or _1270 + ceil32(return_data.size) + ceil32(ceil32(mem[_1270 + mem[_1270]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1270 + ceil32(return_data.size) + ceil32(ceil32(mem[_1270 + mem[_1270]])) + 1
            mem[_1270 + ceil32(return_data.size)] = _1301
            require _1290 + _1301 + 32 <= return_data.size
            s = 0
            while s < _1301:
                mem[s + _1270 + ceil32(return_data.size) + 32] = mem[s + _1270 + _1290 + 32]
                s = s + 32
                continue 
            if ceil32(_1301) <= _1301:
                mem[_1264 + 32] = _1270 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1263))
                staticcall address(_1263).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1444 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1454 = mem[_1444]
                require mem[_1444] <= test266151307()
                require _1444 + mem[_1444] + 31 < _1444 + return_data.size
                _1467 = mem[_1444 + mem[_1444]]
                if mem[_1444 + mem[_1444]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1444 + mem[_1444]])) + 1 < 0 or _1444 + ceil32(return_data.size) + ceil32(ceil32(mem[_1444 + mem[_1444]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1444 + ceil32(return_data.size) + ceil32(ceil32(mem[_1444 + mem[_1444]])) + 1
                mem[_1444 + ceil32(return_data.size)] = _1467
                require _1454 + _1467 + 32 <= return_data.size
                s = 0
                while s < _1467:
                    mem[s + _1444 + ceil32(return_data.size) + 32] = mem[s + _1444 + _1454 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1467) <= _1467:
                    mem[_1264 + 64] = _1444 + ceil32(return_data.size)
                    require ext_code.size(address(_1263))
                    staticcall address(_1263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1637] == mem[_1637 + 31 len 1]
                    mem[_1264 + 96] = mem[_1637 + 31 len 1]
                else:
                    mem[_1444 + ceil32(return_data.size) + _1467 + 32] = 0
                    mem[_1264 + 64] = _1444 + ceil32(return_data.size)
                    require ext_code.size(address(_1263))
                    staticcall address(_1263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1642] == mem[_1642 + 31 len 1]
                    mem[_1264 + 96] = mem[_1642 + 31 len 1]
            else:
                mem[_1270 + ceil32(return_data.size) + _1301 + 32] = 0
                mem[_1264 + 32] = _1270 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1263))
                staticcall address(_1263).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1451 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1463 = mem[_1451]
                require mem[_1451] <= test266151307()
                require _1451 + mem[_1451] + 31 < _1451 + return_data.size
                _1473 = mem[_1451 + mem[_1451]]
                if mem[_1451 + mem[_1451]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1451 + mem[_1451]])) + 1 < 0 or _1451 + ceil32(return_data.size) + ceil32(ceil32(mem[_1451 + mem[_1451]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1451 + ceil32(return_data.size) + ceil32(ceil32(mem[_1451 + mem[_1451]])) + 1
                mem[_1451 + ceil32(return_data.size)] = _1473
                require _1463 + _1473 + 32 <= return_data.size
                s = 0
                while s < _1473:
                    mem[s + _1451 + ceil32(return_data.size) + 32] = mem[s + _1451 + _1463 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1473) <= _1473:
                    mem[_1264 + 64] = _1451 + ceil32(return_data.size)
                    require ext_code.size(address(_1263))
                    staticcall address(_1263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1638] == mem[_1638 + 31 len 1]
                    mem[_1264 + 96] = mem[_1638 + 31 len 1]
                else:
                    mem[_1451 + ceil32(return_data.size) + _1473 + 32] = 0
                    mem[_1264 + 64] = _1451 + ceil32(return_data.size)
                    require ext_code.size(address(_1263))
                    staticcall address(_1263).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1643] == mem[_1643 + 31 len 1]
                    mem[_1264 + 96] = mem[_1643 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _1264
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1267 = mem[64]
        mem[mem[64]] = 32
        _1269 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _1269) + 64
        u = mem[64] + 64
        while idx < _1269:
            mem[u] = t + -_1267 - 64
            _1418 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1420 = mem[_1418 + 32]
            mem[t + 32] = 128
            _1425 = mem[_1420]
            mem[t + 128] = mem[_1420]
            v = 0
            while v < _1425:
                mem[v + t + 160] = mem[v + _1420 + 32]
                v = v + 32
                continue 
            if ceil32(_1425) <= _1425:
                _1616 = mem[_1418 + 64]
                mem[t + 64] = ceil32(_1425) + 160
                _1622 = mem[_1616]
                mem[ceil32(_1425) + t + 160] = mem[_1616]
                v = 0
                while v < _1622:
                    mem[v + ceil32(_1425) + t + 192] = mem[v + _1616 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1622) > _1622:
                    mem[ceil32(_1425) + t + _1622 + 192] = 0
                mem[t + 96] = mem[_1418 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_1622) + ceil32(_1425) + t + 192
                u = u + 32
                continue 
            mem[t + _1425 + 160] = 0
            _1623 = mem[_1418 + 64]
            mem[t + 64] = ceil32(_1425) + 160
            _1636 = mem[_1623]
            mem[ceil32(_1425) + t + 160] = mem[_1623]
            v = 0
            while v < _1636:
                mem[v + ceil32(_1425) + t + 192] = mem[v + _1623 + 32]
                v = v + 32
                continue 
            if ceil32(_1636) > _1636:
                mem[ceil32(_1425) + t + _1636 + 192] = 0
            mem[t + 96] = mem[_1418 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1636) + ceil32(_1425) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 641
    mem[floor32(arg1.length) + (32 * arg1.length) + 513] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 545] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 577] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 609] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1608 = mem[(32 * idx) + 128]
            _1609 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1609] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1608))
            staticcall address(_1608).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1615 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1635 = mem[_1615]
            require mem[_1615] <= test266151307()
            require _1615 + mem[_1615] + 31 < _1615 + return_data.size
            _1646 = mem[_1615 + mem[_1615]]
            if mem[_1615 + mem[_1615]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1615 + mem[_1615]])) + 1 < 0 or _1615 + ceil32(return_data.size) + ceil32(ceil32(mem[_1615 + mem[_1615]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1615 + ceil32(return_data.size) + ceil32(ceil32(mem[_1615 + mem[_1615]])) + 1
            mem[_1615 + ceil32(return_data.size)] = _1646
            require _1635 + _1646 + 32 <= return_data.size
            s = 0
            while s < _1646:
                mem[s + _1615 + ceil32(return_data.size) + 32] = mem[s + _1615 + _1635 + 32]
                s = s + 32
                continue 
            if ceil32(_1646) <= _1646:
                mem[_1609 + 32] = _1615 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1608))
                staticcall address(_1608).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1789 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1799 = mem[_1789]
                require mem[_1789] <= test266151307()
                require _1789 + mem[_1789] + 31 < _1789 + return_data.size
                _1812 = mem[_1789 + mem[_1789]]
                if mem[_1789 + mem[_1789]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1789 + mem[_1789]])) + 1 < 0 or _1789 + ceil32(return_data.size) + ceil32(ceil32(mem[_1789 + mem[_1789]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1789 + ceil32(return_data.size) + ceil32(ceil32(mem[_1789 + mem[_1789]])) + 1
                mem[_1789 + ceil32(return_data.size)] = _1812
                require _1799 + _1812 + 32 <= return_data.size
                s = 0
                while s < _1812:
                    mem[s + _1789 + ceil32(return_data.size) + 32] = mem[s + _1789 + _1799 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1812) <= _1812:
                    mem[_1609 + 64] = _1789 + ceil32(return_data.size)
                    require ext_code.size(address(_1608))
                    staticcall address(_1608).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1982] == mem[_1982 + 31 len 1]
                    mem[_1609 + 96] = mem[_1982 + 31 len 1]
                else:
                    mem[_1789 + ceil32(return_data.size) + _1812 + 32] = 0
                    mem[_1609 + 64] = _1789 + ceil32(return_data.size)
                    require ext_code.size(address(_1608))
                    staticcall address(_1608).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1987 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1987] == mem[_1987 + 31 len 1]
                    mem[_1609 + 96] = mem[_1987 + 31 len 1]
            else:
                mem[_1615 + ceil32(return_data.size) + _1646 + 32] = 0
                mem[_1609 + 32] = _1615 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1608))
                staticcall address(_1608).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1796 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1808 = mem[_1796]
                require mem[_1796] <= test266151307()
                require _1796 + mem[_1796] + 31 < _1796 + return_data.size
                _1818 = mem[_1796 + mem[_1796]]
                if mem[_1796 + mem[_1796]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1796 + mem[_1796]])) + 1 < 0 or _1796 + ceil32(return_data.size) + ceil32(ceil32(mem[_1796 + mem[_1796]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1796 + ceil32(return_data.size) + ceil32(ceil32(mem[_1796 + mem[_1796]])) + 1
                mem[_1796 + ceil32(return_data.size)] = _1818
                require _1808 + _1818 + 32 <= return_data.size
                s = 0
                while s < _1818:
                    mem[s + _1796 + ceil32(return_data.size) + 32] = mem[s + _1796 + _1808 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1818) <= _1818:
                    mem[_1609 + 64] = _1796 + ceil32(return_data.size)
                    require ext_code.size(address(_1608))
                    staticcall address(_1608).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1983] == mem[_1983 + 31 len 1]
                    mem[_1609 + 96] = mem[_1983 + 31 len 1]
                else:
                    mem[_1796 + ceil32(return_data.size) + _1818 + 32] = 0
                    mem[_1609 + 64] = _1796 + ceil32(return_data.size)
                    require ext_code.size(address(_1608))
                    staticcall address(_1608).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1988 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1988] == mem[_1988 + 31 len 1]
                    mem[_1609 + 96] = mem[_1988 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _1609
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1612 = mem[64]
        mem[mem[64]] = 32
        _1614 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _1614) + 64
        u = mem[64] + 64
        while idx < _1614:
            mem[u] = t + -_1612 - 64
            _1763 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1765 = mem[_1763 + 32]
            mem[t + 32] = 128
            _1770 = mem[_1765]
            mem[t + 128] = mem[_1765]
            v = 0
            while v < _1770:
                mem[v + t + 160] = mem[v + _1765 + 32]
                v = v + 32
                continue 
            if ceil32(_1770) <= _1770:
                _1961 = mem[_1763 + 64]
                mem[t + 64] = ceil32(_1770) + 160
                _1967 = mem[_1961]
                mem[ceil32(_1770) + t + 160] = mem[_1961]
                v = 0
                while v < _1967:
                    mem[v + ceil32(_1770) + t + 192] = mem[v + _1961 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1967) > _1967:
                    mem[ceil32(_1770) + t + _1967 + 192] = 0
                mem[t + 96] = mem[_1763 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_1967) + ceil32(_1770) + t + 192
                u = u + 32
                continue 
            mem[t + _1770 + 160] = 0
            _1968 = mem[_1763 + 64]
            mem[t + 64] = ceil32(_1770) + 160
            _1981 = mem[_1968]
            mem[ceil32(_1770) + t + 160] = mem[_1968]
            v = 0
            while v < _1981:
                mem[v + ceil32(_1770) + t + 192] = mem[v + _1968 + 32]
                v = v + 32
                continue 
            if ceil32(_1981) > _1981:
                mem[ceil32(_1770) + t + _1981 + 192] = 0
            mem[t + 96] = mem[_1763 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1981) + ceil32(_1770) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 769
    mem[floor32(arg1.length) + (32 * arg1.length) + 641] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 673] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 705] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 737] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1953 = mem[(32 * idx) + 128]
            _1954 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1954] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1953))
            staticcall address(_1953).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1960 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1980 = mem[_1960]
            require mem[_1960] <= test266151307()
            require _1960 + mem[_1960] + 31 < _1960 + return_data.size
            _1991 = mem[_1960 + mem[_1960]]
            if mem[_1960 + mem[_1960]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1960 + mem[_1960]])) + 1 < 0 or _1960 + ceil32(return_data.size) + ceil32(ceil32(mem[_1960 + mem[_1960]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1960 + ceil32(return_data.size) + ceil32(ceil32(mem[_1960 + mem[_1960]])) + 1
            mem[_1960 + ceil32(return_data.size)] = _1991
            require _1980 + _1991 + 32 <= return_data.size
            s = 0
            while s < _1991:
                mem[s + _1960 + ceil32(return_data.size) + 32] = mem[s + _1960 + _1980 + 32]
                s = s + 32
                continue 
            if ceil32(_1991) <= _1991:
                mem[_1954 + 32] = _1960 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1953))
                staticcall address(_1953).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2134 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2144 = mem[_2134]
                require mem[_2134] <= test266151307()
                require _2134 + mem[_2134] + 31 < _2134 + return_data.size
                _2157 = mem[_2134 + mem[_2134]]
                if mem[_2134 + mem[_2134]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2134 + mem[_2134]])) + 1 < 0 or _2134 + ceil32(return_data.size) + ceil32(ceil32(mem[_2134 + mem[_2134]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2134 + ceil32(return_data.size) + ceil32(ceil32(mem[_2134 + mem[_2134]])) + 1
                mem[_2134 + ceil32(return_data.size)] = _2157
                require _2144 + _2157 + 32 <= return_data.size
                s = 0
                while s < _2157:
                    mem[s + _2134 + ceil32(return_data.size) + 32] = mem[s + _2134 + _2144 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2157) <= _2157:
                    mem[_1954 + 64] = _2134 + ceil32(return_data.size)
                    require ext_code.size(address(_1953))
                    staticcall address(_1953).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2327 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2327] == mem[_2327 + 31 len 1]
                    mem[_1954 + 96] = mem[_2327 + 31 len 1]
                else:
                    mem[_2134 + ceil32(return_data.size) + _2157 + 32] = 0
                    mem[_1954 + 64] = _2134 + ceil32(return_data.size)
                    require ext_code.size(address(_1953))
                    staticcall address(_1953).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2332] == mem[_2332 + 31 len 1]
                    mem[_1954 + 96] = mem[_2332 + 31 len 1]
            else:
                mem[_1960 + ceil32(return_data.size) + _1991 + 32] = 0
                mem[_1954 + 32] = _1960 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1953))
                staticcall address(_1953).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2141 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2153 = mem[_2141]
                require mem[_2141] <= test266151307()
                require _2141 + mem[_2141] + 31 < _2141 + return_data.size
                _2163 = mem[_2141 + mem[_2141]]
                if mem[_2141 + mem[_2141]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2141 + mem[_2141]])) + 1 < 0 or _2141 + ceil32(return_data.size) + ceil32(ceil32(mem[_2141 + mem[_2141]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2141 + ceil32(return_data.size) + ceil32(ceil32(mem[_2141 + mem[_2141]])) + 1
                mem[_2141 + ceil32(return_data.size)] = _2163
                require _2153 + _2163 + 32 <= return_data.size
                s = 0
                while s < _2163:
                    mem[s + _2141 + ceil32(return_data.size) + 32] = mem[s + _2141 + _2153 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2163) <= _2163:
                    mem[_1954 + 64] = _2141 + ceil32(return_data.size)
                    require ext_code.size(address(_1953))
                    staticcall address(_1953).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2328] == mem[_2328 + 31 len 1]
                    mem[_1954 + 96] = mem[_2328 + 31 len 1]
                else:
                    mem[_2141 + ceil32(return_data.size) + _2163 + 32] = 0
                    mem[_1954 + 64] = _2141 + ceil32(return_data.size)
                    require ext_code.size(address(_1953))
                    staticcall address(_1953).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2333] == mem[_2333 + 31 len 1]
                    mem[_1954 + 96] = mem[_2333 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _1954
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1957 = mem[64]
        mem[mem[64]] = 32
        _1959 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _1959) + 64
        u = mem[64] + 64
        while idx < _1959:
            mem[u] = t + -_1957 - 64
            _2108 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2110 = mem[_2108 + 32]
            mem[t + 32] = 128
            _2115 = mem[_2110]
            mem[t + 128] = mem[_2110]
            v = 0
            while v < _2115:
                mem[v + t + 160] = mem[v + _2110 + 32]
                v = v + 32
                continue 
            if ceil32(_2115) <= _2115:
                _2306 = mem[_2108 + 64]
                mem[t + 64] = ceil32(_2115) + 160
                _2312 = mem[_2306]
                mem[ceil32(_2115) + t + 160] = mem[_2306]
                v = 0
                while v < _2312:
                    mem[v + ceil32(_2115) + t + 192] = mem[v + _2306 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2312) > _2312:
                    mem[ceil32(_2115) + t + _2312 + 192] = 0
                mem[t + 96] = mem[_2108 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_2312) + ceil32(_2115) + t + 192
                u = u + 32
                continue 
            mem[t + _2115 + 160] = 0
            _2313 = mem[_2108 + 64]
            mem[t + 64] = ceil32(_2115) + 160
            _2326 = mem[_2313]
            mem[ceil32(_2115) + t + 160] = mem[_2313]
            v = 0
            while v < _2326:
                mem[v + ceil32(_2115) + t + 192] = mem[v + _2313 + 32]
                v = v + 32
                continue 
            if ceil32(_2326) > _2326:
                mem[ceil32(_2115) + t + _2326 + 192] = 0
            mem[t + 96] = mem[_2108 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_2326) + ceil32(_2115) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 897
    mem[floor32(arg1.length) + (32 * arg1.length) + 769] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 801] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 833] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 865] = 0
    mem[var44002] = var44001
    if not var44003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _2298 = mem[(32 * idx) + 128]
            _2299 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2299] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_2298))
            staticcall address(_2298).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2305 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2325 = mem[_2305]
            require mem[_2305] <= test266151307()
            require _2305 + mem[_2305] + 31 < _2305 + return_data.size
            _2336 = mem[_2305 + mem[_2305]]
            if mem[_2305 + mem[_2305]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2305 + mem[_2305]])) + 1 < 0 or _2305 + ceil32(return_data.size) + ceil32(ceil32(mem[_2305 + mem[_2305]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2305 + ceil32(return_data.size) + ceil32(ceil32(mem[_2305 + mem[_2305]])) + 1
            mem[_2305 + ceil32(return_data.size)] = _2336
            require _2325 + _2336 + 32 <= return_data.size
            s = 0
            while s < _2336:
                mem[s + _2305 + ceil32(return_data.size) + 32] = mem[s + _2305 + _2325 + 32]
                s = s + 32
                continue 
            if ceil32(_2336) <= _2336:
                mem[_2299 + 32] = _2305 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2298))
                staticcall address(_2298).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2479 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2489 = mem[_2479]
                require mem[_2479] <= test266151307()
                require _2479 + mem[_2479] + 31 < _2479 + return_data.size
                _2502 = mem[_2479 + mem[_2479]]
                if mem[_2479 + mem[_2479]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2479 + mem[_2479]])) + 1 < 0 or _2479 + ceil32(return_data.size) + ceil32(ceil32(mem[_2479 + mem[_2479]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2479 + ceil32(return_data.size) + ceil32(ceil32(mem[_2479 + mem[_2479]])) + 1
                mem[_2479 + ceil32(return_data.size)] = _2502
                require _2489 + _2502 + 32 <= return_data.size
                s = 0
                while s < _2502:
                    mem[s + _2479 + ceil32(return_data.size) + 32] = mem[s + _2479 + _2489 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2502) <= _2502:
                    mem[_2299 + 64] = _2479 + ceil32(return_data.size)
                    require ext_code.size(address(_2298))
                    staticcall address(_2298).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2672 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2672] == mem[_2672 + 31 len 1]
                    mem[_2299 + 96] = mem[_2672 + 31 len 1]
                else:
                    mem[_2479 + ceil32(return_data.size) + _2502 + 32] = 0
                    mem[_2299 + 64] = _2479 + ceil32(return_data.size)
                    require ext_code.size(address(_2298))
                    staticcall address(_2298).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2677] == mem[_2677 + 31 len 1]
                    mem[_2299 + 96] = mem[_2677 + 31 len 1]
            else:
                mem[_2305 + ceil32(return_data.size) + _2336 + 32] = 0
                mem[_2299 + 32] = _2305 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2298))
                staticcall address(_2298).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2486 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2498 = mem[_2486]
                require mem[_2486] <= test266151307()
                require _2486 + mem[_2486] + 31 < _2486 + return_data.size
                _2508 = mem[_2486 + mem[_2486]]
                if mem[_2486 + mem[_2486]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2486 + mem[_2486]])) + 1 < 0 or _2486 + ceil32(return_data.size) + ceil32(ceil32(mem[_2486 + mem[_2486]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2486 + ceil32(return_data.size) + ceil32(ceil32(mem[_2486 + mem[_2486]])) + 1
                mem[_2486 + ceil32(return_data.size)] = _2508
                require _2498 + _2508 + 32 <= return_data.size
                s = 0
                while s < _2508:
                    mem[s + _2486 + ceil32(return_data.size) + 32] = mem[s + _2486 + _2498 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2508) <= _2508:
                    mem[_2299 + 64] = _2486 + ceil32(return_data.size)
                    require ext_code.size(address(_2298))
                    staticcall address(_2298).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2673] == mem[_2673 + 31 len 1]
                    mem[_2299 + 96] = mem[_2673 + 31 len 1]
                else:
                    mem[_2486 + ceil32(return_data.size) + _2508 + 32] = 0
                    mem[_2299 + 64] = _2486 + ceil32(return_data.size)
                    require ext_code.size(address(_2298))
                    staticcall address(_2298).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2678 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2678] == mem[_2678 + 31 len 1]
                    mem[_2299 + 96] = mem[_2678 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _2299
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2302 = mem[64]
        mem[mem[64]] = 32
        _2304 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _2304) + 64
        u = mem[64] + 64
        while idx < _2304:
            mem[u] = t + -_2302 - 64
            _2453 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2455 = mem[_2453 + 32]
            mem[t + 32] = 128
            _2460 = mem[_2455]
            mem[t + 128] = mem[_2455]
            v = 0
            while v < _2460:
                mem[v + t + 160] = mem[v + _2455 + 32]
                v = v + 32
                continue 
            if ceil32(_2460) <= _2460:
                _2651 = mem[_2453 + 64]
                mem[t + 64] = ceil32(_2460) + 160
                _2657 = mem[_2651]
                mem[ceil32(_2460) + t + 160] = mem[_2651]
                v = 0
                while v < _2657:
                    mem[v + ceil32(_2460) + t + 192] = mem[v + _2651 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2657) > _2657:
                    mem[ceil32(_2460) + t + _2657 + 192] = 0
                mem[t + 96] = mem[_2453 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_2657) + ceil32(_2460) + t + 192
                u = u + 32
                continue 
            mem[t + _2460 + 160] = 0
            _2658 = mem[_2453 + 64]
            mem[t + 64] = ceil32(_2460) + 160
            _2671 = mem[_2658]
            mem[ceil32(_2460) + t + 160] = mem[_2658]
            v = 0
            while v < _2671:
                mem[v + ceil32(_2460) + t + 192] = mem[v + _2658 + 32]
                v = v + 32
                continue 
            if ceil32(_2671) > _2671:
                mem[ceil32(_2460) + t + _2671 + 192] = 0
            mem[t + 96] = mem[_2453 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_2671) + ceil32(_2460) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 1025
    mem[floor32(arg1.length) + (32 * arg1.length) + 897] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 929] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 961] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 993] = 0
    mem[var48002] = var48001
    if not var48003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _2643 = mem[(32 * idx) + 128]
            _2644 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2644] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_2643))
            staticcall address(_2643).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2650 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2670 = mem[_2650]
            require mem[_2650] <= test266151307()
            require _2650 + mem[_2650] + 31 < _2650 + return_data.size
            _2681 = mem[_2650 + mem[_2650]]
            if mem[_2650 + mem[_2650]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2650 + mem[_2650]])) + 1 < 0 or _2650 + ceil32(return_data.size) + ceil32(ceil32(mem[_2650 + mem[_2650]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2650 + ceil32(return_data.size) + ceil32(ceil32(mem[_2650 + mem[_2650]])) + 1
            mem[_2650 + ceil32(return_data.size)] = _2681
            require _2670 + _2681 + 32 <= return_data.size
            s = 0
            while s < _2681:
                mem[s + _2650 + ceil32(return_data.size) + 32] = mem[s + _2650 + _2670 + 32]
                s = s + 32
                continue 
            if ceil32(_2681) <= _2681:
                mem[_2644 + 32] = _2650 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2643))
                staticcall address(_2643).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2824 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2834 = mem[_2824]
                require mem[_2824] <= test266151307()
                require _2824 + mem[_2824] + 31 < _2824 + return_data.size
                _2847 = mem[_2824 + mem[_2824]]
                if mem[_2824 + mem[_2824]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2824 + mem[_2824]])) + 1 < 0 or _2824 + ceil32(return_data.size) + ceil32(ceil32(mem[_2824 + mem[_2824]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2824 + ceil32(return_data.size) + ceil32(ceil32(mem[_2824 + mem[_2824]])) + 1
                mem[_2824 + ceil32(return_data.size)] = _2847
                require _2834 + _2847 + 32 <= return_data.size
                s = 0
                while s < _2847:
                    mem[s + _2824 + ceil32(return_data.size) + 32] = mem[s + _2824 + _2834 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2847) <= _2847:
                    mem[_2644 + 64] = _2824 + ceil32(return_data.size)
                    require ext_code.size(address(_2643))
                    staticcall address(_2643).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3017 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3017] == mem[_3017 + 31 len 1]
                    mem[_2644 + 96] = mem[_3017 + 31 len 1]
                else:
                    mem[_2824 + ceil32(return_data.size) + _2847 + 32] = 0
                    mem[_2644 + 64] = _2824 + ceil32(return_data.size)
                    require ext_code.size(address(_2643))
                    staticcall address(_2643).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3022] == mem[_3022 + 31 len 1]
                    mem[_2644 + 96] = mem[_3022 + 31 len 1]
            else:
                mem[_2650 + ceil32(return_data.size) + _2681 + 32] = 0
                mem[_2644 + 32] = _2650 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2643))
                staticcall address(_2643).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2831 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2843 = mem[_2831]
                require mem[_2831] <= test266151307()
                require _2831 + mem[_2831] + 31 < _2831 + return_data.size
                _2853 = mem[_2831 + mem[_2831]]
                if mem[_2831 + mem[_2831]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2831 + mem[_2831]])) + 1 < 0 or _2831 + ceil32(return_data.size) + ceil32(ceil32(mem[_2831 + mem[_2831]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2831 + ceil32(return_data.size) + ceil32(ceil32(mem[_2831 + mem[_2831]])) + 1
                mem[_2831 + ceil32(return_data.size)] = _2853
                require _2843 + _2853 + 32 <= return_data.size
                s = 0
                while s < _2853:
                    mem[s + _2831 + ceil32(return_data.size) + 32] = mem[s + _2831 + _2843 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2853) <= _2853:
                    mem[_2644 + 64] = _2831 + ceil32(return_data.size)
                    require ext_code.size(address(_2643))
                    staticcall address(_2643).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3018 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3018] == mem[_3018 + 31 len 1]
                    mem[_2644 + 96] = mem[_3018 + 31 len 1]
                else:
                    mem[_2831 + ceil32(return_data.size) + _2853 + 32] = 0
                    mem[_2644 + 64] = _2831 + ceil32(return_data.size)
                    require ext_code.size(address(_2643))
                    staticcall address(_2643).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3023 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3023] == mem[_3023 + 31 len 1]
                    mem[_2644 + 96] = mem[_3023 + 31 len 1]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _2644
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2647 = mem[64]
        mem[mem[64]] = 32
        _2649 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + (32 * _2649) + 64
        u = mem[64] + 64
        while idx < _2649:
            mem[u] = t + -_2647 - 64
            _2798 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2800 = mem[_2798 + 32]
            mem[t + 32] = 128
            _2805 = mem[_2800]
            mem[t + 128] = mem[_2800]
            v = 0
            while v < _2805:
                mem[v + t + 160] = mem[v + _2800 + 32]
                v = v + 32
                continue 
            if ceil32(_2805) <= _2805:
                _2996 = mem[_2798 + 64]
                mem[t + 64] = ceil32(_2805) + 160
                _3002 = mem[_2996]
                mem[ceil32(_2805) + t + 160] = mem[_2996]
                v = 0
                while v < _3002:
                    mem[v + ceil32(_2805) + t + 192] = mem[v + _2996 + 32]
                    v = v + 32
                    continue 
                if ceil32(_3002) > _3002:
                    mem[ceil32(_2805) + t + _3002 + 192] = 0
                mem[t + 96] = mem[_2798 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_3002) + ceil32(_2805) + t + 192
                u = u + 32
                continue 
            mem[t + _2805 + 160] = 0
            _3003 = mem[_2798 + 64]
            mem[t + 64] = ceil32(_2805) + 160
            _3016 = mem[_3003]
            mem[ceil32(_2805) + t + 160] = mem[_3003]
            v = 0
            while v < _3016:
                mem[v + ceil32(_2805) + t + 192] = mem[v + _3003 + 32]
                v = v + 32
                continue 
            if ceil32(_3016) > _3016:
                mem[ceil32(_2805) + t + _3016 + 192] = 0
            mem[t + 96] = mem[_2798 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = ceil32(_3016) + ceil32(_2805) + t + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[floor32(arg1.length) + (32 * arg1.length) + 1025] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 1057] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 1089] = 96
    mem[floor32(arg1.length) + (32 * arg1.length) + 1121] = 0
    mem[var52002] = var52001
    if var52003 - 1:
        # nil
    else:
        if var103001 >= arg1.length:
            mem[floor32(arg1.length) + (32 * arg1.length) + 1153] = 32
            mem[floor32(arg1.length) + (32 * arg1.length) + 1185] = arg1.length
            if var78001 >= arg1.length:
                return memory
                  from floor32(arg1.length) + (32 * arg1.length) + 1153
                   len var78003 + -floor32(arg1.length) + -(32 * arg1.length) - 1153
            # nil
        else:
            if var103001 >= arg1.length:
                revert with 0, 50
            _2988 = mem[(32 * var103001) + 128]
            mem[floor32(arg1.length) + (32 * arg1.length) + 1153] = mem[(32 * var103001) + 140 len 20]
            mem[floor32(arg1.length) + (32 * arg1.length) + 1281] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_2988))
            staticcall address(_2988).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(arg1.length) + (32 * arg1.length) + 1281 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 1281
            require return_data.size >= 32
            _3015 = mem[floor32(arg1.length) + (32 * arg1.length) + 1281]
            require mem[floor32(arg1.length) + (32 * arg1.length) + 1281] <= test266151307()
            require floor32(arg1.length) + (32 * arg1.length) + mem[floor32(arg1.length) + (32 * arg1.length) + 1281] + 1312 < floor32(arg1.length) + (32 * arg1.length) + return_data.size + 1281
            _3026 = mem[floor32(arg1.length) + (32 * arg1.length) + mem[floor32(arg1.length) + (32 * arg1.length) + 1281] + 1281]
            if mem[floor32(arg1.length) + (32 * arg1.length) + mem[floor32(arg1.length) + (32 * arg1.length) + 1281] + 1281] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[floor32(arg1.length) + (32 * arg1.length) + mem[floor32(arg1.length) + (32 * arg1.length) + 1281] + 1281])) + 1 < 0 or floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + ceil32(ceil32(mem[floor32(arg1.length) + (32 * arg1.length) + mem[floor32(arg1.length) + (32 * arg1.length) + 1281] + 1281])) + 1282 > test266151307():
                revert with 0, 65
            mem[64] = floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + ceil32(ceil32(mem[floor32(arg1.length) + (32 * arg1.length) + mem[floor32(arg1.length) + (32 * arg1.length) + 1281] + 1281])) + 1282
            mem[floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 1281] = _3026
            require _3015 + _3026 + 32 <= return_data.size
            mem[floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 1313 len ceil32(_3026)] = mem[floor32(arg1.length) + (32 * arg1.length) + _3015 + 1313 len ceil32(_3026)]
            var72001 = ceil32(_3026)
            if ceil32(_3026) <= _3026:
                mem[floor32(arg1.length) + (32 * arg1.length) + 1185] = floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 1281
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2988))
                staticcall address(_2988).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3169 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3169] <= test266151307()
                require _3169 + mem[_3169] + 31 < _3169 + return_data.size
                if mem[_3169 + mem[_3169]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_3169 + mem[_3169]])) + 1 < 0 or _3169 + ceil32(return_data.size) + ceil32(ceil32(mem[_3169 + mem[_3169]])) + 1 > test266151307():
                    revert with 0, 65
                require mem[_3169] + mem[_3169 + mem[_3169]] + 32 <= return_data.size
                # nil
            else:
                mem[floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + _3026 + 1313] = 0
                mem[floor32(arg1.length) + (32 * arg1.length) + 1185] = floor32(arg1.length) + (32 * arg1.length) + ceil32(return_data.size) + 1281
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2988))
                staticcall address(_2988).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3176 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3176] <= test266151307()
                require _3176 + mem[_3176] + 31 < _3176 + return_data.size
                if mem[_3176 + mem[_3176]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_3176 + mem[_3176]])) + 1 < 0 or _3176 + ceil32(return_data.size) + ceil32(ceil32(mem[_3176 + mem[_3176]])) + 1 > test266151307():
                    revert with 0, 65
                require mem[_3176] + mem[_3176 + mem[_3176]] + 32 <= return_data.size
                # nil
}



}
