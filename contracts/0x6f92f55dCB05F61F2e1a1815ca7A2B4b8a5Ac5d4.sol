contract main {




// =====================  Runtime code  =====================


#
#  - sub_2fc8ca9c(?)
#
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
    if arg3 + arg2 > ext_call.return_data[0]:
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_87] == mem[_87 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_87 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _68 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _74 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 96
            t = ceil32(return_data.size) + 128
            while idx < _74:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _68 + (32 * _74) + -mem[64] + 96
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_89] == mem[_89 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_89 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _69 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _76 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + 128
        while idx < _76:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _69 + (32 * _76) + -mem[64] + 96
    if arg3:
        require arg3 <= test266151307()
        mem[ceil32(return_data.size) + 96] = arg3
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
        if not arg3:
            idx = arg2
            s = 0
            while idx < arg3 + arg2:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_91] == mem[_91 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_91 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _70 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _78 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 96
            t = ceil32(return_data.size) + 128
            while idx < _78:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _70 + (32 * _78) + -mem[64] + 96
        mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = arg2
        s = 0
        while idx < arg3 + arg2:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_93] == mem[_93 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_93 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _80 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + 128
        while idx < _80:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _71 + (32 * _80) + -mem[64] + 96
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_95] == mem[_95 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_95 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _82 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + 128
        while idx < _82:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _72 + (32 * _82) + -mem[64] + 96
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    idx = arg2
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_97] == mem[_97 + 12 len 20]
        require s < mem[ceil32(return_data.size) + 96]
        mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_97 + 12 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    _73 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = 64
    _84 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = mem[64] + 96
    t = ceil32(return_data.size) + 128
    while idx < _84:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _73 + (32 * _84) + -mem[64] + 96
}

function sub_e462e52f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if 0 > ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg2))
                staticcall address(arg2).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _211 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_211] == mem[_211 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_211 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _375 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _375:
                require idx < mem[ceil32(return_data.size) + 96]
                _384 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_400] == mem[_400 + 12 len 20]
                require ext_code.size(address(_384))
                if address(arg1) == mem[_400 + 12 len 20]:
                    staticcall address(_384).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _435 = mem[_427]
                    require mem[_427] == mem[_427 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_435)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_435)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _459 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_459] == mem[_459 + 12 len 20]
                    if mem[_459 + 12 len 20]:
                        require ext_code.size(address(_384))
                        staticcall address(_384).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_491] == mem[_491 + 12 len 20]
                        if mem[_491 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_384))
                            staticcall address(_384).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_523] == mem[_523 + 12 len 20]
                else:
                    staticcall address(_384).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _436 = mem[_428]
                    require mem[_428] == mem[_428 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_436)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_436)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_463] == mem[_463 + 12 len 20]
                    if mem[_463 + 12 len 20]:
                        require ext_code.size(address(_384))
                        staticcall address(_384).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_495] == mem[_495 + 12 len 20]
                        if mem[_495 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_384))
                            staticcall address(_384).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_527] == mem[_527 + 12 len 20]
                _375 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg2))
                staticcall address(arg2).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _216 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_216] == mem[_216 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_216 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _376 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _376:
                require idx < mem[ceil32(return_data.size) + 96]
                _388 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_402] == mem[_402 + 12 len 20]
                require ext_code.size(address(_388))
                if address(arg1) == mem[_402 + 12 len 20]:
                    staticcall address(_388).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _437 = mem[_429]
                    require mem[_429] == mem[_429 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_437)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_437)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _460 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_460] == mem[_460 + 12 len 20]
                    if mem[_460 + 12 len 20]:
                        require ext_code.size(address(_388))
                        staticcall address(_388).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_492] == mem[_492 + 12 len 20]
                        if mem[_492 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_388))
                            staticcall address(_388).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_524] == mem[_524 + 12 len 20]
                else:
                    staticcall address(_388).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _438 = mem[_430]
                    require mem[_430] == mem[_430 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_438)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_438)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_464] == mem[_464 + 12 len 20]
                    if mem[_464 + 12 len 20]:
                        require ext_code.size(address(_388))
                        staticcall address(_388).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_496] == mem[_496 + 12 len 20]
                        if mem[_496 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_388))
                            staticcall address(_388).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_528] == mem[_528 + 12 len 20]
                _376 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
    else:
        if not ext_call.return_data[0]:
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg2))
                staticcall address(arg2).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _221 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_221] == mem[_221 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_221 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _377 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _377:
                require idx < mem[ceil32(return_data.size) + 96]
                _392 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_404] == mem[_404 + 12 len 20]
                require ext_code.size(address(_392))
                if address(arg1) == mem[_404 + 12 len 20]:
                    staticcall address(_392).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _439 = mem[_431]
                    require mem[_431] == mem[_431 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_439)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_439)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _461 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_461] == mem[_461 + 12 len 20]
                    if mem[_461 + 12 len 20]:
                        require ext_code.size(address(_392))
                        staticcall address(_392).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_493] == mem[_493 + 12 len 20]
                        if mem[_493 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_392))
                            staticcall address(_392).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_525] == mem[_525 + 12 len 20]
                else:
                    staticcall address(_392).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _440 = mem[_432]
                    require mem[_432] == mem[_432 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_440)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_440)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_465] == mem[_465 + 12 len 20]
                    if mem[_465 + 12 len 20]:
                        require ext_code.size(address(_392))
                        staticcall address(_392).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _497 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_497] == mem[_497 + 12 len 20]
                        if mem[_497 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_392))
                            staticcall address(_392).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _529 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_529] == mem[_529 + 12 len 20]
                _377 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg2))
                staticcall address(arg2).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_226] == mem[_226 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_226 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _378 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _378:
                require idx < mem[ceil32(return_data.size) + 96]
                _396 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_406] == mem[_406 + 12 len 20]
                require ext_code.size(address(_396))
                if address(arg1) == mem[_406 + 12 len 20]:
                    staticcall address(_396).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _441 = mem[_433]
                    require mem[_433] == mem[_433 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_441)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_441)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_462] == mem[_462 + 12 len 20]
                    if mem[_462 + 12 len 20]:
                        require ext_code.size(address(_396))
                        staticcall address(_396).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_494] == mem[_494 + 12 len 20]
                        if mem[_494 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_396))
                            staticcall address(_396).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _526 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_526] == mem[_526 + 12 len 20]
                else:
                    staticcall address(_396).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _434 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _442 = mem[_434]
                    require mem[_434] == mem[_434 + 12 len 20]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = address(_442)
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(_442)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_466] == mem[_466 + 12 len 20]
                    if mem[_466 + 12 len 20]:
                        require ext_code.size(address(_396))
                        staticcall address(_396).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _498 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_498] == mem[_498 + 12 len 20]
                        if mem[_498 + 12 len 20] != address(arg1):
                            require ext_code.size(address(_396))
                            staticcall address(_396).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _530 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_530] == mem[_530 + 12 len 20]
                _378 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
    return 0
}



}
