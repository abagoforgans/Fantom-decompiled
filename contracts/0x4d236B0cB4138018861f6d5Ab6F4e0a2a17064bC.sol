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
    require arg3 <= test266151307()
    mem[ceil32(return_data.size) + 96] = arg3
    mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
    if arg3 + arg2 > ext_call.return_data[0]:
        if not arg3:
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
        mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
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
    if not arg3:
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
    mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
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
    require arg3 <= test266151307()
    mem[ceil32(return_data.size) + 96] = arg3
    mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
    if arg3 + arg2 > ext_call.return_data[0]:
        if not arg3:
            idx = arg2
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_328] == mem[_328 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_328 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _596 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _596:
                require idx < mem[ceil32(return_data.size) + 96]
                _609 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_663] == mem[_663 + 12 len 20]
                if mem[_663 + 12 len 20] == WFTMAddress:
                    _692 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_692] = 0
                    mem[_692 + 32] = 0
                    mem[_692 + 64] = 0
                    require ext_code.size(address(_609))
                    staticcall address(_609).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _728 = mem[_722]
                    require mem[_722] == mem[_722 + 18 len 14]
                    _734 = mem[_722 + 32]
                    require mem[_722 + 32] == mem[_722 + 50 len 14]
                    require mem[_722 + 64] == mem[_722 + 92 len 4]
                    require ext_code.size(address(_609))
                    staticcall address(_609).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _788 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_788] == mem[_788 + 12 len 20]
                    if mem[_788 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _734)
                        mem[_692] = Mask(112, 0, _728)
                        mem[_692 + 32] = Mask(112, 0, _734)
                        mem[_692 + 64] = 10^18 * Mask(112, 0, _728) / Mask(112, 0, _734)
                    else:
                        require Mask(112, 0, _728)
                        mem[_692] = Mask(112, 0, _734)
                        mem[_692 + 32] = Mask(112, 0, _728)
                        mem[_692 + 64] = 10^18 * Mask(112, 0, _734) / Mask(112, 0, _728)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _692
                else:
                    require ext_code.size(address(_609))
                    staticcall address(_609).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_693] == mem[_693 + 12 len 20]
                    if mem[_693 + 12 len 20] == WFTMAddress:
                        _740 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_740] = 0
                        mem[_740 + 32] = 0
                        mem[_740 + 64] = 0
                        require ext_code.size(address(_609))
                        staticcall address(_609).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _764 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _782 = mem[_764]
                        require mem[_764] == mem[_764 + 18 len 14]
                        _795 = mem[_764 + 32]
                        require mem[_764 + 32] == mem[_764 + 50 len 14]
                        require mem[_764 + 64] == mem[_764 + 92 len 4]
                        require ext_code.size(address(_609))
                        staticcall address(_609).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _826 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_826] == mem[_826 + 12 len 20]
                        if mem[_826 + 12 len 20] == WFTMAddress:
                            require Mask(112, 0, _795)
                            mem[_740] = Mask(112, 0, _782)
                            mem[_740 + 32] = Mask(112, 0, _795)
                            mem[_740 + 64] = 10^18 * Mask(112, 0, _782) / Mask(112, 0, _795)
                        else:
                            require Mask(112, 0, _782)
                            mem[_740] = Mask(112, 0, _795)
                            mem[_740 + 32] = Mask(112, 0, _782)
                            mem[_740 + 64] = 10^18 * Mask(112, 0, _795) / Mask(112, 0, _782)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _740
                _596 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
            _608 = mem[64]
            mem[mem[64]] = 32
            _620 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _620:
                _860 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_860 + 32]
                mem[t + 64] = mem[_860 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _608 + (96 * _620) + -mem[64] + 64
        mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = arg2
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_331] == mem[_331 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_331 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _597 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while idx < _597:
            require idx < mem[ceil32(return_data.size) + 96]
            _611 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_665] == mem[_665 + 12 len 20]
            if mem[_665 + 12 len 20] == WFTMAddress:
                _694 = mem[64]
                mem[64] = mem[64] + 96
                mem[_694] = 0
                mem[_694 + 32] = 0
                mem[_694 + 64] = 0
                require ext_code.size(address(_611))
                staticcall address(_611).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _729 = mem[_723]
                require mem[_723] == mem[_723 + 18 len 14]
                _735 = mem[_723 + 32]
                require mem[_723 + 32] == mem[_723 + 50 len 14]
                require mem[_723 + 64] == mem[_723 + 92 len 4]
                require ext_code.size(address(_611))
                staticcall address(_611).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_789] == mem[_789 + 12 len 20]
                if mem[_789 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _735)
                    mem[_694] = Mask(112, 0, _729)
                    mem[_694 + 32] = Mask(112, 0, _735)
                    mem[_694 + 64] = 10^18 * Mask(112, 0, _729) / Mask(112, 0, _735)
                else:
                    require Mask(112, 0, _729)
                    mem[_694] = Mask(112, 0, _735)
                    mem[_694 + 32] = Mask(112, 0, _729)
                    mem[_694 + 64] = 10^18 * Mask(112, 0, _735) / Mask(112, 0, _729)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _694
            else:
                require ext_code.size(address(_611))
                staticcall address(_611).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _695 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_695] == mem[_695 + 12 len 20]
                if mem[_695 + 12 len 20] == WFTMAddress:
                    _741 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_741] = 0
                    mem[_741 + 32] = 0
                    mem[_741 + 64] = 0
                    require ext_code.size(address(_611))
                    staticcall address(_611).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _765 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _783 = mem[_765]
                    require mem[_765] == mem[_765 + 18 len 14]
                    _797 = mem[_765 + 32]
                    require mem[_765 + 32] == mem[_765 + 50 len 14]
                    require mem[_765 + 64] == mem[_765 + 92 len 4]
                    require ext_code.size(address(_611))
                    staticcall address(_611).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_829] == mem[_829 + 12 len 20]
                    if mem[_829 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _797)
                        mem[_741] = Mask(112, 0, _783)
                        mem[_741 + 32] = Mask(112, 0, _797)
                        mem[_741 + 64] = 10^18 * Mask(112, 0, _783) / Mask(112, 0, _797)
                    else:
                        require Mask(112, 0, _783)
                        mem[_741] = Mask(112, 0, _797)
                        mem[_741 + 32] = Mask(112, 0, _783)
                        mem[_741 + 64] = 10^18 * Mask(112, 0, _797) / Mask(112, 0, _783)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _741
            _597 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            continue 
        _610 = mem[64]
        mem[mem[64]] = 32
        _621 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _621:
            _864 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_864 + 32]
            mem[t + 64] = mem[_864 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _610 + (96 * _621) + -mem[64] + 64
    if arg3:
        if not arg3:
            idx = arg2
            s = 0
            while idx < arg3 + arg2:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_334] == mem[_334 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_334 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _598 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _598:
                require idx < mem[ceil32(return_data.size) + 96]
                _613 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_667] == mem[_667 + 12 len 20]
                if mem[_667 + 12 len 20] == WFTMAddress:
                    _696 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_696] = 0
                    mem[_696 + 32] = 0
                    mem[_696 + 64] = 0
                    require ext_code.size(address(_613))
                    staticcall address(_613).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _724 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _730 = mem[_724]
                    require mem[_724] == mem[_724 + 18 len 14]
                    _736 = mem[_724 + 32]
                    require mem[_724 + 32] == mem[_724 + 50 len 14]
                    require mem[_724 + 64] == mem[_724 + 92 len 4]
                    require ext_code.size(address(_613))
                    staticcall address(_613).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _790 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_790] == mem[_790 + 12 len 20]
                    if mem[_790 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _736)
                        mem[_696] = Mask(112, 0, _730)
                        mem[_696 + 32] = Mask(112, 0, _736)
                        mem[_696 + 64] = 10^18 * Mask(112, 0, _730) / Mask(112, 0, _736)
                    else:
                        require Mask(112, 0, _730)
                        mem[_696] = Mask(112, 0, _736)
                        mem[_696 + 32] = Mask(112, 0, _730)
                        mem[_696 + 64] = 10^18 * Mask(112, 0, _736) / Mask(112, 0, _730)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _696
                else:
                    require ext_code.size(address(_613))
                    staticcall address(_613).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _697 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_697] == mem[_697 + 12 len 20]
                    if mem[_697 + 12 len 20] == WFTMAddress:
                        _742 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_742] = 0
                        mem[_742 + 32] = 0
                        mem[_742 + 64] = 0
                        require ext_code.size(address(_613))
                        staticcall address(_613).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _766 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _784 = mem[_766]
                        require mem[_766] == mem[_766 + 18 len 14]
                        _799 = mem[_766 + 32]
                        require mem[_766 + 32] == mem[_766 + 50 len 14]
                        require mem[_766 + 64] == mem[_766 + 92 len 4]
                        require ext_code.size(address(_613))
                        staticcall address(_613).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _832 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_832] == mem[_832 + 12 len 20]
                        if mem[_832 + 12 len 20] == WFTMAddress:
                            require Mask(112, 0, _799)
                            mem[_742] = Mask(112, 0, _784)
                            mem[_742 + 32] = Mask(112, 0, _799)
                            mem[_742 + 64] = 10^18 * Mask(112, 0, _784) / Mask(112, 0, _799)
                        else:
                            require Mask(112, 0, _784)
                            mem[_742] = Mask(112, 0, _799)
                            mem[_742 + 32] = Mask(112, 0, _784)
                            mem[_742 + 64] = 10^18 * Mask(112, 0, _799) / Mask(112, 0, _784)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _742
                _598 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
            _612 = mem[64]
            mem[mem[64]] = 32
            _622 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _622:
                _868 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_868 + 32]
                mem[t + 64] = mem[_868 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _612 + (96 * _622) + -mem[64] + 64
        mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = arg2
        s = 0
        while idx < arg3 + arg2:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_337] == mem[_337 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_337 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _599 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while idx < _599:
            require idx < mem[ceil32(return_data.size) + 96]
            _615 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_669] == mem[_669 + 12 len 20]
            if mem[_669 + 12 len 20] == WFTMAddress:
                _698 = mem[64]
                mem[64] = mem[64] + 96
                mem[_698] = 0
                mem[_698 + 32] = 0
                mem[_698 + 64] = 0
                require ext_code.size(address(_615))
                staticcall address(_615).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _731 = mem[_725]
                require mem[_725] == mem[_725 + 18 len 14]
                _737 = mem[_725 + 32]
                require mem[_725 + 32] == mem[_725 + 50 len 14]
                require mem[_725 + 64] == mem[_725 + 92 len 4]
                require ext_code.size(address(_615))
                staticcall address(_615).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _791 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_791] == mem[_791 + 12 len 20]
                if mem[_791 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _737)
                    mem[_698] = Mask(112, 0, _731)
                    mem[_698 + 32] = Mask(112, 0, _737)
                    mem[_698 + 64] = 10^18 * Mask(112, 0, _731) / Mask(112, 0, _737)
                else:
                    require Mask(112, 0, _731)
                    mem[_698] = Mask(112, 0, _737)
                    mem[_698 + 32] = Mask(112, 0, _731)
                    mem[_698 + 64] = 10^18 * Mask(112, 0, _737) / Mask(112, 0, _731)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _698
            else:
                require ext_code.size(address(_615))
                staticcall address(_615).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_699] == mem[_699 + 12 len 20]
                if mem[_699 + 12 len 20] == WFTMAddress:
                    _743 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_743] = 0
                    mem[_743 + 32] = 0
                    mem[_743 + 64] = 0
                    require ext_code.size(address(_615))
                    staticcall address(_615).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _785 = mem[_767]
                    require mem[_767] == mem[_767 + 18 len 14]
                    _801 = mem[_767 + 32]
                    require mem[_767 + 32] == mem[_767 + 50 len 14]
                    require mem[_767 + 64] == mem[_767 + 92 len 4]
                    require ext_code.size(address(_615))
                    staticcall address(_615).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_835] == mem[_835 + 12 len 20]
                    if mem[_835 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _801)
                        mem[_743] = Mask(112, 0, _785)
                        mem[_743 + 32] = Mask(112, 0, _801)
                        mem[_743 + 64] = 10^18 * Mask(112, 0, _785) / Mask(112, 0, _801)
                    else:
                        require Mask(112, 0, _785)
                        mem[_743] = Mask(112, 0, _801)
                        mem[_743 + 32] = Mask(112, 0, _785)
                        mem[_743 + 64] = 10^18 * Mask(112, 0, _801) / Mask(112, 0, _785)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _743
            _599 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            continue 
        _614 = mem[64]
        mem[mem[64]] = 32
        _623 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _623:
            _872 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_872 + 32]
            mem[t + 64] = mem[_872 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _614 + (96 * _623) + -mem[64] + 64
    if not arg3:
        idx = arg2
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_340] == mem[_340 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_340 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _600 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while idx < _600:
            require idx < mem[ceil32(return_data.size) + 96]
            _617 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_671] == mem[_671 + 12 len 20]
            if mem[_671 + 12 len 20] == WFTMAddress:
                _700 = mem[64]
                mem[64] = mem[64] + 96
                mem[_700] = 0
                mem[_700 + 32] = 0
                mem[_700 + 64] = 0
                require ext_code.size(address(_617))
                staticcall address(_617).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _726 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _732 = mem[_726]
                require mem[_726] == mem[_726 + 18 len 14]
                _738 = mem[_726 + 32]
                require mem[_726 + 32] == mem[_726 + 50 len 14]
                require mem[_726 + 64] == mem[_726 + 92 len 4]
                require ext_code.size(address(_617))
                staticcall address(_617).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _792 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_792] == mem[_792 + 12 len 20]
                if mem[_792 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _738)
                    mem[_700] = Mask(112, 0, _732)
                    mem[_700 + 32] = Mask(112, 0, _738)
                    mem[_700 + 64] = 10^18 * Mask(112, 0, _732) / Mask(112, 0, _738)
                else:
                    require Mask(112, 0, _732)
                    mem[_700] = Mask(112, 0, _738)
                    mem[_700 + 32] = Mask(112, 0, _732)
                    mem[_700 + 64] = 10^18 * Mask(112, 0, _738) / Mask(112, 0, _732)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _700
            else:
                require ext_code.size(address(_617))
                staticcall address(_617).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _701 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_701] == mem[_701 + 12 len 20]
                if mem[_701 + 12 len 20] == WFTMAddress:
                    _744 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_744] = 0
                    mem[_744 + 32] = 0
                    mem[_744 + 64] = 0
                    require ext_code.size(address(_617))
                    staticcall address(_617).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _786 = mem[_768]
                    require mem[_768] == mem[_768 + 18 len 14]
                    _803 = mem[_768 + 32]
                    require mem[_768 + 32] == mem[_768 + 50 len 14]
                    require mem[_768 + 64] == mem[_768 + 92 len 4]
                    require ext_code.size(address(_617))
                    staticcall address(_617).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_838] == mem[_838 + 12 len 20]
                    if mem[_838 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _803)
                        mem[_744] = Mask(112, 0, _786)
                        mem[_744 + 32] = Mask(112, 0, _803)
                        mem[_744 + 64] = 10^18 * Mask(112, 0, _786) / Mask(112, 0, _803)
                    else:
                        require Mask(112, 0, _786)
                        mem[_744] = Mask(112, 0, _803)
                        mem[_744 + 32] = Mask(112, 0, _786)
                        mem[_744 + 64] = 10^18 * Mask(112, 0, _803) / Mask(112, 0, _786)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _744
            _600 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            continue 
        _616 = mem[64]
        mem[mem[64]] = 32
        _624 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _624:
            _876 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_876 + 32]
            mem[t + 64] = mem[_876 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _616 + (96 * _624) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = arg2
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_343] == mem[_343 + 12 len 20]
        require s < mem[ceil32(return_data.size) + 96]
        mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_343 + 12 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    _601 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _601:
        require idx < mem[ceil32(return_data.size) + 96]
        _619 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _673 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_673] == mem[_673 + 12 len 20]
        if mem[_673 + 12 len 20] == WFTMAddress:
            _702 = mem[64]
            mem[64] = mem[64] + 96
            mem[_702] = 0
            mem[_702 + 32] = 0
            mem[_702 + 64] = 0
            require ext_code.size(address(_619))
            staticcall address(_619).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _727 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _733 = mem[_727]
            require mem[_727] == mem[_727 + 18 len 14]
            _739 = mem[_727 + 32]
            require mem[_727 + 32] == mem[_727 + 50 len 14]
            require mem[_727 + 64] == mem[_727 + 92 len 4]
            require ext_code.size(address(_619))
            staticcall address(_619).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_793] == mem[_793 + 12 len 20]
            if mem[_793 + 12 len 20] == WFTMAddress:
                require Mask(112, 0, _739)
                mem[_702] = Mask(112, 0, _733)
                mem[_702 + 32] = Mask(112, 0, _739)
                mem[_702 + 64] = 10^18 * Mask(112, 0, _733) / Mask(112, 0, _739)
            else:
                require Mask(112, 0, _733)
                mem[_702] = Mask(112, 0, _739)
                mem[_702 + 32] = Mask(112, 0, _733)
                mem[_702 + 64] = 10^18 * Mask(112, 0, _739) / Mask(112, 0, _733)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _702
        else:
            require ext_code.size(address(_619))
            staticcall address(_619).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _703 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_703] == mem[_703 + 12 len 20]
            if mem[_703 + 12 len 20] == WFTMAddress:
                _745 = mem[64]
                mem[64] = mem[64] + 96
                mem[_745] = 0
                mem[_745 + 32] = 0
                mem[_745 + 64] = 0
                require ext_code.size(address(_619))
                staticcall address(_619).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _769 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _787 = mem[_769]
                require mem[_769] == mem[_769 + 18 len 14]
                _805 = mem[_769 + 32]
                require mem[_769 + 32] == mem[_769 + 50 len 14]
                require mem[_769 + 64] == mem[_769 + 92 len 4]
                require ext_code.size(address(_619))
                staticcall address(_619).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_841] == mem[_841 + 12 len 20]
                if mem[_841 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _805)
                    mem[_745] = Mask(112, 0, _787)
                    mem[_745 + 32] = Mask(112, 0, _805)
                    mem[_745 + 64] = 10^18 * Mask(112, 0, _787) / Mask(112, 0, _805)
                else:
                    require Mask(112, 0, _787)
                    mem[_745] = Mask(112, 0, _805)
                    mem[_745 + 32] = Mask(112, 0, _787)
                    mem[_745 + 64] = 10^18 * Mask(112, 0, _805) / Mask(112, 0, _787)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _745
        _601 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        continue 
    _618 = mem[64]
    mem[mem[64]] = 32
    _625 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _625:
        _880 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_880 + 32]
        mem[t + 64] = mem[_880 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _618 + (96 * _625) + -mem[64] + 64
}



}
