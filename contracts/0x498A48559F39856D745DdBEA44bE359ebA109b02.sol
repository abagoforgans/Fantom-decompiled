contract main {




// =====================  Runtime code  =====================


address WFTMAddress;

function WFTM() payable {
    return WFTMAddress
}

function _fallback() payable {
    revert
}

function sub_dc8c3d03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(arg1)
}

function sub_59d4f87e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], address(arg1)
}

function allPairs(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairs(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function allPairsInfo(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        if (2 * arg2) + arg3 - 1 <= ext_call.return_data[0]:
            idx = arg2
            while idx < arg2 + arg3 - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_59] == mem[_59 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_59 + 12 len 20]
                idx = idx + 1
                continue 
            _46 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _50 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 96
            t = ceil32(return_data.size) + 128
            while idx < _50:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _46 + (32 * _50) + -mem[64] + 96
        idx = arg2
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_61] == mem[_61 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_61 + 12 len 20]
            idx = idx + 1
            continue 
        _47 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _52 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + 128
        while idx < _52:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _47 + (32 * _52) + -mem[64] + 96
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if (2 * arg2) + arg3 - 1 <= ext_call.return_data[0]:
        idx = arg2
        while idx < arg2 + arg3 - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_63] == mem[_63 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_63 + 12 len 20]
            idx = idx + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _54 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + 128
        while idx < _54:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _48 + (32 * _54) + -mem[64] + 96
    idx = arg2
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_65] == mem[_65 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_65 + 12 len 20]
        idx = idx + 1
        continue 
    _49 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = 64
    _56 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = mem[64] + 96
    t = ceil32(return_data.size) + 128
    while idx < _56:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _49 + (32 * _56) + -mem[64] + 96
}

