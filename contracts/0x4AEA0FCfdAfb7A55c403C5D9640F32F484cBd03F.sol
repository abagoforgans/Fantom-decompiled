contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReservesByPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _61 = mem[_58]
            require mem[_58] == mem[_58 + 18 len 14]
            _63 = mem[_58 + 32]
            require mem[_58 + 32] == mem[_58 + 50 len 14]
            require mem[_58 + 64] == mem[_58 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _68 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _71 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_58 + 92 len 4]
            mem[_71 + 32] = Mask(112, 0, _63)
            mem[_68] = Mask(112, 0, _61)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _43:
            _80 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_80 + 50 len 14]
            mem[t + 64] = mem[_80 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _42 + (96 * _43) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 224
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[128] = (32 * arg1.length) + 128
    s = 128
    idx = arg1.length
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _95 = mem[_94]
        require mem[_94] == mem[_94 + 18 len 14]
        _96 = mem[_94 + 32]
        require mem[_94 + 32] == mem[_94 + 50 len 14]
        require mem[_94 + 64] == mem[_94 + 92 len 4]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _99 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _101 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + 128] + 64] = mem[_94 + 92 len 4]
        mem[_101 + 32] = Mask(112, 0, _96)
        mem[_99] = Mask(112, 0, _95)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _85 = mem[64]
    mem[mem[64]] = 32
    _86 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _86:
        _104 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_104 + 50 len 14]
        mem[t + 64] = mem[_104 + 92 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _85 + (96 * _86) + -mem[64] + 64
}

function getPairsByIndexRange(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        if ext_call.return_data[0] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if arg2 > !idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _197 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _218 = mem[_197]
                require mem[_197] == mem[_197 + 12 len 20]
                require ext_code.size(mem[_197 + 12 len 20])
                staticcall mem[_197 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_236] == mem[_236 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_236 + 12 len 20]
                require ext_code.size(address(_218))
                staticcall address(_218).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == mem[_266 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_266 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_218)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _164 = mem[64]
            mem[mem[64]] = 32
            _167 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _167:
                _314 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_314 + 44 len 20]
                mem[t + 64] = mem[_314 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _164 + (96 * _167) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = ceil32(return_data.size) + 128
        idx = ext_call.return_data[0] - arg2
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _359 = mem[_356]
            require mem[_356] == mem[_356 + 12 len 20]
            require ext_code.size(mem[_356 + 12 len 20])
            staticcall mem[_356 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_368] == mem[_368 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_368 + 12 len 20]
            require ext_code.size(address(_359))
            staticcall address(_359).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _386 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_386] == mem[_386 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_386 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_359)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _327 = mem[64]
        mem[mem[64]] = 32
        _332 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _332:
            _404 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_404 + 44 len 20]
            mem[t + 64] = mem[_404 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _327 + (96 * _332) + -mem[64] + 64
    if arg3:
        if arg3 < arg2:
            revert with 'NH{q', 17
        if arg3 - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg3 - arg2
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                if arg2 > !idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _220 = mem[_199]
                require mem[_199] == mem[_199 + 12 len 20]
                require ext_code.size(mem[_199 + 12 len 20])
                staticcall mem[_199 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_237] == mem[_237 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_237 + 12 len 20]
                require ext_code.size(address(_220))
                staticcall address(_220).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_268] == mem[_268 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_268 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_220)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _165 = mem[64]
            mem[mem[64]] = 32
            _168 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _168:
                _318 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_318 + 44 len 20]
                mem[t + 64] = mem[_318 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _165 + (96 * _168) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 224
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        s = ceil32(return_data.size) + 128
        idx = arg3 - arg2
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3 - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _360 = mem[_357]
            require mem[_357] == mem[_357 + 12 len 20]
            require ext_code.size(mem[_357 + 12 len 20])
            staticcall mem[_357 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_369] == mem[_369 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_369 + 12 len 20]
            require ext_code.size(address(_360))
            staticcall address(_360).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_387] == mem[_387 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_387 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_360)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _329 = mem[64]
        mem[mem[64]] = 32
        _333 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _333:
            _408 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_408 + 44 len 20]
            mem[t + 64] = mem[_408 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _329 + (96 * _333) + -mem[64] + 64
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _222 = mem[_201]
            require mem[_201] == mem[_201 + 12 len 20]
            require ext_code.size(mem[_201 + 12 len 20])
            staticcall mem[_201 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_238] == mem[_238 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_238 + 12 len 20]
            require ext_code.size(address(_222))
            staticcall address(_222).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_270] == mem[_270 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_270 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_222)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _166 = mem[64]
        mem[mem[64]] = 32
        _169 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _169:
            _322 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_322 + 44 len 20]
            mem[t + 64] = mem[_322 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _166 + (96 * _169) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = ceil32(return_data.size) + 128
    idx = ext_call.return_data[0] - arg2
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if arg2 > !idx:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = arg2 + idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _361 = mem[_358]
        require mem[_358] == mem[_358 + 12 len 20]
        require ext_code.size(mem[_358 + 12 len 20])
        staticcall mem[_358 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_370] == mem[_370 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_370 + 12 len 20]
        require ext_code.size(address(_361))
        staticcall address(_361).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _388 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_388] == mem[_388 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_388 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_361)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _331 = mem[64]
    mem[mem[64]] = 32
    _334 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _334:
        _412 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_412 + 44 len 20]
        mem[t + 64] = mem[_412 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _331 + (96 * _334) + -mem[64] + 64
}

