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
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_237] == mem[_237 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_237 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _431 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _431:
                require idx < mem[ceil32(return_data.size) + 96]
                _440 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _447 = mem[64]
                mem[64] = mem[64] + 224
                mem[_447] = 0
                mem[_447 + 32] = 0
                mem[_447 + 64] = 0
                mem[_447 + 96] = 0
                mem[_447 + 128] = 0
                mem[_447 + 160] = 0
                mem[_447 + 192] = 0
                require ext_code.size(address(_440))
                staticcall address(_440).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_463] == mem[_463 + 12 len 20]
                require ext_code.size(address(_440))
                if address(arg1) == mem[_463 + 12 len 20]:
                    staticcall address(_440).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_503] == mem[_503 + 12 len 20]
                    mem[_447 + 128] = mem[_503 + 12 len 20]
                else:
                    staticcall address(_440).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_504] == mem[_504 + 12 len 20]
                    mem[_447 + 128] = mem[_504 + 12 len 20]
                mem[_447 + 96] = 0
                mem[_447 + 64] = 0
                _431 = mem[ceil32(return_data.size) + 96]
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
                _240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_240] == mem[_240 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_240 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _432 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _432:
                require idx < mem[ceil32(return_data.size) + 96]
                _442 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _448 = mem[64]
                mem[64] = mem[64] + 224
                mem[_448] = 0
                mem[_448 + 32] = 0
                mem[_448 + 64] = 0
                mem[_448 + 96] = 0
                mem[_448 + 128] = 0
                mem[_448 + 160] = 0
                mem[_448 + 192] = 0
                require ext_code.size(address(_442))
                staticcall address(_442).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_464] == mem[_464 + 12 len 20]
                require ext_code.size(address(_442))
                if address(arg1) == mem[_464 + 12 len 20]:
                    staticcall address(_442).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_505] == mem[_505 + 12 len 20]
                    mem[_448 + 128] = mem[_505 + 12 len 20]
                else:
                    staticcall address(_442).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_506] == mem[_506 + 12 len 20]
                    mem[_448 + 128] = mem[_506 + 12 len 20]
                mem[_448 + 96] = 0
                mem[_448 + 64] = 0
                _432 = mem[ceil32(return_data.size) + 96]
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
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_243] == mem[_243 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_243 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _433 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _433:
                require idx < mem[ceil32(return_data.size) + 96]
                _444 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _449 = mem[64]
                mem[64] = mem[64] + 224
                mem[_449] = 0
                mem[_449 + 32] = 0
                mem[_449 + 64] = 0
                mem[_449 + 96] = 0
                mem[_449 + 128] = 0
                mem[_449 + 160] = 0
                mem[_449 + 192] = 0
                require ext_code.size(address(_444))
                staticcall address(_444).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == mem[_465 + 12 len 20]
                require ext_code.size(address(_444))
                if address(arg1) == mem[_465 + 12 len 20]:
                    staticcall address(_444).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_507] == mem[_507 + 12 len 20]
                    mem[_449 + 128] = mem[_507 + 12 len 20]
                else:
                    staticcall address(_444).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_508] == mem[_508 + 12 len 20]
                    mem[_449 + 128] = mem[_508 + 12 len 20]
                mem[_449 + 96] = 0
                mem[_449 + 64] = 0
                _433 = mem[ceil32(return_data.size) + 96]
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
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_246] == mem[_246 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_246 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _434 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _434:
                require idx < mem[ceil32(return_data.size) + 96]
                _446 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _450 = mem[64]
                mem[64] = mem[64] + 224
                mem[_450] = 0
                mem[_450 + 32] = 0
                mem[_450 + 64] = 0
                mem[_450 + 96] = 0
                mem[_450 + 128] = 0
                mem[_450 + 160] = 0
                mem[_450 + 192] = 0
                require ext_code.size(address(_446))
                staticcall address(_446).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_466] == mem[_466 + 12 len 20]
                require ext_code.size(address(_446))
                if address(arg1) == mem[_466 + 12 len 20]:
                    staticcall address(_446).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_509] == mem[_509 + 12 len 20]
                    mem[_450 + 128] = mem[_509 + 12 len 20]
                else:
                    staticcall address(_446).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_510] == mem[_510 + 12 len 20]
                    mem[_450 + 128] = mem[_510 + 12 len 20]
                mem[_450 + 96] = 0
                mem[_450 + 64] = 0
                _434 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
    return 0
}



}