function sub_31cea52d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        if (2 * arg2) + arg3 - 1 <= ext_call.return_data[0]:
            idx = arg2
            while idx < arg2 + arg3 - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_220] == mem[_220 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_220 + 12 len 20]
                idx = idx + 1
                continue 
            _398 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _398:
                require idx < mem[ceil32(return_data.size) + 96]
                _407 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_443] == mem[_443 + 12 len 20]
                if mem[_443 + 12 len 20] == WFTMAddress:
                    _462 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_462] = 0
                    mem[_462 + 32] = 0
                    mem[_462 + 64] = 0
                    require ext_code.size(address(_407))
                    staticcall address(_407).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _486 = mem[_482]
                    require mem[_482] == mem[_482 + 18 len 14]
                    _490 = mem[_482 + 32]
                    require mem[_482 + 32] == mem[_482 + 50 len 14]
                    require mem[_482 + 64] == mem[_482 + 92 len 4]
                    require ext_code.size(address(_407))
                    staticcall address(_407).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_526] == mem[_526 + 12 len 20]
                    if mem[_526 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _490)
                        mem[_462] = Mask(112, 0, _486)
                        mem[_462 + 32] = Mask(112, 0, _490)
                        mem[_462 + 64] = 10^18 * Mask(112, 0, _486) / Mask(112, 0, _490)
                    else:
                        require Mask(112, 0, _486)
                        mem[_462] = Mask(112, 0, _490)
                        mem[_462 + 32] = Mask(112, 0, _486)
                        mem[_462 + 64] = 10^18 * Mask(112, 0, _490) / Mask(112, 0, _486)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _462
                else:
                    require ext_code.size(address(_407))
                    staticcall address(_407).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_463] == mem[_463 + 12 len 20]
                    if mem[_463 + 12 len 20] == WFTMAddress:
                        _494 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_494] = 0
                        mem[_494 + 32] = 0
                        mem[_494 + 64] = 0
                        require ext_code.size(address(_407))
                        staticcall address(_407).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _522 = mem[_510]
                        require mem[_510] == mem[_510 + 18 len 14]
                        _531 = mem[_510 + 32]
                        require mem[_510 + 32] == mem[_510 + 50 len 14]
                        require mem[_510 + 64] == mem[_510 + 92 len 4]
                        require ext_code.size(address(_407))
                        staticcall address(_407).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _552 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_552] == mem[_552 + 12 len 20]
                        if mem[_552 + 12 len 20] == WFTMAddress:
                            require Mask(112, 0, _531)
                            mem[_494] = Mask(112, 0, _522)
                            mem[_494 + 32] = Mask(112, 0, _531)
                            mem[_494 + 64] = 10^18 * Mask(112, 0, _522) / Mask(112, 0, _531)
                        else:
                            require Mask(112, 0, _522)
                            mem[_494] = Mask(112, 0, _531)
                            mem[_494 + 32] = Mask(112, 0, _522)
                            mem[_494 + 64] = 10^18 * Mask(112, 0, _531) / Mask(112, 0, _522)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _494
                _398 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
            _406 = mem[64]
            mem[mem[64]] = 32
            _414 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _414:
                _574 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_574 + 32]
                mem[t + 64] = mem[_574 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _406 + (96 * _414) + -mem[64] + 64
        idx = arg2
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_223] == mem[_223 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_223 + 12 len 20]
            idx = idx + 1
            continue 
        _399 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while idx < _399:
            require idx < mem[ceil32(return_data.size) + 96]
            _409 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _445 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_445] == mem[_445 + 12 len 20]
            if mem[_445 + 12 len 20] == WFTMAddress:
                _464 = mem[64]
                mem[64] = mem[64] + 96
                mem[_464] = 0
                mem[_464 + 32] = 0
                mem[_464 + 64] = 0
                require ext_code.size(address(_409))
                staticcall address(_409).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _483 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _487 = mem[_483]
                require mem[_483] == mem[_483 + 18 len 14]
                _491 = mem[_483 + 32]
                require mem[_483 + 32] == mem[_483 + 50 len 14]
                require mem[_483 + 64] == mem[_483 + 92 len 4]
                require ext_code.size(address(_409))
                staticcall address(_409).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _527 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_527] == mem[_527 + 12 len 20]
                if mem[_527 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _491)
                    mem[_464] = Mask(112, 0, _487)
                    mem[_464 + 32] = Mask(112, 0, _491)
                    mem[_464 + 64] = 10^18 * Mask(112, 0, _487) / Mask(112, 0, _491)
                else:
                    require Mask(112, 0, _487)
                    mem[_464] = Mask(112, 0, _491)
                    mem[_464 + 32] = Mask(112, 0, _487)
                    mem[_464 + 64] = 10^18 * Mask(112, 0, _491) / Mask(112, 0, _487)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _464
            else:
                require ext_code.size(address(_409))
                staticcall address(_409).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == mem[_465 + 12 len 20]
                if mem[_465 + 12 len 20] == WFTMAddress:
                    _495 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_495] = 0
                    mem[_495 + 32] = 0
                    mem[_495 + 64] = 0
                    require ext_code.size(address(_409))
                    staticcall address(_409).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _523 = mem[_511]
                    require mem[_511] == mem[_511 + 18 len 14]
                    _533 = mem[_511 + 32]
                    require mem[_511 + 32] == mem[_511 + 50 len 14]
                    require mem[_511 + 64] == mem[_511 + 92 len 4]
                    require ext_code.size(address(_409))
                    staticcall address(_409).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_555] == mem[_555 + 12 len 20]
                    if mem[_555 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _533)
                        mem[_495] = Mask(112, 0, _523)
                        mem[_495 + 32] = Mask(112, 0, _533)
                        mem[_495 + 64] = 10^18 * Mask(112, 0, _523) / Mask(112, 0, _533)
                    else:
                        require Mask(112, 0, _523)
                        mem[_495] = Mask(112, 0, _533)
                        mem[_495 + 32] = Mask(112, 0, _523)
                        mem[_495 + 64] = 10^18 * Mask(112, 0, _533) / Mask(112, 0, _523)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _495
            _399 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            continue 
        _408 = mem[64]
        mem[mem[64]] = 32
        _415 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _415:
            _578 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_578 + 32]
            mem[t + 64] = mem[_578 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _408 + (96 * _415) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if (2 * arg2) + arg3 - 1 <= ext_call.return_data[0]:
        idx = arg2
        while idx < arg2 + arg3 - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == mem[_226 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_226 + 12 len 20]
            idx = idx + 1
            continue 
        _400 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while idx < _400:
            require idx < mem[ceil32(return_data.size) + 96]
            _411 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _447 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_447] == mem[_447 + 12 len 20]
            if mem[_447 + 12 len 20] == WFTMAddress:
                _466 = mem[64]
                mem[64] = mem[64] + 96
                mem[_466] = 0
                mem[_466 + 32] = 0
                mem[_466 + 64] = 0
                require ext_code.size(address(_411))
                staticcall address(_411).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _488 = mem[_484]
                require mem[_484] == mem[_484 + 18 len 14]
                _492 = mem[_484 + 32]
                require mem[_484 + 32] == mem[_484 + 50 len 14]
                require mem[_484 + 64] == mem[_484 + 92 len 4]
                require ext_code.size(address(_411))
                staticcall address(_411).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_528] == mem[_528 + 12 len 20]
                if mem[_528 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _492)
                    mem[_466] = Mask(112, 0, _488)
                    mem[_466 + 32] = Mask(112, 0, _492)
                    mem[_466 + 64] = 10^18 * Mask(112, 0, _488) / Mask(112, 0, _492)
                else:
                    require Mask(112, 0, _488)
                    mem[_466] = Mask(112, 0, _492)
                    mem[_466 + 32] = Mask(112, 0, _488)
                    mem[_466 + 64] = 10^18 * Mask(112, 0, _492) / Mask(112, 0, _488)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _466
            else:
                require ext_code.size(address(_411))
                staticcall address(_411).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_467] == mem[_467 + 12 len 20]
                if mem[_467 + 12 len 20] == WFTMAddress:
                    _496 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_496] = 0
                    mem[_496 + 32] = 0
                    mem[_496 + 64] = 0
                    require ext_code.size(address(_411))
                    staticcall address(_411).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _524 = mem[_512]
                    require mem[_512] == mem[_512 + 18 len 14]
                    _535 = mem[_512 + 32]
                    require mem[_512 + 32] == mem[_512 + 50 len 14]
                    require mem[_512 + 64] == mem[_512 + 92 len 4]
                    require ext_code.size(address(_411))
                    staticcall address(_411).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _558 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_558] == mem[_558 + 12 len 20]
                    if mem[_558 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _535)
                        mem[_496] = Mask(112, 0, _524)
                        mem[_496 + 32] = Mask(112, 0, _535)
                        mem[_496 + 64] = 10^18 * Mask(112, 0, _524) / Mask(112, 0, _535)
                    else:
                        require Mask(112, 0, _524)
                        mem[_496] = Mask(112, 0, _535)
                        mem[_496 + 32] = Mask(112, 0, _524)
                        mem[_496 + 64] = 10^18 * Mask(112, 0, _535) / Mask(112, 0, _524)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _496
            _400 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            continue 
        _410 = mem[64]
        mem[mem[64]] = 32
        _416 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _416:
            _582 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_582 + 32]
            mem[t + 64] = mem[_582 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _410 + (96 * _416) + -mem[64] + 64
    idx = arg2
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_229] == mem[_229 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_229 + 12 len 20]
        idx = idx + 1
        continue 
    _401 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _401:
        require idx < mem[ceil32(return_data.size) + 96]
        _413 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _449 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_449] == mem[_449 + 12 len 20]
        if mem[_449 + 12 len 20] == WFTMAddress:
            _468 = mem[64]
            mem[64] = mem[64] + 96
            mem[_468] = 0
            mem[_468 + 32] = 0
            mem[_468 + 64] = 0
            require ext_code.size(address(_413))
            staticcall address(_413).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _489 = mem[_485]
            require mem[_485] == mem[_485 + 18 len 14]
            _493 = mem[_485 + 32]
            require mem[_485 + 32] == mem[_485 + 50 len 14]
            require mem[_485 + 64] == mem[_485 + 92 len 4]
            require ext_code.size(address(_413))
            staticcall address(_413).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _529 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_529] == mem[_529 + 12 len 20]
            if mem[_529 + 12 len 20] == WFTMAddress:
                require Mask(112, 0, _493)
                mem[_468] = Mask(112, 0, _489)
                mem[_468 + 32] = Mask(112, 0, _493)
                mem[_468 + 64] = 10^18 * Mask(112, 0, _489) / Mask(112, 0, _493)
            else:
                require Mask(112, 0, _489)
                mem[_468] = Mask(112, 0, _493)
                mem[_468 + 32] = Mask(112, 0, _489)
                mem[_468 + 64] = 10^18 * Mask(112, 0, _493) / Mask(112, 0, _489)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _468
        else:
            require ext_code.size(address(_413))
            staticcall address(_413).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _469 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_469] == mem[_469 + 12 len 20]
            if mem[_469 + 12 len 20] == WFTMAddress:
                _497 = mem[64]
                mem[64] = mem[64] + 96
                mem[_497] = 0
                mem[_497 + 32] = 0
                mem[_497 + 64] = 0
                require ext_code.size(address(_413))
                staticcall address(_413).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _525 = mem[_513]
                require mem[_513] == mem[_513 + 18 len 14]
                _537 = mem[_513 + 32]
                require mem[_513 + 32] == mem[_513 + 50 len 14]
                require mem[_513 + 64] == mem[_513 + 92 len 4]
                require ext_code.size(address(_413))
                staticcall address(_413).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _561 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_561] == mem[_561 + 12 len 20]
                if mem[_561 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _537)
                    mem[_497] = Mask(112, 0, _525)
                    mem[_497 + 32] = Mask(112, 0, _537)
                    mem[_497 + 64] = 10^18 * Mask(112, 0, _525) / Mask(112, 0, _537)
                else:
                    require Mask(112, 0, _525)
                    mem[_497] = Mask(112, 0, _537)
                    mem[_497 + 32] = Mask(112, 0, _525)
                    mem[_497 + 64] = 10^18 * Mask(112, 0, _537) / Mask(112, 0, _525)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _497
        _401 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        continue 
    _412 = mem[64]
    mem[mem[64]] = 32
    _417 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _417:
        _586 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_586 + 32]
        mem[t + 64] = mem[_586 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _412 + (96 * _417) + -mem[64] + 64
}



}