function sub_e6f43194(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        if ext_call.return_data[0] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if arg2 > !idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _326 = mem[_296]
                require mem[_296] == mem[_296 + 12 len 20]
                require ext_code.size(mem[_296 + 12 len 20])
                staticcall mem[_296 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_344] == mem[_344 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_344 + 12 len 20]
                require ext_code.size(address(_326))
                staticcall address(_326).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_374] == mem[_374 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_374 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_326)
                require ext_code.size(address(_326))
                staticcall address(_326).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _437 = mem[_419]
                require mem[_419] == mem[_419 + 18 len 14]
                _443 = mem[_419 + 32]
                require mem[_419 + 32] == mem[_419 + 50 len 14]
                require mem[_419 + 64] == mem[_419 + 92 len 4]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _458 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _467 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] = mem[_419 + 92 len 4]
                mem[_467 + 128] = Mask(112, 0, _443)
                mem[_458 + 96] = Mask(112, 0, _437)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 32
            _257 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _257:
                _494 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_494 + 44 len 20]
                mem[t + 64] = mem[_494 + 76 len 20]
                mem[t + 96] = mem[_494 + 114 len 14]
                mem[t + 128] = mem[_494 + 146 len 14]
                mem[t + 160] = mem[_494 + 188 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _254 + (192 * _257) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 320
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288] = 0
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = ceil32(return_data.size) + 128
        idx = ext_call.return_data[0] - arg2
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _557 = mem[_554]
            require mem[_554] == mem[_554 + 12 len 20]
            require ext_code.size(mem[_554 + 12 len 20])
            staticcall mem[_554 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_566] == mem[_566 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_566 + 12 len 20]
            require ext_code.size(address(_557))
            staticcall address(_557).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _584 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_584] == mem[_584 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_584 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_557)
            require ext_code.size(address(_557))
            staticcall address(_557).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _608 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _611 = mem[_608]
            require mem[_608] == mem[_608 + 18 len 14]
            _614 = mem[_608 + 32]
            require mem[_608 + 32] == mem[_608 + 50 len 14]
            require mem[_608 + 64] == mem[_608 + 92 len 4]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _623 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _629 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] = mem[_608 + 92 len 4]
            mem[_629 + 128] = Mask(112, 0, _614)
            mem[_623 + 96] = Mask(112, 0, _611)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _516 = mem[64]
        mem[mem[64]] = 32
        _521 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _521:
            _638 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_638 + 44 len 20]
            mem[t + 64] = mem[_638 + 76 len 20]
            mem[t + 96] = mem[_638 + 114 len 14]
            mem[t + 128] = mem[_638 + 146 len 14]
            mem[t + 160] = mem[_638 + 188 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _516 + (192 * _521) + -mem[64] + 64
    if arg3:
        if arg3 < arg2:
            revert with 'NH{q', 17
        if arg3 - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg3 - arg2
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                if arg2 > !idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _328 = mem[_298]
                require mem[_298] == mem[_298 + 12 len 20]
                require ext_code.size(mem[_298 + 12 len 20])
                staticcall mem[_298 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_345] == mem[_345 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_345 + 12 len 20]
                require ext_code.size(address(_328))
                staticcall address(_328).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_376] == mem[_376 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_376 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_328)
                require ext_code.size(address(_328))
                staticcall address(_328).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _439 = mem[_422]
                require mem[_422] == mem[_422 + 18 len 14]
                _445 = mem[_422 + 32]
                require mem[_422 + 32] == mem[_422 + 50 len 14]
                require mem[_422 + 64] == mem[_422 + 92 len 4]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _461 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _469 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] = mem[_422 + 92 len 4]
                mem[_469 + 128] = Mask(112, 0, _445)
                mem[_461 + 96] = Mask(112, 0, _439)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _255 = mem[64]
            mem[mem[64]] = 32
            _258 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _258:
                _501 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_501 + 44 len 20]
                mem[t + 64] = mem[_501 + 76 len 20]
                mem[t + 96] = mem[_501 + 114 len 14]
                mem[t + 128] = mem[_501 + 146 len 14]
                mem[t + 160] = mem[_501 + 188 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _255 + (192 * _258) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 320
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 288] = 0
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        s = ceil32(return_data.size) + 128
        idx = arg3 - arg2
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 288] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3 - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _555 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _558 = mem[_555]
            require mem[_555] == mem[_555 + 12 len 20]
            require ext_code.size(mem[_555 + 12 len 20])
            staticcall mem[_555 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_567] == mem[_567 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_567 + 12 len 20]
            require ext_code.size(address(_558))
            staticcall address(_558).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_585] == mem[_585 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_585 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_558)
            require ext_code.size(address(_558))
            staticcall address(_558).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _612 = mem[_609]
            require mem[_609] == mem[_609 + 18 len 14]
            _615 = mem[_609 + 32]
            require mem[_609 + 32] == mem[_609 + 50 len 14]
            require mem[_609 + 64] == mem[_609 + 92 len 4]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _625 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _631 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] = mem[_609 + 92 len 4]
            mem[_631 + 128] = Mask(112, 0, _615)
            mem[_625 + 96] = Mask(112, 0, _612)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _518 = mem[64]
        mem[mem[64]] = 32
        _522 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _522:
            _645 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_645 + 44 len 20]
            mem[t + 64] = mem[_645 + 76 len 20]
            mem[t + 96] = mem[_645 + 114 len 14]
            mem[t + 128] = mem[_645 + 146 len 14]
            mem[t + 160] = mem[_645 + 188 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _518 + (192 * _522) + -mem[64] + 64
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _330 = mem[_300]
            require mem[_300] == mem[_300 + 12 len 20]
            require ext_code.size(mem[_300 + 12 len 20])
            staticcall mem[_300 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_346] == mem[_346 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_346 + 12 len 20]
            require ext_code.size(address(_330))
            staticcall address(_330).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _378 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_378] == mem[_378 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_378 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_330)
            require ext_code.size(address(_330))
            staticcall address(_330).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _441 = mem[_425]
            require mem[_425] == mem[_425 + 18 len 14]
            _447 = mem[_425 + 32]
            require mem[_425 + 32] == mem[_425 + 50 len 14]
            require mem[_425 + 64] == mem[_425 + 92 len 4]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _464 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _471 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] = mem[_425 + 92 len 4]
            mem[_471 + 128] = Mask(112, 0, _447)
            mem[_464 + 96] = Mask(112, 0, _441)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _256 = mem[64]
        mem[mem[64]] = 32
        _259 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _259:
            _508 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_508 + 44 len 20]
            mem[t + 64] = mem[_508 + 76 len 20]
            mem[t + 96] = mem[_508 + 114 len 14]
            mem[t + 128] = mem[_508 + 146 len 14]
            mem[t + 160] = mem[_508 + 188 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _256 + (192 * _259) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 320
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288] = 0
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = ceil32(return_data.size) + 128
    idx = ext_call.return_data[0] - arg2
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if arg2 > !idx:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = arg2 + idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _556 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _559 = mem[_556]
        require mem[_556] == mem[_556 + 12 len 20]
        require ext_code.size(mem[_556 + 12 len 20])
        staticcall mem[_556 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _568 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_568] == mem[_568 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_568 + 12 len 20]
        require ext_code.size(address(_559))
        staticcall address(_559).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _586 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_586] == mem[_586 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = mem[_586 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = address(_559)
        require ext_code.size(address(_559))
        staticcall address(_559).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _610 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _613 = mem[_610]
        require mem[_610] == mem[_610 + 18 len 14]
        _616 = mem[_610 + 32]
        require mem[_610 + 32] == mem[_610 + 50 len 14]
        require mem[_610 + 64] == mem[_610 + 92 len 4]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _627 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _633 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160] = mem[_610 + 92 len 4]
        mem[_633 + 128] = Mask(112, 0, _616)
        mem[_627 + 96] = Mask(112, 0, _613)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _520 = mem[64]
    mem[mem[64]] = 32
    _523 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _523:
        _652 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_652 + 44 len 20]
        mem[t + 64] = mem[_652 + 76 len 20]
        mem[t + 96] = mem[_652 + 114 len 14]
        mem[t + 128] = mem[_652 + 146 len 14]
        mem[t + 160] = mem[_652 + 188 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _520 + (192 * _523) + -mem[64] + 64
}



}
