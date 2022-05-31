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
                _261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_261] == mem[_261 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_261 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _479 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _479:
                require idx < mem[ceil32(return_data.size) + 96]
                _488 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _495 = mem[64]
                mem[64] = mem[64] + 224
                mem[_495] = 0
                mem[_495 + 32] = 0
                mem[_495 + 64] = 0
                mem[_495 + 96] = 0
                mem[_495 + 128] = 0
                mem[_495 + 160] = 0
                mem[_495 + 192] = 0
                require ext_code.size(address(_488))
                staticcall address(_488).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _511 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _515 = mem[_511]
                require mem[_511] == mem[_511 + 18 len 14]
                require mem[_511 + 32] == mem[_511 + 50 len 14]
                require mem[_511 + 64] == mem[_511 + 92 len 4]
                mem[_495 + 192] = mem[_511 + 50 len 14]
                mem[_495 + 160] = Mask(112, 0, _515)
                require ext_code.size(address(_488))
                staticcall address(_488).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _535 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_535] == mem[_535 + 12 len 20]
                if address(arg1) == mem[_535 + 12 len 20]:
                    _544 = mem[_495 + 192]
                    require ext_code.size(address(_488))
                    staticcall address(_488).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_575] == mem[_575 + 12 len 20]
                    mem[_495 + 128] = mem[_575 + 12 len 20]
                    mem[_495 + 96] = _544
                    mem[_495 + 64] = Mask(112, 0, _515)
                    if 10^17 <= Mask(112, 0, _515):
                        _591 = mem[_495 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_591)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_591)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_615] == mem[_615 + 12 len 20]
                        if mem[_615 + 12 len 20]:
                            require ext_code.size(address(_488))
                            staticcall address(_488).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_647] == mem[_647 + 12 len 20]
                            if mem[_647 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_488))
                                staticcall address(_488).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _679 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_679] == mem[_679 + 12 len 20]
                else:
                    _547 = mem[_495 + 192]
                    require ext_code.size(address(_488))
                    staticcall address(_488).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_576] == mem[_576 + 12 len 20]
                    mem[_495 + 128] = mem[_576 + 12 len 20]
                    mem[_495 + 96] = Mask(112, 0, _515)
                    mem[_495 + 64] = _547
                    if 10^17 <= _547:
                        _599 = mem[_495 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_599)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_599)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_619] == mem[_619 + 12 len 20]
                        if mem[_619 + 12 len 20]:
                            require ext_code.size(address(_488))
                            staticcall address(_488).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_651] == mem[_651 + 12 len 20]
                            if mem[_651 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_488))
                                staticcall address(_488).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _683 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_683] == mem[_683 + 12 len 20]
                _479 = mem[ceil32(return_data.size) + 96]
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
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_264] == mem[_264 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_264 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _480 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _480:
                require idx < mem[ceil32(return_data.size) + 96]
                _490 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _496 = mem[64]
                mem[64] = mem[64] + 224
                mem[_496] = 0
                mem[_496 + 32] = 0
                mem[_496 + 64] = 0
                mem[_496 + 96] = 0
                mem[_496 + 128] = 0
                mem[_496 + 160] = 0
                mem[_496 + 192] = 0
                require ext_code.size(address(_490))
                staticcall address(_490).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _512 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _516 = mem[_512]
                require mem[_512] == mem[_512 + 18 len 14]
                require mem[_512 + 32] == mem[_512 + 50 len 14]
                require mem[_512 + 64] == mem[_512 + 92 len 4]
                mem[_496 + 192] = mem[_512 + 50 len 14]
                mem[_496 + 160] = Mask(112, 0, _516)
                require ext_code.size(address(_490))
                staticcall address(_490).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_536] == mem[_536 + 12 len 20]
                if address(arg1) == mem[_536 + 12 len 20]:
                    _552 = mem[_496 + 192]
                    require ext_code.size(address(_490))
                    staticcall address(_490).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _577 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_577] == mem[_577 + 12 len 20]
                    mem[_496 + 128] = mem[_577 + 12 len 20]
                    mem[_496 + 96] = _552
                    mem[_496 + 64] = Mask(112, 0, _516)
                    if 10^17 <= Mask(112, 0, _516):
                        _593 = mem[_496 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_593)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_593)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _616 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_616] == mem[_616 + 12 len 20]
                        if mem[_616 + 12 len 20]:
                            require ext_code.size(address(_490))
                            staticcall address(_490).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_648] == mem[_648 + 12 len 20]
                            if mem[_648 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_490))
                                staticcall address(_490).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _680 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_680] == mem[_680 + 12 len 20]
                else:
                    _555 = mem[_496 + 192]
                    require ext_code.size(address(_490))
                    staticcall address(_490).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_578] == mem[_578 + 12 len 20]
                    mem[_496 + 128] = mem[_578 + 12 len 20]
                    mem[_496 + 96] = Mask(112, 0, _516)
                    mem[_496 + 64] = _555
                    if 10^17 <= _555:
                        _601 = mem[_496 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_601)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_601)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_620] == mem[_620 + 12 len 20]
                        if mem[_620 + 12 len 20]:
                            require ext_code.size(address(_490))
                            staticcall address(_490).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_652] == mem[_652 + 12 len 20]
                            if mem[_652 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_490))
                                staticcall address(_490).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _684 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_684] == mem[_684 + 12 len 20]
                _480 = mem[ceil32(return_data.size) + 96]
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
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_267] == mem[_267 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_267 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _481 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _481:
                require idx < mem[ceil32(return_data.size) + 96]
                _492 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _497 = mem[64]
                mem[64] = mem[64] + 224
                mem[_497] = 0
                mem[_497 + 32] = 0
                mem[_497 + 64] = 0
                mem[_497 + 96] = 0
                mem[_497 + 128] = 0
                mem[_497 + 160] = 0
                mem[_497 + 192] = 0
                require ext_code.size(address(_492))
                staticcall address(_492).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _517 = mem[_513]
                require mem[_513] == mem[_513 + 18 len 14]
                require mem[_513 + 32] == mem[_513 + 50 len 14]
                require mem[_513 + 64] == mem[_513 + 92 len 4]
                mem[_497 + 192] = mem[_513 + 50 len 14]
                mem[_497 + 160] = Mask(112, 0, _517)
                require ext_code.size(address(_492))
                staticcall address(_492).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _537 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_537] == mem[_537 + 12 len 20]
                if address(arg1) == mem[_537 + 12 len 20]:
                    _560 = mem[_497 + 192]
                    require ext_code.size(address(_492))
                    staticcall address(_492).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_579] == mem[_579 + 12 len 20]
                    mem[_497 + 128] = mem[_579 + 12 len 20]
                    mem[_497 + 96] = _560
                    mem[_497 + 64] = Mask(112, 0, _517)
                    if 10^17 <= Mask(112, 0, _517):
                        _595 = mem[_497 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_595)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_595)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_617] == mem[_617 + 12 len 20]
                        if mem[_617 + 12 len 20]:
                            require ext_code.size(address(_492))
                            staticcall address(_492).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _649 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_649] == mem[_649 + 12 len 20]
                            if mem[_649 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_492))
                                staticcall address(_492).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _681 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_681] == mem[_681 + 12 len 20]
                else:
                    _563 = mem[_497 + 192]
                    require ext_code.size(address(_492))
                    staticcall address(_492).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _580 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_580] == mem[_580 + 12 len 20]
                    mem[_497 + 128] = mem[_580 + 12 len 20]
                    mem[_497 + 96] = Mask(112, 0, _517)
                    mem[_497 + 64] = _563
                    if 10^17 <= _563:
                        _603 = mem[_497 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_603)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_603)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_621] == mem[_621 + 12 len 20]
                        if mem[_621 + 12 len 20]:
                            require ext_code.size(address(_492))
                            staticcall address(_492).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_653] == mem[_653 + 12 len 20]
                            if mem[_653 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_492))
                                staticcall address(_492).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _685 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_685] == mem[_685 + 12 len 20]
                _481 = mem[ceil32(return_data.size) + 96]
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
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_270] == mem[_270 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_270 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _482 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _482:
                require idx < mem[ceil32(return_data.size) + 96]
                _494 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _498 = mem[64]
                mem[64] = mem[64] + 224
                mem[_498] = 0
                mem[_498 + 32] = 0
                mem[_498 + 64] = 0
                mem[_498 + 96] = 0
                mem[_498 + 128] = 0
                mem[_498 + 160] = 0
                mem[_498 + 192] = 0
                require ext_code.size(address(_494))
                staticcall address(_494).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _518 = mem[_514]
                require mem[_514] == mem[_514 + 18 len 14]
                require mem[_514 + 32] == mem[_514 + 50 len 14]
                require mem[_514 + 64] == mem[_514 + 92 len 4]
                mem[_498 + 192] = mem[_514 + 50 len 14]
                mem[_498 + 160] = Mask(112, 0, _518)
                require ext_code.size(address(_494))
                staticcall address(_494).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_538] == mem[_538 + 12 len 20]
                if address(arg1) == mem[_538 + 12 len 20]:
                    _568 = mem[_498 + 192]
                    require ext_code.size(address(_494))
                    staticcall address(_494).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_581] == mem[_581 + 12 len 20]
                    mem[_498 + 128] = mem[_581 + 12 len 20]
                    mem[_498 + 96] = _568
                    mem[_498 + 64] = Mask(112, 0, _518)
                    if 10^17 <= Mask(112, 0, _518):
                        _597 = mem[_498 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_597)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_597)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _618 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_618] == mem[_618 + 12 len 20]
                        if mem[_618 + 12 len 20]:
                            require ext_code.size(address(_494))
                            staticcall address(_494).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_650] == mem[_650 + 12 len 20]
                            if mem[_650 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_494))
                                staticcall address(_494).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _682 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_682] == mem[_682 + 12 len 20]
                else:
                    _571 = mem[_498 + 192]
                    require ext_code.size(address(_494))
                    staticcall address(_494).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_582] == mem[_582 + 12 len 20]
                    mem[_498 + 128] = mem[_582 + 12 len 20]
                    mem[_498 + 96] = Mask(112, 0, _518)
                    mem[_498 + 64] = _571
                    if 10^17 <= _571:
                        _605 = mem[_498 + 128]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = address(_605)
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(_605)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _622 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_622] == mem[_622 + 12 len 20]
                        if mem[_622 + 12 len 20]:
                            require ext_code.size(address(_494))
                            staticcall address(_494).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _654 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_654] == mem[_654 + 12 len 20]
                            if mem[_654 + 12 len 20] != address(arg1):
                                require ext_code.size(address(_494))
                                staticcall address(_494).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _686 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_686] == mem[_686 + 12 len 20]
                _482 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
    return 0
}



}
