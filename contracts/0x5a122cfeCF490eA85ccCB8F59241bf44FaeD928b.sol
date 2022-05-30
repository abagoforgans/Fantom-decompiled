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

function sub_9234dd0f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 + arg3 > ext_call.return_data[0]:
        require ext_call.return_data[0] - arg3 <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
        if not ext_call.return_data[0] - arg3:
            idx = arg3
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
                _142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_142] == mem[_142 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_142 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _224 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _224:
                require idx < mem[ceil32(return_data.size) + 96]
                _237 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == mem[_266 + 12 len 20]
                if mem[_266 + 12 len 20] != address(arg2):
                    require ext_code.size(address(_237))
                    staticcall address(_237).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_290] == mem[_290 + 12 len 20]
                    if mem[_290 + 12 len 20] != address(arg2):
                        _224 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                _224 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg3] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg3]
            idx = arg3
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
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_145] == mem[_145 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_145 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _225 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _225:
                require idx < mem[ceil32(return_data.size) + 96]
                _239 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_267] == mem[_267 + 12 len 20]
                if mem[_267 + 12 len 20] != address(arg2):
                    require ext_code.size(address(_239))
                    staticcall address(_239).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_291] == mem[_291 + 12 len 20]
                    if mem[_291 + 12 len 20] != address(arg2):
                        _225 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                _225 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
    else:
        if arg4:
            require arg4 <= test266151307()
            mem[ceil32(return_data.size) + 96] = arg4
            mem[64] = ceil32(return_data.size) + (32 * arg4) + 128
            if not arg4:
                idx = arg3
                s = 0
                while idx < arg4 + arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_148] == mem[_148 + 12 len 20]
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_148 + 12 len 20]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _226 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _226:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _241 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_268] == mem[_268 + 12 len 20]
                    if mem[_268 + 12 len 20] != address(arg2):
                        require ext_code.size(address(_241))
                        staticcall address(_241).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_292] == mem[_292 + 12 len 20]
                        if mem[_292 + 12 len 20] != address(arg2):
                            _226 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                    _226 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[ceil32(return_data.size) + 128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
                idx = arg3
                s = 0
                while idx < arg4 + arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _151 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_151] == mem[_151 + 12 len 20]
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_151 + 12 len 20]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _227 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _227:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _243 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _269 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_269] == mem[_269 + 12 len 20]
                    if mem[_269 + 12 len 20] != address(arg2):
                        require ext_code.size(address(_243))
                        staticcall address(_243).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_293] == mem[_293 + 12 len 20]
                        if mem[_293 + 12 len 20] != address(arg2):
                            _227 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                    _227 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
        else:
            require ext_call.return_data[0] - arg3 <= test266151307()
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
            if not ext_call.return_data[0] - arg3:
                idx = arg3
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
                    _154 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_154] == mem[_154 + 12 len 20]
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_154 + 12 len 20]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _228 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _228:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _245 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _270 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_270] == mem[_270 + 12 len 20]
                    if mem[_270 + 12 len 20] != address(arg2):
                        require ext_code.size(address(_245))
                        staticcall address(_245).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_294] == mem[_294 + 12 len 20]
                        if mem[_294 + 12 len 20] != address(arg2):
                            _228 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                    _228 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg3] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg3]
                idx = arg3
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
                    _157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_157] == mem[_157 + 12 len 20]
                    require s < mem[ceil32(return_data.size) + 96]
                    mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_157 + 12 len 20]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _229 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _229:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _247 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_271] == mem[_271 + 12 len 20]
                    if mem[_271 + 12 len 20] != address(arg2):
                        require ext_code.size(address(_247))
                        staticcall address(_247).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _295 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_295] == mem[_295 + 12 len 20]
                        if mem[_295 + 12 len 20] != address(arg2):
                            _229 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                    _229 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
    return s
}

function sub_5b9859fa(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 + arg3 > ext_call.return_data[0]:
        require ext_call.return_data[0] - arg3 <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
        if not ext_call.return_data[0] - arg3:
            idx = arg3
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
                _454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_454] == mem[_454 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_454 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _848 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _848:
                require idx < mem[ceil32(return_data.size) + 96]
                _861 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _904 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_904] == mem[_904 + 12 len 20]
                if mem[_904 + 12 len 20] != address(arg2):
                    require ext_code.size(address(_861))
                    staticcall address(_861).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1078 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1078] == mem[_1078 + 12 len 20]
                    if mem[_1078 + 12 len 20] != address(arg2):
                        _848 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                _848 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            require s <= test266151307()
            _860 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                _1562 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _1562:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _1581 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1647 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1647] == mem[_1647 + 12 len 20]
                    if mem[_1647 + 12 len 20] == address(arg2):
                        _1760 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1760] = 0
                        mem[_1760 + 32] = 0
                        mem[_1760 + 64] = 0
                        mem[_1760 + 96] = 0
                        require ext_code.size(address(_1581))
                        staticcall address(_1581).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1790 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1808 = mem[_1790]
                        require mem[_1790] == mem[_1790 + 18 len 14]
                        _1844 = mem[_1790 + 32]
                        require mem[_1790 + 32] == mem[_1790 + 50 len 14]
                        require mem[_1790 + 64] == mem[_1790 + 92 len 4]
                        require ext_code.size(address(_1581))
                        staticcall address(_1581).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1922 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1922] == mem[_1922 + 12 len 20]
                        if address(arg2) == mem[_1922 + 12 len 20]:
                            if Mask(112, 0, _1808) != 0:
                                if Mask(112, 0, _1844):
                                    require Mask(112, 0, _1844)
                                    mem[_1760 + 96] = 10^18 * Mask(112, 0, _1808) / Mask(112, 0, _1844)
                            mem[_1760 + 32] = Mask(112, 0, _1808)
                            mem[_1760 + 64] = Mask(112, 0, _1844)
                        else:
                            if Mask(112, 0, _1844) != 0:
                                if Mask(112, 0, _1808):
                                    require Mask(112, 0, _1808)
                                    mem[_1760 + 96] = 10^18 * Mask(112, 0, _1844) / Mask(112, 0, _1808)
                            mem[_1760 + 32] = Mask(112, 0, _1844)
                            mem[_1760 + 64] = Mask(112, 0, _1808)
                        mem[_1760] = address(_1581)
                        require s < mem[_860]
                        mem[(32 * s) + _860 + 32] = _1760
                    else:
                        require ext_code.size(address(_1581))
                        staticcall address(_1581).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1761 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1761] == mem[_1761 + 12 len 20]
                        if mem[_1761 + 12 len 20] != address(arg2):
                            _1562 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                        _1856 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1856] = 0
                        mem[_1856 + 32] = 0
                        mem[_1856 + 64] = 0
                        mem[_1856 + 96] = 0
                        require ext_code.size(address(_1581))
                        staticcall address(_1581).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1910 = mem[_1886]
                        require mem[_1886] == mem[_1886 + 18 len 14]
                        _1947 = mem[_1886 + 32]
                        require mem[_1886 + 32] == mem[_1886 + 50 len 14]
                        require mem[_1886 + 64] == mem[_1886 + 92 len 4]
                        require ext_code.size(address(_1581))
                        staticcall address(_1581).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2018 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2018] == mem[_2018 + 12 len 20]
                        if address(arg2) == mem[_2018 + 12 len 20]:
                            if Mask(112, 0, _1910) != 0:
                                if Mask(112, 0, _1947):
                                    require Mask(112, 0, _1947)
                                    mem[_1856 + 96] = 10^18 * Mask(112, 0, _1910) / Mask(112, 0, _1947)
                            mem[_1856 + 32] = Mask(112, 0, _1910)
                            mem[_1856 + 64] = Mask(112, 0, _1947)
                        else:
                            if Mask(112, 0, _1947) != 0:
                                if Mask(112, 0, _1910):
                                    require Mask(112, 0, _1910)
                                    mem[_1856 + 96] = 10^18 * Mask(112, 0, _1947) / Mask(112, 0, _1910)
                            mem[_1856 + 32] = Mask(112, 0, _1947)
                            mem[_1856 + 64] = Mask(112, 0, _1910)
                        mem[_1856] = address(_1581)
                        require s < mem[_860]
                        mem[(32 * s) + _860 + 32] = _1856
                    _1562 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1580 = mem[64]
                mem[mem[64]] = 32
                _1592 = mem[_860]
                mem[mem[64] + 32] = mem[_860]
                idx = 0
                s = _860 + 32
                t = mem[64] + 64
                while idx < _1592:
                    _2210 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_2210 + 32]
                    mem[t + 64] = mem[_2210 + 64]
                    mem[t + 96] = mem[_2210 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _1580 + (128 * _1592) + -mem[64] + 64
            mem[64] = _860 + (32 * s) + 160
            mem[_860 + (32 * s) + 32] = 0
            mem[_860 + (32 * s) + 64] = 0
            mem[_860 + (32 * s) + 96] = 0
            mem[_860 + (32 * s) + 128] = 0
            mem[var37001] = _860 + (32 * s) + 32
            t = var37001
            idx = var37002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[_860 + (32 * s) + 32] = 0
                mem[_860 + (32 * s) + 64] = 0
                mem[_860 + (32 * s) + 96] = 0
                mem[_860 + (32 * s) + 128] = 0
                mem[t + 32] = _860 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            _2564 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _2564:
                require idx < mem[ceil32(return_data.size) + 96]
                _2577 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2637 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2637] == mem[_2637 + 12 len 20]
                if mem[_2637 + 12 len 20] == address(arg2):
                    _2666 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2666] = 0
                    mem[_2666 + 32] = 0
                    mem[_2666 + 64] = 0
                    mem[_2666 + 96] = 0
                    require ext_code.size(address(_2577))
                    staticcall address(_2577).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2696 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2702 = mem[_2696]
                    require mem[_2696] == mem[_2696 + 18 len 14]
                    _2708 = mem[_2696 + 32]
                    require mem[_2696 + 32] == mem[_2696 + 50 len 14]
                    require mem[_2696 + 64] == mem[_2696 + 92 len 4]
                    require ext_code.size(address(_2577))
                    staticcall address(_2577).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2762 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2762] == mem[_2762 + 12 len 20]
                    if address(arg2) == mem[_2762 + 12 len 20]:
                        if Mask(112, 0, _2702) != 0:
                            if Mask(112, 0, _2708):
                                require Mask(112, 0, _2708)
                                mem[_2666 + 96] = 10^18 * Mask(112, 0, _2702) / Mask(112, 0, _2708)
                        mem[_2666 + 32] = Mask(112, 0, _2702)
                        mem[_2666 + 64] = Mask(112, 0, _2708)
                    else:
                        if Mask(112, 0, _2708) != 0:
                            if Mask(112, 0, _2702):
                                require Mask(112, 0, _2702)
                                mem[_2666 + 96] = 10^18 * Mask(112, 0, _2708) / Mask(112, 0, _2702)
                        mem[_2666 + 32] = Mask(112, 0, _2708)
                        mem[_2666 + 64] = Mask(112, 0, _2702)
                    mem[_2666] = address(_2577)
                    require s < mem[_860]
                    mem[(32 * s) + _860 + 32] = _2666
                else:
                    require ext_code.size(address(_2577))
                    staticcall address(_2577).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2667 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2667] == mem[_2667 + 12 len 20]
                    if mem[_2667 + 12 len 20] != address(arg2):
                        _2564 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _2714 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2714] = 0
                    mem[_2714 + 32] = 0
                    mem[_2714 + 64] = 0
                    mem[_2714 + 96] = 0
                    require ext_code.size(address(_2577))
                    staticcall address(_2577).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2738 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2756 = mem[_2738]
                    require mem[_2738] == mem[_2738 + 18 len 14]
                    _2769 = mem[_2738 + 32]
                    require mem[_2738 + 32] == mem[_2738 + 50 len 14]
                    require mem[_2738 + 64] == mem[_2738 + 92 len 4]
                    require ext_code.size(address(_2577))
                    staticcall address(_2577).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2798] == mem[_2798 + 12 len 20]
                    if address(arg2) == mem[_2798 + 12 len 20]:
                        if Mask(112, 0, _2756) != 0:
                            if Mask(112, 0, _2769):
                                require Mask(112, 0, _2769)
                                mem[_2714 + 96] = 10^18 * Mask(112, 0, _2756) / Mask(112, 0, _2769)
                        mem[_2714 + 32] = Mask(112, 0, _2756)
                        mem[_2714 + 64] = Mask(112, 0, _2769)
                    else:
                        if Mask(112, 0, _2769) != 0:
                            if Mask(112, 0, _2756):
                                require Mask(112, 0, _2756)
                                mem[_2714 + 96] = 10^18 * Mask(112, 0, _2769) / Mask(112, 0, _2756)
                        mem[_2714 + 32] = Mask(112, 0, _2769)
                        mem[_2714 + 64] = Mask(112, 0, _2756)
                    mem[_2714] = address(_2577)
                    require s < mem[_860]
                    mem[(32 * s) + _860 + 32] = _2714
                _2564 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _2576 = mem[64]
            mem[mem[64]] = 32
            _2588 = mem[_860]
            mem[mem[64] + 32] = mem[_860]
            idx = 0
            s = _860 + 32
            t = mem[64] + 64
            while idx < _2588:
                _2882 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2882 + 32]
                mem[t + 64] = mem[_2882 + 64]
                mem[t + 96] = mem[_2882 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2576 + (128 * _2588) + -mem[64] + 64
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg3] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg3]
        idx = arg3
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
            _457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_457] == mem[_457 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_457 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _849 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _849:
            require idx < mem[ceil32(return_data.size) + 96]
            _863 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _907 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_907] == mem[_907 + 12 len 20]
            if mem[_907 + 12 len 20] != address(arg2):
                require ext_code.size(address(_863))
                staticcall address(_863).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1081 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1081] == mem[_1081 + 12 len 20]
                if mem[_1081 + 12 len 20] != address(arg2):
                    _849 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
            _849 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _862 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            _1563 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _1563:
                require idx < mem[ceil32(return_data.size) + 96]
                _1583 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1650 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1650] == mem[_1650 + 12 len 20]
                if mem[_1650 + 12 len 20] == address(arg2):
                    _1762 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1762] = 0
                    mem[_1762 + 32] = 0
                    mem[_1762 + 64] = 0
                    mem[_1762 + 96] = 0
                    require ext_code.size(address(_1583))
                    staticcall address(_1583).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1811 = mem[_1793]
                    require mem[_1793] == mem[_1793 + 18 len 14]
                    _1846 = mem[_1793 + 32]
                    require mem[_1793 + 32] == mem[_1793 + 50 len 14]
                    require mem[_1793 + 64] == mem[_1793 + 92 len 4]
                    require ext_code.size(address(_1583))
                    staticcall address(_1583).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1925 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1925] == mem[_1925 + 12 len 20]
                    if address(arg2) == mem[_1925 + 12 len 20]:
                        if Mask(112, 0, _1811) != 0:
                            if Mask(112, 0, _1846):
                                require Mask(112, 0, _1846)
                                mem[_1762 + 96] = 10^18 * Mask(112, 0, _1811) / Mask(112, 0, _1846)
                        mem[_1762 + 32] = Mask(112, 0, _1811)
                        mem[_1762 + 64] = Mask(112, 0, _1846)
                    else:
                        if Mask(112, 0, _1846) != 0:
                            if Mask(112, 0, _1811):
                                require Mask(112, 0, _1811)
                                mem[_1762 + 96] = 10^18 * Mask(112, 0, _1846) / Mask(112, 0, _1811)
                        mem[_1762 + 32] = Mask(112, 0, _1846)
                        mem[_1762 + 64] = Mask(112, 0, _1811)
                    mem[_1762] = address(_1583)
                    require s < mem[_862]
                    mem[(32 * s) + _862 + 32] = _1762
                else:
                    require ext_code.size(address(_1583))
                    staticcall address(_1583).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1763 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1763] == mem[_1763 + 12 len 20]
                    if mem[_1763 + 12 len 20] != address(arg2):
                        _1563 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _1857 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1857] = 0
                    mem[_1857 + 32] = 0
                    mem[_1857 + 64] = 0
                    mem[_1857 + 96] = 0
                    require ext_code.size(address(_1583))
                    staticcall address(_1583).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1912 = mem[_1887]
                    require mem[_1887] == mem[_1887 + 18 len 14]
                    _1950 = mem[_1887 + 32]
                    require mem[_1887 + 32] == mem[_1887 + 50 len 14]
                    require mem[_1887 + 64] == mem[_1887 + 92 len 4]
                    require ext_code.size(address(_1583))
                    staticcall address(_1583).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2019 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2019] == mem[_2019 + 12 len 20]
                    if address(arg2) == mem[_2019 + 12 len 20]:
                        if Mask(112, 0, _1912) != 0:
                            if Mask(112, 0, _1950):
                                require Mask(112, 0, _1950)
                                mem[_1857 + 96] = 10^18 * Mask(112, 0, _1912) / Mask(112, 0, _1950)
                        mem[_1857 + 32] = Mask(112, 0, _1912)
                        mem[_1857 + 64] = Mask(112, 0, _1950)
                    else:
                        if Mask(112, 0, _1950) != 0:
                            if Mask(112, 0, _1912):
                                require Mask(112, 0, _1912)
                                mem[_1857 + 96] = 10^18 * Mask(112, 0, _1950) / Mask(112, 0, _1912)
                        mem[_1857 + 32] = Mask(112, 0, _1950)
                        mem[_1857 + 64] = Mask(112, 0, _1912)
                    mem[_1857] = address(_1583)
                    require s < mem[_862]
                    mem[(32 * s) + _862 + 32] = _1857
                _1563 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _1582 = mem[64]
            mem[mem[64]] = 32
            _1593 = mem[_862]
            mem[mem[64] + 32] = mem[_862]
            idx = 0
            s = _862 + 32
            t = mem[64] + 64
            while idx < _1593:
                _2215 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2215 + 32]
                mem[t + 64] = mem[_2215 + 64]
                mem[t + 96] = mem[_2215 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _1582 + (128 * _1593) + -mem[64] + 64
        mem[64] = _862 + (32 * s) + 160
        mem[_862 + (32 * s) + 32] = 0
        mem[_862 + (32 * s) + 64] = 0
        mem[_862 + (32 * s) + 96] = 0
        mem[_862 + (32 * s) + 128] = 0
        mem[var38001] = _862 + (32 * s) + 32
        t = var38001
        idx = var38002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_862 + (32 * s) + 32] = 0
            mem[_862 + (32 * s) + 64] = 0
            mem[_862 + (32 * s) + 96] = 0
            mem[_862 + (32 * s) + 128] = 0
            mem[t + 32] = _862 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        _2565 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _2565:
            require idx < mem[ceil32(return_data.size) + 96]
            _2579 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2639] == mem[_2639 + 12 len 20]
            if mem[_2639 + 12 len 20] == address(arg2):
                _2668 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2668] = 0
                mem[_2668 + 32] = 0
                mem[_2668 + 64] = 0
                mem[_2668 + 96] = 0
                require ext_code.size(address(_2579))
                staticcall address(_2579).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2703 = mem[_2697]
                require mem[_2697] == mem[_2697 + 18 len 14]
                _2709 = mem[_2697 + 32]
                require mem[_2697 + 32] == mem[_2697 + 50 len 14]
                require mem[_2697 + 64] == mem[_2697 + 92 len 4]
                require ext_code.size(address(_2579))
                staticcall address(_2579).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2763 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2763] == mem[_2763 + 12 len 20]
                if address(arg2) == mem[_2763 + 12 len 20]:
                    if Mask(112, 0, _2703) != 0:
                        if Mask(112, 0, _2709):
                            require Mask(112, 0, _2709)
                            mem[_2668 + 96] = 10^18 * Mask(112, 0, _2703) / Mask(112, 0, _2709)
                    mem[_2668 + 32] = Mask(112, 0, _2703)
                    mem[_2668 + 64] = Mask(112, 0, _2709)
                else:
                    if Mask(112, 0, _2709) != 0:
                        if Mask(112, 0, _2703):
                            require Mask(112, 0, _2703)
                            mem[_2668 + 96] = 10^18 * Mask(112, 0, _2709) / Mask(112, 0, _2703)
                    mem[_2668 + 32] = Mask(112, 0, _2709)
                    mem[_2668 + 64] = Mask(112, 0, _2703)
                mem[_2668] = address(_2579)
                require s < mem[_862]
                mem[(32 * s) + _862 + 32] = _2668
            else:
                require ext_code.size(address(_2579))
                staticcall address(_2579).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2669] == mem[_2669 + 12 len 20]
                if mem[_2669 + 12 len 20] != address(arg2):
                    _2565 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _2715 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2715] = 0
                mem[_2715 + 32] = 0
                mem[_2715 + 64] = 0
                mem[_2715 + 96] = 0
                require ext_code.size(address(_2579))
                staticcall address(_2579).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2757 = mem[_2739]
                require mem[_2739] == mem[_2739 + 18 len 14]
                _2771 = mem[_2739 + 32]
                require mem[_2739 + 32] == mem[_2739 + 50 len 14]
                require mem[_2739 + 64] == mem[_2739 + 92 len 4]
                require ext_code.size(address(_2579))
                staticcall address(_2579).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2799 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2799] == mem[_2799 + 12 len 20]
                if address(arg2) == mem[_2799 + 12 len 20]:
                    if Mask(112, 0, _2757) != 0:
                        if Mask(112, 0, _2771):
                            require Mask(112, 0, _2771)
                            mem[_2715 + 96] = 10^18 * Mask(112, 0, _2757) / Mask(112, 0, _2771)
                    mem[_2715 + 32] = Mask(112, 0, _2757)
                    mem[_2715 + 64] = Mask(112, 0, _2771)
                else:
                    if Mask(112, 0, _2771) != 0:
                        if Mask(112, 0, _2757):
                            require Mask(112, 0, _2757)
                            mem[_2715 + 96] = 10^18 * Mask(112, 0, _2771) / Mask(112, 0, _2757)
                    mem[_2715 + 32] = Mask(112, 0, _2771)
                    mem[_2715 + 64] = Mask(112, 0, _2757)
                mem[_2715] = address(_2579)
                require s < mem[_862]
                mem[(32 * s) + _862 + 32] = _2715
            _2565 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _2578 = mem[64]
        mem[mem[64]] = 32
        _2589 = mem[_862]
        mem[mem[64] + 32] = mem[_862]
        idx = 0
        s = _862 + 32
        t = mem[64] + 64
        while idx < _2589:
            _2887 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2887 + 32]
            mem[t + 64] = mem[_2887 + 64]
            mem[t + 96] = mem[_2887 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2578 + (128 * _2589) + -mem[64] + 64
    if arg4:
        require arg4 <= test266151307()
        mem[ceil32(return_data.size) + 96] = arg4
        mem[64] = ceil32(return_data.size) + (32 * arg4) + 128
        if not arg4:
            idx = arg3
            s = 0
            while idx < arg4 + arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_460] == mem[_460 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_460 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _850 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _850:
                require idx < mem[ceil32(return_data.size) + 96]
                _865 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _910 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_910] == mem[_910 + 12 len 20]
                if mem[_910 + 12 len 20] != address(arg2):
                    require ext_code.size(address(_865))
                    staticcall address(_865).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1084 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1084] == mem[_1084 + 12 len 20]
                    if mem[_1084 + 12 len 20] != address(arg2):
                        _850 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                _850 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            require s <= test266151307()
            _864 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                _1564 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _1564:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _1585 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1653 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1653] == mem[_1653 + 12 len 20]
                    if mem[_1653 + 12 len 20] == address(arg2):
                        _1764 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1764] = 0
                        mem[_1764 + 32] = 0
                        mem[_1764 + 64] = 0
                        mem[_1764 + 96] = 0
                        require ext_code.size(address(_1585))
                        staticcall address(_1585).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1796 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1814 = mem[_1796]
                        require mem[_1796] == mem[_1796 + 18 len 14]
                        _1848 = mem[_1796 + 32]
                        require mem[_1796 + 32] == mem[_1796 + 50 len 14]
                        require mem[_1796 + 64] == mem[_1796 + 92 len 4]
                        require ext_code.size(address(_1585))
                        staticcall address(_1585).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1928] == mem[_1928 + 12 len 20]
                        if address(arg2) == mem[_1928 + 12 len 20]:
                            if Mask(112, 0, _1814) != 0:
                                if Mask(112, 0, _1848):
                                    require Mask(112, 0, _1848)
                                    mem[_1764 + 96] = 10^18 * Mask(112, 0, _1814) / Mask(112, 0, _1848)
                            mem[_1764 + 32] = Mask(112, 0, _1814)
                            mem[_1764 + 64] = Mask(112, 0, _1848)
                        else:
                            if Mask(112, 0, _1848) != 0:
                                if Mask(112, 0, _1814):
                                    require Mask(112, 0, _1814)
                                    mem[_1764 + 96] = 10^18 * Mask(112, 0, _1848) / Mask(112, 0, _1814)
                            mem[_1764 + 32] = Mask(112, 0, _1848)
                            mem[_1764 + 64] = Mask(112, 0, _1814)
                        mem[_1764] = address(_1585)
                        require s < mem[_864]
                        mem[(32 * s) + _864 + 32] = _1764
                    else:
                        require ext_code.size(address(_1585))
                        staticcall address(_1585).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1765 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1765] == mem[_1765 + 12 len 20]
                        if mem[_1765 + 12 len 20] != address(arg2):
                            _1564 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                        _1858 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1858] = 0
                        mem[_1858 + 32] = 0
                        mem[_1858 + 64] = 0
                        mem[_1858 + 96] = 0
                        require ext_code.size(address(_1585))
                        staticcall address(_1585).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1914 = mem[_1888]
                        require mem[_1888] == mem[_1888 + 18 len 14]
                        _1953 = mem[_1888 + 32]
                        require mem[_1888 + 32] == mem[_1888 + 50 len 14]
                        require mem[_1888 + 64] == mem[_1888 + 92 len 4]
                        require ext_code.size(address(_1585))
                        staticcall address(_1585).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2020] == mem[_2020 + 12 len 20]
                        if address(arg2) == mem[_2020 + 12 len 20]:
                            if Mask(112, 0, _1914) != 0:
                                if Mask(112, 0, _1953):
                                    require Mask(112, 0, _1953)
                                    mem[_1858 + 96] = 10^18 * Mask(112, 0, _1914) / Mask(112, 0, _1953)
                            mem[_1858 + 32] = Mask(112, 0, _1914)
                            mem[_1858 + 64] = Mask(112, 0, _1953)
                        else:
                            if Mask(112, 0, _1953) != 0:
                                if Mask(112, 0, _1914):
                                    require Mask(112, 0, _1914)
                                    mem[_1858 + 96] = 10^18 * Mask(112, 0, _1953) / Mask(112, 0, _1914)
                            mem[_1858 + 32] = Mask(112, 0, _1953)
                            mem[_1858 + 64] = Mask(112, 0, _1914)
                        mem[_1858] = address(_1585)
                        require s < mem[_864]
                        mem[(32 * s) + _864 + 32] = _1858
                    _1564 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _1584 = mem[64]
                mem[mem[64]] = 32
                _1594 = mem[_864]
                mem[mem[64] + 32] = mem[_864]
                idx = 0
                s = _864 + 32
                t = mem[64] + 64
                while idx < _1594:
                    _2220 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_2220 + 32]
                    mem[t + 64] = mem[_2220 + 64]
                    mem[t + 96] = mem[_2220 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _1584 + (128 * _1594) + -mem[64] + 64
            mem[64] = _864 + (32 * s) + 160
            mem[_864 + (32 * s) + 32] = 0
            mem[_864 + (32 * s) + 64] = 0
            mem[_864 + (32 * s) + 96] = 0
            mem[_864 + (32 * s) + 128] = 0
            mem[var37001] = _864 + (32 * s) + 32
            t = var37001
            idx = var37002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[_864 + (32 * s) + 32] = 0
                mem[_864 + (32 * s) + 64] = 0
                mem[_864 + (32 * s) + 96] = 0
                mem[_864 + (32 * s) + 128] = 0
                mem[t + 32] = _864 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            _2566 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _2566:
                require idx < mem[ceil32(return_data.size) + 96]
                _2581 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2641] == mem[_2641 + 12 len 20]
                if mem[_2641 + 12 len 20] == address(arg2):
                    _2670 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2670] = 0
                    mem[_2670 + 32] = 0
                    mem[_2670 + 64] = 0
                    mem[_2670 + 96] = 0
                    require ext_code.size(address(_2581))
                    staticcall address(_2581).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2698 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2704 = mem[_2698]
                    require mem[_2698] == mem[_2698 + 18 len 14]
                    _2710 = mem[_2698 + 32]
                    require mem[_2698 + 32] == mem[_2698 + 50 len 14]
                    require mem[_2698 + 64] == mem[_2698 + 92 len 4]
                    require ext_code.size(address(_2581))
                    staticcall address(_2581).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2764] == mem[_2764 + 12 len 20]
                    if address(arg2) == mem[_2764 + 12 len 20]:
                        if Mask(112, 0, _2704) != 0:
                            if Mask(112, 0, _2710):
                                require Mask(112, 0, _2710)
                                mem[_2670 + 96] = 10^18 * Mask(112, 0, _2704) / Mask(112, 0, _2710)
                        mem[_2670 + 32] = Mask(112, 0, _2704)
                        mem[_2670 + 64] = Mask(112, 0, _2710)
                    else:
                        if Mask(112, 0, _2710) != 0:
                            if Mask(112, 0, _2704):
                                require Mask(112, 0, _2704)
                                mem[_2670 + 96] = 10^18 * Mask(112, 0, _2710) / Mask(112, 0, _2704)
                        mem[_2670 + 32] = Mask(112, 0, _2710)
                        mem[_2670 + 64] = Mask(112, 0, _2704)
                    mem[_2670] = address(_2581)
                    require s < mem[_864]
                    mem[(32 * s) + _864 + 32] = _2670
                else:
                    require ext_code.size(address(_2581))
                    staticcall address(_2581).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2671] == mem[_2671 + 12 len 20]
                    if mem[_2671 + 12 len 20] != address(arg2):
                        _2566 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _2716 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2716] = 0
                    mem[_2716 + 32] = 0
                    mem[_2716 + 64] = 0
                    mem[_2716 + 96] = 0
                    require ext_code.size(address(_2581))
                    staticcall address(_2581).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2740 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2758 = mem[_2740]
                    require mem[_2740] == mem[_2740 + 18 len 14]
                    _2773 = mem[_2740 + 32]
                    require mem[_2740 + 32] == mem[_2740 + 50 len 14]
                    require mem[_2740 + 64] == mem[_2740 + 92 len 4]
                    require ext_code.size(address(_2581))
                    staticcall address(_2581).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2800 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2800] == mem[_2800 + 12 len 20]
                    if address(arg2) == mem[_2800 + 12 len 20]:
                        if Mask(112, 0, _2758) != 0:
                            if Mask(112, 0, _2773):
                                require Mask(112, 0, _2773)
                                mem[_2716 + 96] = 10^18 * Mask(112, 0, _2758) / Mask(112, 0, _2773)
                        mem[_2716 + 32] = Mask(112, 0, _2758)
                        mem[_2716 + 64] = Mask(112, 0, _2773)
                    else:
                        if Mask(112, 0, _2773) != 0:
                            if Mask(112, 0, _2758):
                                require Mask(112, 0, _2758)
                                mem[_2716 + 96] = 10^18 * Mask(112, 0, _2773) / Mask(112, 0, _2758)
                        mem[_2716 + 32] = Mask(112, 0, _2773)
                        mem[_2716 + 64] = Mask(112, 0, _2758)
                    mem[_2716] = address(_2581)
                    require s < mem[_864]
                    mem[(32 * s) + _864 + 32] = _2716
                _2566 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _2580 = mem[64]
            mem[mem[64]] = 32
            _2590 = mem[_864]
            mem[mem[64] + 32] = mem[_864]
            idx = 0
            s = _864 + 32
            t = mem[64] + 64
            while idx < _2590:
                _2892 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2892 + 32]
                mem[t + 64] = mem[_2892 + 64]
                mem[t + 96] = mem[_2892 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2580 + (128 * _2590) + -mem[64] + 64
        mem[ceil32(return_data.size) + 128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = arg3
        s = 0
        while idx < arg4 + arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_463] == mem[_463 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_463 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _851 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _851:
            require idx < mem[ceil32(return_data.size) + 96]
            _867 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _913 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_913] == mem[_913 + 12 len 20]
            if mem[_913 + 12 len 20] != address(arg2):
                require ext_code.size(address(_867))
                staticcall address(_867).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1087 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1087] == mem[_1087 + 12 len 20]
                if mem[_1087 + 12 len 20] != address(arg2):
                    _851 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
            _851 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _866 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            _1565 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _1565:
                require idx < mem[ceil32(return_data.size) + 96]
                _1587 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1656] == mem[_1656 + 12 len 20]
                if mem[_1656 + 12 len 20] == address(arg2):
                    _1766 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1766] = 0
                    mem[_1766 + 32] = 0
                    mem[_1766 + 64] = 0
                    mem[_1766 + 96] = 0
                    require ext_code.size(address(_1587))
                    staticcall address(_1587).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1817 = mem[_1799]
                    require mem[_1799] == mem[_1799 + 18 len 14]
                    _1850 = mem[_1799 + 32]
                    require mem[_1799 + 32] == mem[_1799 + 50 len 14]
                    require mem[_1799 + 64] == mem[_1799 + 92 len 4]
                    require ext_code.size(address(_1587))
                    staticcall address(_1587).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1931] == mem[_1931 + 12 len 20]
                    if address(arg2) == mem[_1931 + 12 len 20]:
                        if Mask(112, 0, _1817) != 0:
                            if Mask(112, 0, _1850):
                                require Mask(112, 0, _1850)
                                mem[_1766 + 96] = 10^18 * Mask(112, 0, _1817) / Mask(112, 0, _1850)
                        mem[_1766 + 32] = Mask(112, 0, _1817)
                        mem[_1766 + 64] = Mask(112, 0, _1850)
                    else:
                        if Mask(112, 0, _1850) != 0:
                            if Mask(112, 0, _1817):
                                require Mask(112, 0, _1817)
                                mem[_1766 + 96] = 10^18 * Mask(112, 0, _1850) / Mask(112, 0, _1817)
                        mem[_1766 + 32] = Mask(112, 0, _1850)
                        mem[_1766 + 64] = Mask(112, 0, _1817)
                    mem[_1766] = address(_1587)
                    require s < mem[_866]
                    mem[(32 * s) + _866 + 32] = _1766
                else:
                    require ext_code.size(address(_1587))
                    staticcall address(_1587).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1767] == mem[_1767 + 12 len 20]
                    if mem[_1767 + 12 len 20] != address(arg2):
                        _1565 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _1859 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1859] = 0
                    mem[_1859 + 32] = 0
                    mem[_1859 + 64] = 0
                    mem[_1859 + 96] = 0
                    require ext_code.size(address(_1587))
                    staticcall address(_1587).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1916 = mem[_1889]
                    require mem[_1889] == mem[_1889 + 18 len 14]
                    _1956 = mem[_1889 + 32]
                    require mem[_1889 + 32] == mem[_1889 + 50 len 14]
                    require mem[_1889 + 64] == mem[_1889 + 92 len 4]
                    require ext_code.size(address(_1587))
                    staticcall address(_1587).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2021 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2021] == mem[_2021 + 12 len 20]
                    if address(arg2) == mem[_2021 + 12 len 20]:
                        if Mask(112, 0, _1916) != 0:
                            if Mask(112, 0, _1956):
                                require Mask(112, 0, _1956)
                                mem[_1859 + 96] = 10^18 * Mask(112, 0, _1916) / Mask(112, 0, _1956)
                        mem[_1859 + 32] = Mask(112, 0, _1916)
                        mem[_1859 + 64] = Mask(112, 0, _1956)
                    else:
                        if Mask(112, 0, _1956) != 0:
                            if Mask(112, 0, _1916):
                                require Mask(112, 0, _1916)
                                mem[_1859 + 96] = 10^18 * Mask(112, 0, _1956) / Mask(112, 0, _1916)
                        mem[_1859 + 32] = Mask(112, 0, _1956)
                        mem[_1859 + 64] = Mask(112, 0, _1916)
                    mem[_1859] = address(_1587)
                    require s < mem[_866]
                    mem[(32 * s) + _866 + 32] = _1859
                _1565 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _1586 = mem[64]
            mem[mem[64]] = 32
            _1595 = mem[_866]
            mem[mem[64] + 32] = mem[_866]
            idx = 0
            s = _866 + 32
            t = mem[64] + 64
            while idx < _1595:
                _2225 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2225 + 32]
                mem[t + 64] = mem[_2225 + 64]
                mem[t + 96] = mem[_2225 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _1586 + (128 * _1595) + -mem[64] + 64
        mem[64] = _866 + (32 * s) + 160
        mem[_866 + (32 * s) + 32] = 0
        mem[_866 + (32 * s) + 64] = 0
        mem[_866 + (32 * s) + 96] = 0
        mem[_866 + (32 * s) + 128] = 0
        mem[var38001] = _866 + (32 * s) + 32
        t = var38001
        idx = var38002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_866 + (32 * s) + 32] = 0
            mem[_866 + (32 * s) + 64] = 0
            mem[_866 + (32 * s) + 96] = 0
            mem[_866 + (32 * s) + 128] = 0
            mem[t + 32] = _866 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        _2567 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _2567:
            require idx < mem[ceil32(return_data.size) + 96]
            _2583 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2643 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2643] == mem[_2643 + 12 len 20]
            if mem[_2643 + 12 len 20] == address(arg2):
                _2672 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2672] = 0
                mem[_2672 + 32] = 0
                mem[_2672 + 64] = 0
                mem[_2672 + 96] = 0
                require ext_code.size(address(_2583))
                staticcall address(_2583).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2705 = mem[_2699]
                require mem[_2699] == mem[_2699 + 18 len 14]
                _2711 = mem[_2699 + 32]
                require mem[_2699 + 32] == mem[_2699 + 50 len 14]
                require mem[_2699 + 64] == mem[_2699 + 92 len 4]
                require ext_code.size(address(_2583))
                staticcall address(_2583).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2765 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2765] == mem[_2765 + 12 len 20]
                if address(arg2) == mem[_2765 + 12 len 20]:
                    if Mask(112, 0, _2705) != 0:
                        if Mask(112, 0, _2711):
                            require Mask(112, 0, _2711)
                            mem[_2672 + 96] = 10^18 * Mask(112, 0, _2705) / Mask(112, 0, _2711)
                    mem[_2672 + 32] = Mask(112, 0, _2705)
                    mem[_2672 + 64] = Mask(112, 0, _2711)
                else:
                    if Mask(112, 0, _2711) != 0:
                        if Mask(112, 0, _2705):
                            require Mask(112, 0, _2705)
                            mem[_2672 + 96] = 10^18 * Mask(112, 0, _2711) / Mask(112, 0, _2705)
                    mem[_2672 + 32] = Mask(112, 0, _2711)
                    mem[_2672 + 64] = Mask(112, 0, _2705)
                mem[_2672] = address(_2583)
                require s < mem[_866]
                mem[(32 * s) + _866 + 32] = _2672
            else:
                require ext_code.size(address(_2583))
                staticcall address(_2583).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2673] == mem[_2673 + 12 len 20]
                if mem[_2673 + 12 len 20] != address(arg2):
                    _2567 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _2717 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2717] = 0
                mem[_2717 + 32] = 0
                mem[_2717 + 64] = 0
                mem[_2717 + 96] = 0
                require ext_code.size(address(_2583))
                staticcall address(_2583).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2759 = mem[_2741]
                require mem[_2741] == mem[_2741 + 18 len 14]
                _2775 = mem[_2741 + 32]
                require mem[_2741 + 32] == mem[_2741 + 50 len 14]
                require mem[_2741 + 64] == mem[_2741 + 92 len 4]
                require ext_code.size(address(_2583))
                staticcall address(_2583).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2801 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2801] == mem[_2801 + 12 len 20]
                if address(arg2) == mem[_2801 + 12 len 20]:
                    if Mask(112, 0, _2759) != 0:
                        if Mask(112, 0, _2775):
                            require Mask(112, 0, _2775)
                            mem[_2717 + 96] = 10^18 * Mask(112, 0, _2759) / Mask(112, 0, _2775)
                    mem[_2717 + 32] = Mask(112, 0, _2759)
                    mem[_2717 + 64] = Mask(112, 0, _2775)
                else:
                    if Mask(112, 0, _2775) != 0:
                        if Mask(112, 0, _2759):
                            require Mask(112, 0, _2759)
                            mem[_2717 + 96] = 10^18 * Mask(112, 0, _2775) / Mask(112, 0, _2759)
                    mem[_2717 + 32] = Mask(112, 0, _2775)
                    mem[_2717 + 64] = Mask(112, 0, _2759)
                mem[_2717] = address(_2583)
                require s < mem[_866]
                mem[(32 * s) + _866 + 32] = _2717
            _2567 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _2582 = mem[64]
        mem[mem[64]] = 32
        _2591 = mem[_866]
        mem[mem[64] + 32] = mem[_866]
        idx = 0
        s = _866 + 32
        t = mem[64] + 64
        while idx < _2591:
            _2897 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2897 + 32]
            mem[t + 64] = mem[_2897 + 64]
            mem[t + 96] = mem[_2897 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2582 + (128 * _2591) + -mem[64] + 64
    require ext_call.return_data[0] - arg3 <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
    if not ext_call.return_data[0] - arg3:
        idx = arg3
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
            _466 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_466] == mem[_466 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_466 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _852 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _852:
            require idx < mem[ceil32(return_data.size) + 96]
            _869 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_916] == mem[_916 + 12 len 20]
            if mem[_916 + 12 len 20] != address(arg2):
                require ext_code.size(address(_869))
                staticcall address(_869).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1090 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1090] == mem[_1090 + 12 len 20]
                if mem[_1090 + 12 len 20] != address(arg2):
                    _852 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
            _852 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _868 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            _1566 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _1566:
                require idx < mem[ceil32(return_data.size) + 96]
                _1589 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1659] == mem[_1659 + 12 len 20]
                if mem[_1659 + 12 len 20] == address(arg2):
                    _1768 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1768] = 0
                    mem[_1768 + 32] = 0
                    mem[_1768 + 64] = 0
                    mem[_1768 + 96] = 0
                    require ext_code.size(address(_1589))
                    staticcall address(_1589).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1802 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1820 = mem[_1802]
                    require mem[_1802] == mem[_1802 + 18 len 14]
                    _1852 = mem[_1802 + 32]
                    require mem[_1802 + 32] == mem[_1802 + 50 len 14]
                    require mem[_1802 + 64] == mem[_1802 + 92 len 4]
                    require ext_code.size(address(_1589))
                    staticcall address(_1589).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1934] == mem[_1934 + 12 len 20]
                    if address(arg2) == mem[_1934 + 12 len 20]:
                        if Mask(112, 0, _1820) != 0:
                            if Mask(112, 0, _1852):
                                require Mask(112, 0, _1852)
                                mem[_1768 + 96] = 10^18 * Mask(112, 0, _1820) / Mask(112, 0, _1852)
                        mem[_1768 + 32] = Mask(112, 0, _1820)
                        mem[_1768 + 64] = Mask(112, 0, _1852)
                    else:
                        if Mask(112, 0, _1852) != 0:
                            if Mask(112, 0, _1820):
                                require Mask(112, 0, _1820)
                                mem[_1768 + 96] = 10^18 * Mask(112, 0, _1852) / Mask(112, 0, _1820)
                        mem[_1768 + 32] = Mask(112, 0, _1852)
                        mem[_1768 + 64] = Mask(112, 0, _1820)
                    mem[_1768] = address(_1589)
                    require s < mem[_868]
                    mem[(32 * s) + _868 + 32] = _1768
                else:
                    require ext_code.size(address(_1589))
                    staticcall address(_1589).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1769] == mem[_1769 + 12 len 20]
                    if mem[_1769 + 12 len 20] != address(arg2):
                        _1566 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _1860 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1860] = 0
                    mem[_1860 + 32] = 0
                    mem[_1860 + 64] = 0
                    mem[_1860 + 96] = 0
                    require ext_code.size(address(_1589))
                    staticcall address(_1589).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1918 = mem[_1890]
                    require mem[_1890] == mem[_1890 + 18 len 14]
                    _1959 = mem[_1890 + 32]
                    require mem[_1890 + 32] == mem[_1890 + 50 len 14]
                    require mem[_1890 + 64] == mem[_1890 + 92 len 4]
                    require ext_code.size(address(_1589))
                    staticcall address(_1589).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2022] == mem[_2022 + 12 len 20]
                    if address(arg2) == mem[_2022 + 12 len 20]:
                        if Mask(112, 0, _1918) != 0:
                            if Mask(112, 0, _1959):
                                require Mask(112, 0, _1959)
                                mem[_1860 + 96] = 10^18 * Mask(112, 0, _1918) / Mask(112, 0, _1959)
                        mem[_1860 + 32] = Mask(112, 0, _1918)
                        mem[_1860 + 64] = Mask(112, 0, _1959)
                    else:
                        if Mask(112, 0, _1959) != 0:
                            if Mask(112, 0, _1918):
                                require Mask(112, 0, _1918)
                                mem[_1860 + 96] = 10^18 * Mask(112, 0, _1959) / Mask(112, 0, _1918)
                        mem[_1860 + 32] = Mask(112, 0, _1959)
                        mem[_1860 + 64] = Mask(112, 0, _1918)
                    mem[_1860] = address(_1589)
                    require s < mem[_868]
                    mem[(32 * s) + _868 + 32] = _1860
                _1566 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _1588 = mem[64]
            mem[mem[64]] = 32
            _1596 = mem[_868]
            mem[mem[64] + 32] = mem[_868]
            idx = 0
            s = _868 + 32
            t = mem[64] + 64
            while idx < _1596:
                _2230 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2230 + 32]
                mem[t + 64] = mem[_2230 + 64]
                mem[t + 96] = mem[_2230 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _1588 + (128 * _1596) + -mem[64] + 64
        mem[64] = _868 + (32 * s) + 160
        mem[_868 + (32 * s) + 32] = 0
        mem[_868 + (32 * s) + 64] = 0
        mem[_868 + (32 * s) + 96] = 0
        mem[_868 + (32 * s) + 128] = 0
        mem[var38001] = _868 + (32 * s) + 32
        t = var38001
        idx = var38002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_868 + (32 * s) + 32] = 0
            mem[_868 + (32 * s) + 64] = 0
            mem[_868 + (32 * s) + 96] = 0
            mem[_868 + (32 * s) + 128] = 0
            mem[t + 32] = _868 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        _2568 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _2568:
            require idx < mem[ceil32(return_data.size) + 96]
            _2585 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2645 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2645] == mem[_2645 + 12 len 20]
            if mem[_2645 + 12 len 20] == address(arg2):
                _2674 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2674] = 0
                mem[_2674 + 32] = 0
                mem[_2674 + 64] = 0
                mem[_2674 + 96] = 0
                require ext_code.size(address(_2585))
                staticcall address(_2585).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2700 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2706 = mem[_2700]
                require mem[_2700] == mem[_2700 + 18 len 14]
                _2712 = mem[_2700 + 32]
                require mem[_2700 + 32] == mem[_2700 + 50 len 14]
                require mem[_2700 + 64] == mem[_2700 + 92 len 4]
                require ext_code.size(address(_2585))
                staticcall address(_2585).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2766] == mem[_2766 + 12 len 20]
                if address(arg2) == mem[_2766 + 12 len 20]:
                    if Mask(112, 0, _2706) != 0:
                        if Mask(112, 0, _2712):
                            require Mask(112, 0, _2712)
                            mem[_2674 + 96] = 10^18 * Mask(112, 0, _2706) / Mask(112, 0, _2712)
                    mem[_2674 + 32] = Mask(112, 0, _2706)
                    mem[_2674 + 64] = Mask(112, 0, _2712)
                else:
                    if Mask(112, 0, _2712) != 0:
                        if Mask(112, 0, _2706):
                            require Mask(112, 0, _2706)
                            mem[_2674 + 96] = 10^18 * Mask(112, 0, _2712) / Mask(112, 0, _2706)
                    mem[_2674 + 32] = Mask(112, 0, _2712)
                    mem[_2674 + 64] = Mask(112, 0, _2706)
                mem[_2674] = address(_2585)
                require s < mem[_868]
                mem[(32 * s) + _868 + 32] = _2674
            else:
                require ext_code.size(address(_2585))
                staticcall address(_2585).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2675] == mem[_2675 + 12 len 20]
                if mem[_2675 + 12 len 20] != address(arg2):
                    _2568 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _2718 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2718] = 0
                mem[_2718 + 32] = 0
                mem[_2718 + 64] = 0
                mem[_2718 + 96] = 0
                require ext_code.size(address(_2585))
                staticcall address(_2585).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2742 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2760 = mem[_2742]
                require mem[_2742] == mem[_2742 + 18 len 14]
                _2777 = mem[_2742 + 32]
                require mem[_2742 + 32] == mem[_2742 + 50 len 14]
                require mem[_2742 + 64] == mem[_2742 + 92 len 4]
                require ext_code.size(address(_2585))
                staticcall address(_2585).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2802] == mem[_2802 + 12 len 20]
                if address(arg2) == mem[_2802 + 12 len 20]:
                    if Mask(112, 0, _2760) != 0:
                        if Mask(112, 0, _2777):
                            require Mask(112, 0, _2777)
                            mem[_2718 + 96] = 10^18 * Mask(112, 0, _2760) / Mask(112, 0, _2777)
                    mem[_2718 + 32] = Mask(112, 0, _2760)
                    mem[_2718 + 64] = Mask(112, 0, _2777)
                else:
                    if Mask(112, 0, _2777) != 0:
                        if Mask(112, 0, _2760):
                            require Mask(112, 0, _2760)
                            mem[_2718 + 96] = 10^18 * Mask(112, 0, _2777) / Mask(112, 0, _2760)
                    mem[_2718 + 32] = Mask(112, 0, _2777)
                    mem[_2718 + 64] = Mask(112, 0, _2760)
                mem[_2718] = address(_2585)
                require s < mem[_868]
                mem[(32 * s) + _868 + 32] = _2718
            _2568 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _2584 = mem[64]
        mem[mem[64]] = 32
        _2592 = mem[_868]
        mem[mem[64] + 32] = mem[_868]
        idx = 0
        s = _868 + 32
        t = mem[64] + 64
        while idx < _2592:
            _2902 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2902 + 32]
            mem[t + 64] = mem[_2902 + 64]
            mem[t + 96] = mem[_2902 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2584 + (128 * _2592) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg3] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg3]
    idx = arg3
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
        _469 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_469] == mem[_469 + 12 len 20]
        require s < mem[ceil32(return_data.size) + 96]
        mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_469 + 12 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    _853 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _853:
        require idx < mem[ceil32(return_data.size) + 96]
        _871 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _919 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_919] == mem[_919 + 12 len 20]
        if mem[_919 + 12 len 20] != address(arg2):
            require ext_code.size(address(_871))
            staticcall address(_871).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1093 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1093] == mem[_1093 + 12 len 20]
            if mem[_1093 + 12 len 20] != address(arg2):
                _853 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
        _853 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _870 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        _1567 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _1567:
            require idx < mem[ceil32(return_data.size) + 96]
            _1591 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1662 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1662] == mem[_1662 + 12 len 20]
            if mem[_1662 + 12 len 20] == address(arg2):
                _1770 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1770] = 0
                mem[_1770 + 32] = 0
                mem[_1770 + 64] = 0
                mem[_1770 + 96] = 0
                require ext_code.size(address(_1591))
                staticcall address(_1591).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1823 = mem[_1805]
                require mem[_1805] == mem[_1805 + 18 len 14]
                _1854 = mem[_1805 + 32]
                require mem[_1805 + 32] == mem[_1805 + 50 len 14]
                require mem[_1805 + 64] == mem[_1805 + 92 len 4]
                require ext_code.size(address(_1591))
                staticcall address(_1591).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1937 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1937] == mem[_1937 + 12 len 20]
                if address(arg2) == mem[_1937 + 12 len 20]:
                    if Mask(112, 0, _1823) != 0:
                        if Mask(112, 0, _1854):
                            require Mask(112, 0, _1854)
                            mem[_1770 + 96] = 10^18 * Mask(112, 0, _1823) / Mask(112, 0, _1854)
                    mem[_1770 + 32] = Mask(112, 0, _1823)
                    mem[_1770 + 64] = Mask(112, 0, _1854)
                else:
                    if Mask(112, 0, _1854) != 0:
                        if Mask(112, 0, _1823):
                            require Mask(112, 0, _1823)
                            mem[_1770 + 96] = 10^18 * Mask(112, 0, _1854) / Mask(112, 0, _1823)
                    mem[_1770 + 32] = Mask(112, 0, _1854)
                    mem[_1770 + 64] = Mask(112, 0, _1823)
                mem[_1770] = address(_1591)
                require s < mem[_870]
                mem[(32 * s) + _870 + 32] = _1770
            else:
                require ext_code.size(address(_1591))
                staticcall address(_1591).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1771 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1771] == mem[_1771 + 12 len 20]
                if mem[_1771 + 12 len 20] != address(arg2):
                    _1567 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _1861 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1861] = 0
                mem[_1861 + 32] = 0
                mem[_1861 + 64] = 0
                mem[_1861 + 96] = 0
                require ext_code.size(address(_1591))
                staticcall address(_1591).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1891 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1920 = mem[_1891]
                require mem[_1891] == mem[_1891 + 18 len 14]
                _1962 = mem[_1891 + 32]
                require mem[_1891 + 32] == mem[_1891 + 50 len 14]
                require mem[_1891 + 64] == mem[_1891 + 92 len 4]
                require ext_code.size(address(_1591))
                staticcall address(_1591).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2023 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2023] == mem[_2023 + 12 len 20]
                if address(arg2) == mem[_2023 + 12 len 20]:
                    if Mask(112, 0, _1920) != 0:
                        if Mask(112, 0, _1962):
                            require Mask(112, 0, _1962)
                            mem[_1861 + 96] = 10^18 * Mask(112, 0, _1920) / Mask(112, 0, _1962)
                    mem[_1861 + 32] = Mask(112, 0, _1920)
                    mem[_1861 + 64] = Mask(112, 0, _1962)
                else:
                    if Mask(112, 0, _1962) != 0:
                        if Mask(112, 0, _1920):
                            require Mask(112, 0, _1920)
                            mem[_1861 + 96] = 10^18 * Mask(112, 0, _1962) / Mask(112, 0, _1920)
                    mem[_1861 + 32] = Mask(112, 0, _1962)
                    mem[_1861 + 64] = Mask(112, 0, _1920)
                mem[_1861] = address(_1591)
                require s < mem[_870]
                mem[(32 * s) + _870 + 32] = _1861
            _1567 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _1590 = mem[64]
        mem[mem[64]] = 32
        _1597 = mem[_870]
        mem[mem[64] + 32] = mem[_870]
        idx = 0
        s = _870 + 32
        t = mem[64] + 64
        while idx < _1597:
            _2235 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2235 + 32]
            mem[t + 64] = mem[_2235 + 64]
            mem[t + 96] = mem[_2235 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1590 + (128 * _1597) + -mem[64] + 64
    mem[64] = _870 + (32 * s) + 160
    mem[_870 + (32 * s) + 32] = 0
    mem[_870 + (32 * s) + 64] = 0
    mem[_870 + (32 * s) + 96] = 0
    mem[_870 + (32 * s) + 128] = 0
    mem[var39001] = _870 + (32 * s) + 32
    t = var39001
    idx = var39002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_870 + (32 * s) + 32] = 0
        mem[_870 + (32 * s) + 64] = 0
        mem[_870 + (32 * s) + 96] = 0
        mem[_870 + (32 * s) + 128] = 0
        mem[t + 32] = _870 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    _2569 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _2569:
        require idx < mem[ceil32(return_data.size) + 96]
        _2587 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2647 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2647] == mem[_2647 + 12 len 20]
        if mem[_2647 + 12 len 20] == address(arg2):
            _2676 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2676] = 0
            mem[_2676 + 32] = 0
            mem[_2676 + 64] = 0
            mem[_2676 + 96] = 0
            require ext_code.size(address(_2587))
            staticcall address(_2587).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2707 = mem[_2701]
            require mem[_2701] == mem[_2701 + 18 len 14]
            _2713 = mem[_2701 + 32]
            require mem[_2701 + 32] == mem[_2701 + 50 len 14]
            require mem[_2701 + 64] == mem[_2701 + 92 len 4]
            require ext_code.size(address(_2587))
            staticcall address(_2587).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2767 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2767] == mem[_2767 + 12 len 20]
            if address(arg2) == mem[_2767 + 12 len 20]:
                if Mask(112, 0, _2707) != 0:
                    if Mask(112, 0, _2713):
                        require Mask(112, 0, _2713)
                        mem[_2676 + 96] = 10^18 * Mask(112, 0, _2707) / Mask(112, 0, _2713)
                mem[_2676 + 32] = Mask(112, 0, _2707)
                mem[_2676 + 64] = Mask(112, 0, _2713)
            else:
                if Mask(112, 0, _2713) != 0:
                    if Mask(112, 0, _2707):
                        require Mask(112, 0, _2707)
                        mem[_2676 + 96] = 10^18 * Mask(112, 0, _2713) / Mask(112, 0, _2707)
                mem[_2676 + 32] = Mask(112, 0, _2713)
                mem[_2676 + 64] = Mask(112, 0, _2707)
            mem[_2676] = address(_2587)
            require s < mem[_870]
            mem[(32 * s) + _870 + 32] = _2676
        else:
            require ext_code.size(address(_2587))
            staticcall address(_2587).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2677 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2677] == mem[_2677 + 12 len 20]
            if mem[_2677 + 12 len 20] != address(arg2):
                _2569 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
            _2719 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2719] = 0
            mem[_2719 + 32] = 0
            mem[_2719 + 64] = 0
            mem[_2719 + 96] = 0
            require ext_code.size(address(_2587))
            staticcall address(_2587).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2743 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2761 = mem[_2743]
            require mem[_2743] == mem[_2743 + 18 len 14]
            _2779 = mem[_2743 + 32]
            require mem[_2743 + 32] == mem[_2743 + 50 len 14]
            require mem[_2743 + 64] == mem[_2743 + 92 len 4]
            require ext_code.size(address(_2587))
            staticcall address(_2587).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2803] == mem[_2803 + 12 len 20]
            if address(arg2) == mem[_2803 + 12 len 20]:
                if Mask(112, 0, _2761) != 0:
                    if Mask(112, 0, _2779):
                        require Mask(112, 0, _2779)
                        mem[_2719 + 96] = 10^18 * Mask(112, 0, _2761) / Mask(112, 0, _2779)
                mem[_2719 + 32] = Mask(112, 0, _2761)
                mem[_2719 + 64] = Mask(112, 0, _2779)
            else:
                if Mask(112, 0, _2779) != 0:
                    if Mask(112, 0, _2761):
                        require Mask(112, 0, _2761)
                        mem[_2719 + 96] = 10^18 * Mask(112, 0, _2779) / Mask(112, 0, _2761)
                mem[_2719 + 32] = Mask(112, 0, _2779)
                mem[_2719 + 64] = Mask(112, 0, _2761)
            mem[_2719] = address(_2587)
            require s < mem[_870]
            mem[(32 * s) + _870 + 32] = _2719
        _2569 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = s + 1
        continue 
    _2586 = mem[64]
    mem[mem[64]] = 32
    _2593 = mem[_870]
    mem[mem[64] + 32] = mem[_870]
    idx = 0
    s = _870 + 32
    t = mem[64] + 64
    while idx < _2593:
        _2907 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2907 + 32]
        mem[t + 64] = mem[_2907 + 64]
        mem[t + 96] = mem[_2907 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _2586 + (128 * _2593) + -mem[64] + 64
}

function sub_717ed8b9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 + arg3 > ext_call.return_data[0]:
        require ext_call.return_data[0] - arg3 <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
        if not ext_call.return_data[0] - arg3:
            idx = arg3
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
                _1816 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1816] == mem[_1816 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_1816 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _3572 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _3572:
                require idx < mem[ceil32(return_data.size) + 96]
                _3585 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3628] == mem[_3628 + 12 len 20]
                if mem[_3628 + 12 len 20] != address(arg2):
                    require ext_code.size(address(_3585))
                    staticcall address(_3585).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3838] == mem[_3838 + 12 len 20]
                    if mem[_3838 + 12 len 20] != address(arg2):
                        _3572 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                _3572 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            require s <= test266151307()
            _3584 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                _7010 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _7010:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _7029 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7113] == mem[_7113 + 12 len 20]
                    if mem[_7113 + 12 len 20] == address(arg2):
                        _7244 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_7244] = 0
                        mem[_7244 + 32] = 0
                        mem[_7244 + 64] = 0
                        mem[_7244 + 96] = 0
                        mem[_7244 + 128] = 0
                        mem[_7244 + 160] = 0
                        mem[_7244 + 192] = 0
                        require ext_code.size(address(_7029))
                        staticcall address(_7029).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7274] == mem[_7274 + 12 len 20]
                        require ext_code.size(address(_7029))
                        if address(arg2) == mem[_7274 + 12 len 20]:
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7400 = mem[_7382]
                            require mem[_7382] == mem[_7382 + 12 len 20]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7544 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7568 = mem[_7544]
                            require mem[_7544] == mem[_7544 + 12 len 20]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7400))
                            staticcall address(_7400).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7748 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7244 + 128] = mem[_7748]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7568))
                            staticcall address(_7568).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7904 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7244 + 160] = mem[_7904]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8030 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8084 = mem[_8030]
                            require mem[_8030] == mem[_8030 + 18 len 14]
                            _8168 = mem[_8030 + 32]
                            require mem[_8030 + 32] == mem[_8030 + 50 len 14]
                            require mem[_8030 + 64] == mem[_8030 + 92 len 4]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8360 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8360] == mem[_8360 + 12 len 20]
                            if address(arg2) == mem[_8360 + 12 len 20]:
                                if Mask(112, 0, _8084) != 0:
                                    if Mask(112, 0, _8168):
                                        require Mask(112, 0, _8168)
                                        mem[_7244 + 96] = 10^18 * Mask(112, 0, _8084) / Mask(112, 0, _8168)
                                mem[_7244 + 32] = Mask(112, 0, _8084)
                                mem[_7244 + 64] = Mask(112, 0, _8168)
                                mem[_7244] = address(_7029)
                                if Mask(112, 0, _8084) != mem[_7244 + 128]:
                                    mem[_7244 + 192] = 0
                                else:
                                    if Mask(112, 0, _8168) == mem[_7244 + 160]:
                                        mem[_7244 + 192] = 1
                                    else:
                                        mem[_7244 + 192] = 0
                            else:
                                if Mask(112, 0, _8168) != 0:
                                    if Mask(112, 0, _8084):
                                        require Mask(112, 0, _8084)
                                        mem[_7244 + 96] = 10^18 * Mask(112, 0, _8168) / Mask(112, 0, _8084)
                                mem[_7244 + 32] = Mask(112, 0, _8168)
                                mem[_7244 + 64] = Mask(112, 0, _8084)
                                mem[_7244] = address(_7029)
                                if Mask(112, 0, _8168) != mem[_7244 + 128]:
                                    mem[_7244 + 192] = 0
                                else:
                                    if Mask(112, 0, _8084) == mem[_7244 + 160]:
                                        mem[_7244 + 192] = 1
                                    else:
                                        mem[_7244 + 192] = 0
                        else:
                            staticcall address(_7029).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7383 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7401 = mem[_7383]
                            require mem[_7383] == mem[_7383 + 12 len 20]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7569 = mem[_7545]
                            require mem[_7545] == mem[_7545 + 12 len 20]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7401))
                            staticcall address(_7401).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7244 + 128] = mem[_7754]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7569))
                            staticcall address(_7569).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7244 + 160] = mem[_7922]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8108 = mem[_8060]
                            require mem[_8060] == mem[_8060 + 18 len 14]
                            _8198 = mem[_8060 + 32]
                            require mem[_8060 + 32] == mem[_8060 + 50 len 14]
                            require mem[_8060 + 64] == mem[_8060 + 92 len 4]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8390] == mem[_8390 + 12 len 20]
                            if address(arg2) == mem[_8390 + 12 len 20]:
                                if Mask(112, 0, _8108) != 0:
                                    if Mask(112, 0, _8198):
                                        require Mask(112, 0, _8198)
                                        mem[_7244 + 96] = 10^18 * Mask(112, 0, _8108) / Mask(112, 0, _8198)
                                mem[_7244 + 32] = Mask(112, 0, _8108)
                                mem[_7244 + 64] = Mask(112, 0, _8198)
                                mem[_7244] = address(_7029)
                                if Mask(112, 0, _8108) != mem[_7244 + 128]:
                                    mem[_7244 + 192] = 0
                                else:
                                    if Mask(112, 0, _8198) == mem[_7244 + 160]:
                                        mem[_7244 + 192] = 1
                                    else:
                                        mem[_7244 + 192] = 0
                            else:
                                if Mask(112, 0, _8198) != 0:
                                    if Mask(112, 0, _8108):
                                        require Mask(112, 0, _8108)
                                        mem[_7244 + 96] = 10^18 * Mask(112, 0, _8198) / Mask(112, 0, _8108)
                                mem[_7244 + 32] = Mask(112, 0, _8198)
                                mem[_7244 + 64] = Mask(112, 0, _8108)
                                mem[_7244] = address(_7029)
                                if Mask(112, 0, _8198) != mem[_7244 + 128]:
                                    mem[_7244 + 192] = 0
                                else:
                                    if Mask(112, 0, _8108) == mem[_7244 + 160]:
                                        mem[_7244 + 192] = 1
                                    else:
                                        mem[_7244 + 192] = 0
                        require s < mem[_3584]
                        mem[(32 * s) + _3584 + 32] = _7244
                    else:
                        require ext_code.size(address(_7029))
                        staticcall address(_7029).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7245] == mem[_7245 + 12 len 20]
                        if mem[_7245 + 12 len 20] != address(arg2):
                            _7010 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                        _7334 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_7334] = 0
                        mem[_7334 + 32] = 0
                        mem[_7334 + 64] = 0
                        mem[_7334 + 96] = 0
                        mem[_7334 + 128] = 0
                        mem[_7334 + 160] = 0
                        mem[_7334 + 192] = 0
                        require ext_code.size(address(_7029))
                        staticcall address(_7029).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7384] == mem[_7384 + 12 len 20]
                        require ext_code.size(address(_7029))
                        if address(arg2) == mem[_7384 + 12 len 20]:
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7556 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7580 = mem[_7556]
                            require mem[_7556] == mem[_7556 + 12 len 20]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7731 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7755 = mem[_7731]
                            require mem[_7731] == mem[_7731 + 12 len 20]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7580))
                            staticcall address(_7580).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7334 + 128] = mem[_7947]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7755))
                            staticcall address(_7755).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8144 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7334 + 160] = mem[_8144]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8332 = mem[_8283]
                            require mem[_8283] == mem[_8283 + 18 len 14]
                            _8415 = mem[_8283 + 32]
                            require mem[_8283 + 32] == mem[_8283 + 50 len 14]
                            require mem[_8283 + 64] == mem[_8283 + 92 len 4]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8564 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8564] == mem[_8564 + 12 len 20]
                            if address(arg2) == mem[_8564 + 12 len 20]:
                                if Mask(112, 0, _8332) != 0:
                                    if Mask(112, 0, _8415):
                                        require Mask(112, 0, _8415)
                                        mem[_7334 + 96] = 10^18 * Mask(112, 0, _8332) / Mask(112, 0, _8415)
                                mem[_7334 + 32] = Mask(112, 0, _8332)
                                mem[_7334 + 64] = Mask(112, 0, _8415)
                                mem[_7334] = address(_7029)
                                if Mask(112, 0, _8332) != mem[_7334 + 128]:
                                    mem[_7334 + 192] = 0
                                else:
                                    if Mask(112, 0, _8415) == mem[_7334 + 160]:
                                        mem[_7334 + 192] = 1
                                    else:
                                        mem[_7334 + 192] = 0
                            else:
                                if Mask(112, 0, _8415) != 0:
                                    if Mask(112, 0, _8332):
                                        require Mask(112, 0, _8332)
                                        mem[_7334 + 96] = 10^18 * Mask(112, 0, _8415) / Mask(112, 0, _8332)
                                mem[_7334 + 32] = Mask(112, 0, _8415)
                                mem[_7334 + 64] = Mask(112, 0, _8332)
                                mem[_7334] = address(_7029)
                                if Mask(112, 0, _8415) != mem[_7334 + 128]:
                                    mem[_7334 + 192] = 0
                                else:
                                    if Mask(112, 0, _8332) == mem[_7334 + 160]:
                                        mem[_7334 + 192] = 1
                                    else:
                                        mem[_7334 + 192] = 0
                        else:
                            staticcall address(_7029).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7557 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7581 = mem[_7557]
                            require mem[_7557] == mem[_7557 + 12 len 20]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7732 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7756 = mem[_7732]
                            require mem[_7732] == mem[_7732 + 12 len 20]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7581))
                            staticcall address(_7581).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7967 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7334 + 128] = mem[_7967]
                            mem[mem[64] + 4] = address(_7029)
                            require ext_code.size(address(_7756))
                            staticcall address(_7756).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7029)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8169 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7334 + 160] = mem[_8169]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8302 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8361 = mem[_8302]
                            require mem[_8302] == mem[_8302 + 18 len 14]
                            _8439 = mem[_8302 + 32]
                            require mem[_8302 + 32] == mem[_8302 + 50 len 14]
                            require mem[_8302 + 64] == mem[_8302 + 92 len 4]
                            require ext_code.size(address(_7029))
                            staticcall address(_7029).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8572 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8572] == mem[_8572 + 12 len 20]
                            if address(arg2) == mem[_8572 + 12 len 20]:
                                if Mask(112, 0, _8361) != 0:
                                    if Mask(112, 0, _8439):
                                        require Mask(112, 0, _8439)
                                        mem[_7334 + 96] = 10^18 * Mask(112, 0, _8361) / Mask(112, 0, _8439)
                                mem[_7334 + 32] = Mask(112, 0, _8361)
                                mem[_7334 + 64] = Mask(112, 0, _8439)
                                mem[_7334] = address(_7029)
                                if Mask(112, 0, _8361) != mem[_7334 + 128]:
                                    mem[_7334 + 192] = 0
                                else:
                                    if Mask(112, 0, _8439) == mem[_7334 + 160]:
                                        mem[_7334 + 192] = 1
                                    else:
                                        mem[_7334 + 192] = 0
                            else:
                                if Mask(112, 0, _8439) != 0:
                                    if Mask(112, 0, _8361):
                                        require Mask(112, 0, _8361)
                                        mem[_7334 + 96] = 10^18 * Mask(112, 0, _8439) / Mask(112, 0, _8361)
                                mem[_7334 + 32] = Mask(112, 0, _8439)
                                mem[_7334 + 64] = Mask(112, 0, _8361)
                                mem[_7334] = address(_7029)
                                if Mask(112, 0, _8439) != mem[_7334 + 128]:
                                    mem[_7334 + 192] = 0
                                else:
                                    if Mask(112, 0, _8361) == mem[_7334 + 160]:
                                        mem[_7334 + 192] = 1
                                    else:
                                        mem[_7334 + 192] = 0
                        require s < mem[_3584]
                        mem[(32 * s) + _3584 + 32] = _7334
                    _7010 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _7028 = mem[64]
                mem[mem[64]] = 32
                _7040 = mem[_3584]
                mem[mem[64] + 32] = mem[_3584]
                idx = 0
                s = _3584 + 32
                t = mem[64] + 64
                while idx < _7040:
                    _10382 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_10382 + 32]
                    mem[t + 64] = mem[_10382 + 64]
                    mem[t + 96] = mem[_10382 + 96]
                    mem[t + 128] = mem[_10382 + 128]
                    mem[t + 160] = mem[_10382 + 160]
                    mem[t + 192] = bool(mem[_10382 + 192])
                    idx = idx + 1
                    s = s + 32
                    t = t + 224
                    continue 
                return memory
                  from mem[64]
                   len _7028 + (224 * _7040) + -mem[64] + 64
            mem[64] = _3584 + (32 * s) + 256
            mem[_3584 + (32 * s) + 32] = 0
            mem[_3584 + (32 * s) + 64] = 0
            mem[_3584 + (32 * s) + 96] = 0
            mem[_3584 + (32 * s) + 128] = 0
            mem[_3584 + (32 * s) + 160] = 0
            mem[_3584 + (32 * s) + 192] = 0
            mem[_3584 + (32 * s) + 224] = 0
            mem[var37001] = _3584 + (32 * s) + 32
            t = var37001
            idx = var37002
            while idx - 1:
                mem[64] = mem[64] + 224
                mem[_3584 + (32 * s) + 32] = 0
                mem[_3584 + (32 * s) + 64] = 0
                mem[_3584 + (32 * s) + 96] = 0
                mem[_3584 + (32 * s) + 128] = 0
                mem[_3584 + (32 * s) + 160] = 0
                mem[_3584 + (32 * s) + 192] = 0
                mem[_3584 + (32 * s) + 224] = 0
                mem[t + 32] = _3584 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            _12116 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _12116:
                require idx < mem[ceil32(return_data.size) + 96]
                _12129 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12207] == mem[_12207 + 12 len 20]
                if mem[_12207 + 12 len 20] == address(arg2):
                    _12236 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_12236] = 0
                    mem[_12236 + 32] = 0
                    mem[_12236 + 64] = 0
                    mem[_12236 + 96] = 0
                    mem[_12236 + 128] = 0
                    mem[_12236 + 160] = 0
                    mem[_12236 + 192] = 0
                    require ext_code.size(address(_12129))
                    staticcall address(_12129).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12266] == mem[_12266 + 12 len 20]
                    require ext_code.size(address(_12129))
                    if address(arg2) == mem[_12266 + 12 len 20]:
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12320 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12338 = mem[_12320]
                        require mem[_12320] == mem[_12320 + 12 len 20]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12428 = mem[_12404]
                        require mem[_12404] == mem[_12404 + 12 len 20]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12338))
                        staticcall address(_12338).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12236 + 128] = mem[_12512]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12428))
                        staticcall address(_12428).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12584 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12236 + 160] = mem[_12584]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12692 = mem[_12662]
                        require mem[_12662] == mem[_12662 + 18 len 14]
                        _12722 = mem[_12662 + 32]
                        require mem[_12662 + 32] == mem[_12662 + 50 len 14]
                        require mem[_12662 + 64] == mem[_12662 + 92 len 4]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12830 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12830] == mem[_12830 + 12 len 20]
                        if address(arg2) == mem[_12830 + 12 len 20]:
                            if Mask(112, 0, _12692) != 0:
                                if Mask(112, 0, _12722):
                                    require Mask(112, 0, _12722)
                                    mem[_12236 + 96] = 10^18 * Mask(112, 0, _12692) / Mask(112, 0, _12722)
                            mem[_12236 + 32] = Mask(112, 0, _12692)
                            mem[_12236 + 64] = Mask(112, 0, _12722)
                            mem[_12236] = address(_12129)
                            if Mask(112, 0, _12692) != mem[_12236 + 128]:
                                mem[_12236 + 192] = 0
                            else:
                                if Mask(112, 0, _12722) == mem[_12236 + 160]:
                                    mem[_12236 + 192] = 1
                                else:
                                    mem[_12236 + 192] = 0
                        else:
                            if Mask(112, 0, _12722) != 0:
                                if Mask(112, 0, _12692):
                                    require Mask(112, 0, _12692)
                                    mem[_12236 + 96] = 10^18 * Mask(112, 0, _12722) / Mask(112, 0, _12692)
                            mem[_12236 + 32] = Mask(112, 0, _12722)
                            mem[_12236 + 64] = Mask(112, 0, _12692)
                            mem[_12236] = address(_12129)
                            if Mask(112, 0, _12722) != mem[_12236 + 128]:
                                mem[_12236 + 192] = 0
                            else:
                                if Mask(112, 0, _12692) == mem[_12236 + 160]:
                                    mem[_12236 + 192] = 1
                                else:
                                    mem[_12236 + 192] = 0
                    else:
                        staticcall address(_12129).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12339 = mem[_12321]
                        require mem[_12321] == mem[_12321 + 12 len 20]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12429 = mem[_12405]
                        require mem[_12405] == mem[_12405 + 12 len 20]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12339))
                        staticcall address(_12339).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12236 + 128] = mem[_12518]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12429))
                        staticcall address(_12429).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12596 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12236 + 160] = mem[_12596]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12704 = mem[_12680]
                        require mem[_12680] == mem[_12680 + 18 len 14]
                        _12734 = mem[_12680 + 32]
                        require mem[_12680 + 32] == mem[_12680 + 50 len 14]
                        require mem[_12680 + 64] == mem[_12680 + 92 len 4]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12842 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12842] == mem[_12842 + 12 len 20]
                        if address(arg2) == mem[_12842 + 12 len 20]:
                            if Mask(112, 0, _12704) != 0:
                                if Mask(112, 0, _12734):
                                    require Mask(112, 0, _12734)
                                    mem[_12236 + 96] = 10^18 * Mask(112, 0, _12704) / Mask(112, 0, _12734)
                            mem[_12236 + 32] = Mask(112, 0, _12704)
                            mem[_12236 + 64] = Mask(112, 0, _12734)
                            mem[_12236] = address(_12129)
                            if Mask(112, 0, _12704) != mem[_12236 + 128]:
                                mem[_12236 + 192] = 0
                            else:
                                if Mask(112, 0, _12734) == mem[_12236 + 160]:
                                    mem[_12236 + 192] = 1
                                else:
                                    mem[_12236 + 192] = 0
                        else:
                            if Mask(112, 0, _12734) != 0:
                                if Mask(112, 0, _12704):
                                    require Mask(112, 0, _12704)
                                    mem[_12236 + 96] = 10^18 * Mask(112, 0, _12734) / Mask(112, 0, _12704)
                            mem[_12236 + 32] = Mask(112, 0, _12734)
                            mem[_12236 + 64] = Mask(112, 0, _12704)
                            mem[_12236] = address(_12129)
                            if Mask(112, 0, _12734) != mem[_12236 + 128]:
                                mem[_12236 + 192] = 0
                            else:
                                if Mask(112, 0, _12704) == mem[_12236 + 160]:
                                    mem[_12236 + 192] = 1
                                else:
                                    mem[_12236 + 192] = 0
                    require s < mem[_3584]
                    mem[(32 * s) + _3584 + 32] = _12236
                else:
                    require ext_code.size(address(_12129))
                    staticcall address(_12129).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12237 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12237] == mem[_12237 + 12 len 20]
                    if mem[_12237 + 12 len 20] != address(arg2):
                        _12116 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _12278 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_12278] = 0
                    mem[_12278 + 32] = 0
                    mem[_12278 + 64] = 0
                    mem[_12278 + 96] = 0
                    mem[_12278 + 128] = 0
                    mem[_12278 + 160] = 0
                    mem[_12278 + 192] = 0
                    require ext_code.size(address(_12129))
                    staticcall address(_12129).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12322] == mem[_12322 + 12 len 20]
                    require ext_code.size(address(_12129))
                    if address(arg2) == mem[_12322 + 12 len 20]:
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12440 = mem[_12416]
                        require mem[_12416] == mem[_12416 + 12 len 20]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12519 = mem[_12495]
                        require mem[_12495] == mem[_12495 + 12 len 20]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12440))
                        staticcall address(_12440).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12278 + 128] = mem[_12609]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12519))
                        staticcall address(_12519).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12716 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12278 + 160] = mem[_12716]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12814 = mem[_12783]
                        require mem[_12783] == mem[_12783 + 18 len 14]
                        _12849 = mem[_12783 + 32]
                        require mem[_12783 + 32] == mem[_12783 + 50 len 14]
                        require mem[_12783 + 64] == mem[_12783 + 92 len 4]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12908 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12908] == mem[_12908 + 12 len 20]
                        if address(arg2) == mem[_12908 + 12 len 20]:
                            if Mask(112, 0, _12814) != 0:
                                if Mask(112, 0, _12849):
                                    require Mask(112, 0, _12849)
                                    mem[_12278 + 96] = 10^18 * Mask(112, 0, _12814) / Mask(112, 0, _12849)
                            mem[_12278 + 32] = Mask(112, 0, _12814)
                            mem[_12278 + 64] = Mask(112, 0, _12849)
                            mem[_12278] = address(_12129)
                            if Mask(112, 0, _12814) != mem[_12278 + 128]:
                                mem[_12278 + 192] = 0
                            else:
                                if Mask(112, 0, _12849) == mem[_12278 + 160]:
                                    mem[_12278 + 192] = 1
                                else:
                                    mem[_12278 + 192] = 0
                        else:
                            if Mask(112, 0, _12849) != 0:
                                if Mask(112, 0, _12814):
                                    require Mask(112, 0, _12814)
                                    mem[_12278 + 96] = 10^18 * Mask(112, 0, _12849) / Mask(112, 0, _12814)
                            mem[_12278 + 32] = Mask(112, 0, _12849)
                            mem[_12278 + 64] = Mask(112, 0, _12814)
                            mem[_12278] = address(_12129)
                            if Mask(112, 0, _12849) != mem[_12278 + 128]:
                                mem[_12278 + 192] = 0
                            else:
                                if Mask(112, 0, _12814) == mem[_12278 + 160]:
                                    mem[_12278 + 192] = 1
                                else:
                                    mem[_12278 + 192] = 0
                    else:
                        staticcall address(_12129).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12417 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12441 = mem[_12417]
                        require mem[_12417] == mem[_12417 + 12 len 20]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12520 = mem[_12496]
                        require mem[_12496] == mem[_12496 + 12 len 20]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12441))
                        staticcall address(_12441).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12278 + 128] = mem[_12623]
                        mem[mem[64] + 4] = address(_12129)
                        require ext_code.size(address(_12520))
                        staticcall address(_12520).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12723 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12278 + 160] = mem[_12723]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12796 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12831 = mem[_12796]
                        require mem[_12796] == mem[_12796 + 18 len 14]
                        _12861 = mem[_12796 + 32]
                        require mem[_12796 + 32] == mem[_12796 + 50 len 14]
                        require mem[_12796 + 64] == mem[_12796 + 92 len 4]
                        require ext_code.size(address(_12129))
                        staticcall address(_12129).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12916 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12916] == mem[_12916 + 12 len 20]
                        if address(arg2) == mem[_12916 + 12 len 20]:
                            if Mask(112, 0, _12831) != 0:
                                if Mask(112, 0, _12861):
                                    require Mask(112, 0, _12861)
                                    mem[_12278 + 96] = 10^18 * Mask(112, 0, _12831) / Mask(112, 0, _12861)
                            mem[_12278 + 32] = Mask(112, 0, _12831)
                            mem[_12278 + 64] = Mask(112, 0, _12861)
                            mem[_12278] = address(_12129)
                            if Mask(112, 0, _12831) != mem[_12278 + 128]:
                                mem[_12278 + 192] = 0
                            else:
                                if Mask(112, 0, _12861) == mem[_12278 + 160]:
                                    mem[_12278 + 192] = 1
                                else:
                                    mem[_12278 + 192] = 0
                        else:
                            if Mask(112, 0, _12861) != 0:
                                if Mask(112, 0, _12831):
                                    require Mask(112, 0, _12831)
                                    mem[_12278 + 96] = 10^18 * Mask(112, 0, _12861) / Mask(112, 0, _12831)
                            mem[_12278 + 32] = Mask(112, 0, _12861)
                            mem[_12278 + 64] = Mask(112, 0, _12831)
                            mem[_12278] = address(_12129)
                            if Mask(112, 0, _12861) != mem[_12278 + 128]:
                                mem[_12278 + 192] = 0
                            else:
                                if Mask(112, 0, _12831) == mem[_12278 + 160]:
                                    mem[_12278 + 192] = 1
                                else:
                                    mem[_12278 + 192] = 0
                    require s < mem[_3584]
                    mem[(32 * s) + _3584 + 32] = _12278
                _12116 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _12128 = mem[64]
            mem[mem[64]] = 32
            _12140 = mem[_3584]
            mem[mem[64] + 32] = mem[_3584]
            idx = 0
            s = _3584 + 32
            t = mem[64] + 64
            while idx < _12140:
                _13796 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_13796 + 32]
                mem[t + 64] = mem[_13796 + 64]
                mem[t + 96] = mem[_13796 + 96]
                mem[t + 128] = mem[_13796 + 128]
                mem[t + 160] = mem[_13796 + 160]
                mem[t + 192] = bool(mem[_13796 + 192])
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _12128 + (224 * _12140) + -mem[64] + 64
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg3] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg3]
        idx = arg3
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
            _1819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1819] == mem[_1819 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_1819 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _3573 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _3573:
            require idx < mem[ceil32(return_data.size) + 96]
            _3587 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3631] == mem[_3631 + 12 len 20]
            if mem[_3631 + 12 len 20] != address(arg2):
                require ext_code.size(address(_3587))
                staticcall address(_3587).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3841] == mem[_3841 + 12 len 20]
                if mem[_3841 + 12 len 20] != address(arg2):
                    _3573 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
            _3573 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _3586 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            _7011 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _7011:
                require idx < mem[ceil32(return_data.size) + 96]
                _7031 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7116 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7116] == mem[_7116 + 12 len 20]
                if mem[_7116 + 12 len 20] == address(arg2):
                    _7246 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_7246] = 0
                    mem[_7246 + 32] = 0
                    mem[_7246 + 64] = 0
                    mem[_7246 + 96] = 0
                    mem[_7246 + 128] = 0
                    mem[_7246 + 160] = 0
                    mem[_7246 + 192] = 0
                    require ext_code.size(address(_7031))
                    staticcall address(_7031).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7277] == mem[_7277 + 12 len 20]
                    require ext_code.size(address(_7031))
                    if address(arg2) == mem[_7277 + 12 len 20]:
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7404 = mem[_7385]
                        require mem[_7385] == mem[_7385 + 12 len 20]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7546 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7570 = mem[_7546]
                        require mem[_7546] == mem[_7546 + 12 len 20]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7404))
                        staticcall address(_7404).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7246 + 128] = mem[_7749]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7570))
                        staticcall address(_7570).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7246 + 160] = mem[_7907]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8035 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8088 = mem[_8035]
                        require mem[_8035] == mem[_8035 + 18 len 14]
                        _8173 = mem[_8035 + 32]
                        require mem[_8035 + 32] == mem[_8035 + 50 len 14]
                        require mem[_8035 + 64] == mem[_8035 + 92 len 4]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8365 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8365] == mem[_8365 + 12 len 20]
                        if address(arg2) == mem[_8365 + 12 len 20]:
                            if Mask(112, 0, _8088) != 0:
                                if Mask(112, 0, _8173):
                                    require Mask(112, 0, _8173)
                                    mem[_7246 + 96] = 10^18 * Mask(112, 0, _8088) / Mask(112, 0, _8173)
                            mem[_7246 + 32] = Mask(112, 0, _8088)
                            mem[_7246 + 64] = Mask(112, 0, _8173)
                            mem[_7246] = address(_7031)
                            if Mask(112, 0, _8088) != mem[_7246 + 128]:
                                mem[_7246 + 192] = 0
                            else:
                                if Mask(112, 0, _8173) == mem[_7246 + 160]:
                                    mem[_7246 + 192] = 1
                                else:
                                    mem[_7246 + 192] = 0
                        else:
                            if Mask(112, 0, _8173) != 0:
                                if Mask(112, 0, _8088):
                                    require Mask(112, 0, _8088)
                                    mem[_7246 + 96] = 10^18 * Mask(112, 0, _8173) / Mask(112, 0, _8088)
                            mem[_7246 + 32] = Mask(112, 0, _8173)
                            mem[_7246 + 64] = Mask(112, 0, _8088)
                            mem[_7246] = address(_7031)
                            if Mask(112, 0, _8173) != mem[_7246 + 128]:
                                mem[_7246 + 192] = 0
                            else:
                                if Mask(112, 0, _8088) == mem[_7246 + 160]:
                                    mem[_7246 + 192] = 1
                                else:
                                    mem[_7246 + 192] = 0
                    else:
                        staticcall address(_7031).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7386 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7405 = mem[_7386]
                        require mem[_7386] == mem[_7386 + 12 len 20]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7547 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7571 = mem[_7547]
                        require mem[_7547] == mem[_7547 + 12 len 20]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7405))
                        staticcall address(_7405).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7246 + 128] = mem[_7758]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7571))
                        staticcall address(_7571).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7926 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7246 + 160] = mem[_7926]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8114 = mem[_8064]
                        require mem[_8064] == mem[_8064 + 18 len 14]
                        _8202 = mem[_8064 + 32]
                        require mem[_8064 + 32] == mem[_8064 + 50 len 14]
                        require mem[_8064 + 64] == mem[_8064 + 92 len 4]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8394] == mem[_8394 + 12 len 20]
                        if address(arg2) == mem[_8394 + 12 len 20]:
                            if Mask(112, 0, _8114) != 0:
                                if Mask(112, 0, _8202):
                                    require Mask(112, 0, _8202)
                                    mem[_7246 + 96] = 10^18 * Mask(112, 0, _8114) / Mask(112, 0, _8202)
                            mem[_7246 + 32] = Mask(112, 0, _8114)
                            mem[_7246 + 64] = Mask(112, 0, _8202)
                            mem[_7246] = address(_7031)
                            if Mask(112, 0, _8114) != mem[_7246 + 128]:
                                mem[_7246 + 192] = 0
                            else:
                                if Mask(112, 0, _8202) == mem[_7246 + 160]:
                                    mem[_7246 + 192] = 1
                                else:
                                    mem[_7246 + 192] = 0
                        else:
                            if Mask(112, 0, _8202) != 0:
                                if Mask(112, 0, _8114):
                                    require Mask(112, 0, _8114)
                                    mem[_7246 + 96] = 10^18 * Mask(112, 0, _8202) / Mask(112, 0, _8114)
                            mem[_7246 + 32] = Mask(112, 0, _8202)
                            mem[_7246 + 64] = Mask(112, 0, _8114)
                            mem[_7246] = address(_7031)
                            if Mask(112, 0, _8202) != mem[_7246 + 128]:
                                mem[_7246 + 192] = 0
                            else:
                                if Mask(112, 0, _8114) == mem[_7246 + 160]:
                                    mem[_7246 + 192] = 1
                                else:
                                    mem[_7246 + 192] = 0
                    require s < mem[_3586]
                    mem[(32 * s) + _3586 + 32] = _7246
                else:
                    require ext_code.size(address(_7031))
                    staticcall address(_7031).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7247] == mem[_7247 + 12 len 20]
                    if mem[_7247 + 12 len 20] != address(arg2):
                        _7011 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _7335 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_7335] = 0
                    mem[_7335 + 32] = 0
                    mem[_7335 + 64] = 0
                    mem[_7335 + 96] = 0
                    mem[_7335 + 128] = 0
                    mem[_7335 + 160] = 0
                    mem[_7335 + 192] = 0
                    require ext_code.size(address(_7031))
                    staticcall address(_7031).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7387] == mem[_7387 + 12 len 20]
                    require ext_code.size(address(_7031))
                    if address(arg2) == mem[_7387 + 12 len 20]:
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7586 = mem[_7558]
                        require mem[_7558] == mem[_7558 + 12 len 20]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7759 = mem[_7734]
                        require mem[_7734] == mem[_7734 + 12 len 20]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7586))
                        staticcall address(_7586).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7335 + 128] = mem[_7950]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7759))
                        staticcall address(_7759).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8148 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7335 + 160] = mem[_8148]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8286 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8337 = mem[_8286]
                        require mem[_8286] == mem[_8286 + 18 len 14]
                        _8419 = mem[_8286 + 32]
                        require mem[_8286 + 32] == mem[_8286 + 50 len 14]
                        require mem[_8286 + 64] == mem[_8286 + 92 len 4]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8565] == mem[_8565 + 12 len 20]
                        if address(arg2) == mem[_8565 + 12 len 20]:
                            if Mask(112, 0, _8337) != 0:
                                if Mask(112, 0, _8419):
                                    require Mask(112, 0, _8419)
                                    mem[_7335 + 96] = 10^18 * Mask(112, 0, _8337) / Mask(112, 0, _8419)
                            mem[_7335 + 32] = Mask(112, 0, _8337)
                            mem[_7335 + 64] = Mask(112, 0, _8419)
                            mem[_7335] = address(_7031)
                            if Mask(112, 0, _8337) != mem[_7335 + 128]:
                                mem[_7335 + 192] = 0
                            else:
                                if Mask(112, 0, _8419) == mem[_7335 + 160]:
                                    mem[_7335 + 192] = 1
                                else:
                                    mem[_7335 + 192] = 0
                        else:
                            if Mask(112, 0, _8419) != 0:
                                if Mask(112, 0, _8337):
                                    require Mask(112, 0, _8337)
                                    mem[_7335 + 96] = 10^18 * Mask(112, 0, _8419) / Mask(112, 0, _8337)
                            mem[_7335 + 32] = Mask(112, 0, _8419)
                            mem[_7335 + 64] = Mask(112, 0, _8337)
                            mem[_7335] = address(_7031)
                            if Mask(112, 0, _8419) != mem[_7335 + 128]:
                                mem[_7335 + 192] = 0
                            else:
                                if Mask(112, 0, _8337) == mem[_7335 + 160]:
                                    mem[_7335 + 192] = 1
                                else:
                                    mem[_7335 + 192] = 0
                    else:
                        staticcall address(_7031).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7587 = mem[_7559]
                        require mem[_7559] == mem[_7559 + 12 len 20]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7735 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7760 = mem[_7735]
                        require mem[_7735] == mem[_7735 + 12 len 20]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7587))
                        staticcall address(_7587).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7973 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7335 + 128] = mem[_7973]
                        mem[mem[64] + 4] = address(_7031)
                        require ext_code.size(address(_7760))
                        staticcall address(_7760).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7031)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8174 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7335 + 160] = mem[_8174]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8366 = mem[_8307]
                        require mem[_8307] == mem[_8307 + 18 len 14]
                        _8444 = mem[_8307 + 32]
                        require mem[_8307 + 32] == mem[_8307 + 50 len 14]
                        require mem[_8307 + 64] == mem[_8307 + 92 len 4]
                        require ext_code.size(address(_7031))
                        staticcall address(_7031).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8576] == mem[_8576 + 12 len 20]
                        if address(arg2) == mem[_8576 + 12 len 20]:
                            if Mask(112, 0, _8366) != 0:
                                if Mask(112, 0, _8444):
                                    require Mask(112, 0, _8444)
                                    mem[_7335 + 96] = 10^18 * Mask(112, 0, _8366) / Mask(112, 0, _8444)
                            mem[_7335 + 32] = Mask(112, 0, _8366)
                            mem[_7335 + 64] = Mask(112, 0, _8444)
                            mem[_7335] = address(_7031)
                            if Mask(112, 0, _8366) != mem[_7335 + 128]:
                                mem[_7335 + 192] = 0
                            else:
                                if Mask(112, 0, _8444) == mem[_7335 + 160]:
                                    mem[_7335 + 192] = 1
                                else:
                                    mem[_7335 + 192] = 0
                        else:
                            if Mask(112, 0, _8444) != 0:
                                if Mask(112, 0, _8366):
                                    require Mask(112, 0, _8366)
                                    mem[_7335 + 96] = 10^18 * Mask(112, 0, _8444) / Mask(112, 0, _8366)
                            mem[_7335 + 32] = Mask(112, 0, _8444)
                            mem[_7335 + 64] = Mask(112, 0, _8366)
                            mem[_7335] = address(_7031)
                            if Mask(112, 0, _8444) != mem[_7335 + 128]:
                                mem[_7335 + 192] = 0
                            else:
                                if Mask(112, 0, _8366) == mem[_7335 + 160]:
                                    mem[_7335 + 192] = 1
                                else:
                                    mem[_7335 + 192] = 0
                    require s < mem[_3586]
                    mem[(32 * s) + _3586 + 32] = _7335
                _7011 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _7030 = mem[64]
            mem[mem[64]] = 32
            _7041 = mem[_3586]
            mem[mem[64] + 32] = mem[_3586]
            idx = 0
            s = _3586 + 32
            t = mem[64] + 64
            while idx < _7041:
                _10390 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_10390 + 32]
                mem[t + 64] = mem[_10390 + 64]
                mem[t + 96] = mem[_10390 + 96]
                mem[t + 128] = mem[_10390 + 128]
                mem[t + 160] = mem[_10390 + 160]
                mem[t + 192] = bool(mem[_10390 + 192])
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _7030 + (224 * _7041) + -mem[64] + 64
        mem[64] = _3586 + (32 * s) + 256
        mem[_3586 + (32 * s) + 32] = 0
        mem[_3586 + (32 * s) + 64] = 0
        mem[_3586 + (32 * s) + 96] = 0
        mem[_3586 + (32 * s) + 128] = 0
        mem[_3586 + (32 * s) + 160] = 0
        mem[_3586 + (32 * s) + 192] = 0
        mem[_3586 + (32 * s) + 224] = 0
        mem[var38001] = _3586 + (32 * s) + 32
        t = var38001
        idx = var38002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[_3586 + (32 * s) + 32] = 0
            mem[_3586 + (32 * s) + 64] = 0
            mem[_3586 + (32 * s) + 96] = 0
            mem[_3586 + (32 * s) + 128] = 0
            mem[_3586 + (32 * s) + 160] = 0
            mem[_3586 + (32 * s) + 192] = 0
            mem[_3586 + (32 * s) + 224] = 0
            mem[t + 32] = _3586 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        _12117 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _12117:
            require idx < mem[ceil32(return_data.size) + 96]
            _12131 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12209] == mem[_12209 + 12 len 20]
            if mem[_12209 + 12 len 20] == address(arg2):
                _12238 = mem[64]
                mem[64] = mem[64] + 224
                mem[_12238] = 0
                mem[_12238 + 32] = 0
                mem[_12238 + 64] = 0
                mem[_12238 + 96] = 0
                mem[_12238 + 128] = 0
                mem[_12238 + 160] = 0
                mem[_12238 + 192] = 0
                require ext_code.size(address(_12131))
                staticcall address(_12131).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12267] == mem[_12267 + 12 len 20]
                require ext_code.size(address(_12131))
                if address(arg2) == mem[_12267 + 12 len 20]:
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12323 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12341 = mem[_12323]
                    require mem[_12323] == mem[_12323 + 12 len 20]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12430 = mem[_12406]
                    require mem[_12406] == mem[_12406 + 12 len 20]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12341))
                    staticcall address(_12341).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12238 + 128] = mem[_12513]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12430))
                    staticcall address(_12430).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12586 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12238 + 160] = mem[_12586]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12665 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12694 = mem[_12665]
                    require mem[_12665] == mem[_12665 + 18 len 14]
                    _12724 = mem[_12665 + 32]
                    require mem[_12665 + 32] == mem[_12665 + 50 len 14]
                    require mem[_12665 + 64] == mem[_12665 + 92 len 4]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12832] == mem[_12832 + 12 len 20]
                    if address(arg2) == mem[_12832 + 12 len 20]:
                        if Mask(112, 0, _12694) != 0:
                            if Mask(112, 0, _12724):
                                require Mask(112, 0, _12724)
                                mem[_12238 + 96] = 10^18 * Mask(112, 0, _12694) / Mask(112, 0, _12724)
                        mem[_12238 + 32] = Mask(112, 0, _12694)
                        mem[_12238 + 64] = Mask(112, 0, _12724)
                        mem[_12238] = address(_12131)
                        if Mask(112, 0, _12694) != mem[_12238 + 128]:
                            mem[_12238 + 192] = 0
                        else:
                            if Mask(112, 0, _12724) == mem[_12238 + 160]:
                                mem[_12238 + 192] = 1
                            else:
                                mem[_12238 + 192] = 0
                    else:
                        if Mask(112, 0, _12724) != 0:
                            if Mask(112, 0, _12694):
                                require Mask(112, 0, _12694)
                                mem[_12238 + 96] = 10^18 * Mask(112, 0, _12724) / Mask(112, 0, _12694)
                        mem[_12238 + 32] = Mask(112, 0, _12724)
                        mem[_12238 + 64] = Mask(112, 0, _12694)
                        mem[_12238] = address(_12131)
                        if Mask(112, 0, _12724) != mem[_12238 + 128]:
                            mem[_12238 + 192] = 0
                        else:
                            if Mask(112, 0, _12694) == mem[_12238 + 160]:
                                mem[_12238 + 192] = 1
                            else:
                                mem[_12238 + 192] = 0
                else:
                    staticcall address(_12131).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12324 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12342 = mem[_12324]
                    require mem[_12324] == mem[_12324 + 12 len 20]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12431 = mem[_12407]
                    require mem[_12407] == mem[_12407 + 12 len 20]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12342))
                    staticcall address(_12342).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12238 + 128] = mem[_12521]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12431))
                    staticcall address(_12431).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12598 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12238 + 160] = mem[_12598]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12706 = mem[_12682]
                    require mem[_12682] == mem[_12682 + 18 len 14]
                    _12736 = mem[_12682 + 32]
                    require mem[_12682 + 32] == mem[_12682 + 50 len 14]
                    require mem[_12682 + 64] == mem[_12682 + 92 len 4]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12843] == mem[_12843 + 12 len 20]
                    if address(arg2) == mem[_12843 + 12 len 20]:
                        if Mask(112, 0, _12706) != 0:
                            if Mask(112, 0, _12736):
                                require Mask(112, 0, _12736)
                                mem[_12238 + 96] = 10^18 * Mask(112, 0, _12706) / Mask(112, 0, _12736)
                        mem[_12238 + 32] = Mask(112, 0, _12706)
                        mem[_12238 + 64] = Mask(112, 0, _12736)
                        mem[_12238] = address(_12131)
                        if Mask(112, 0, _12706) != mem[_12238 + 128]:
                            mem[_12238 + 192] = 0
                        else:
                            if Mask(112, 0, _12736) == mem[_12238 + 160]:
                                mem[_12238 + 192] = 1
                            else:
                                mem[_12238 + 192] = 0
                    else:
                        if Mask(112, 0, _12736) != 0:
                            if Mask(112, 0, _12706):
                                require Mask(112, 0, _12706)
                                mem[_12238 + 96] = 10^18 * Mask(112, 0, _12736) / Mask(112, 0, _12706)
                        mem[_12238 + 32] = Mask(112, 0, _12736)
                        mem[_12238 + 64] = Mask(112, 0, _12706)
                        mem[_12238] = address(_12131)
                        if Mask(112, 0, _12736) != mem[_12238 + 128]:
                            mem[_12238 + 192] = 0
                        else:
                            if Mask(112, 0, _12706) == mem[_12238 + 160]:
                                mem[_12238 + 192] = 1
                            else:
                                mem[_12238 + 192] = 0
                require s < mem[_3586]
                mem[(32 * s) + _3586 + 32] = _12238
            else:
                require ext_code.size(address(_12131))
                staticcall address(_12131).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12239 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12239] == mem[_12239 + 12 len 20]
                if mem[_12239 + 12 len 20] != address(arg2):
                    _12117 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _12279 = mem[64]
                mem[64] = mem[64] + 224
                mem[_12279] = 0
                mem[_12279 + 32] = 0
                mem[_12279 + 64] = 0
                mem[_12279 + 96] = 0
                mem[_12279 + 128] = 0
                mem[_12279 + 160] = 0
                mem[_12279 + 192] = 0
                require ext_code.size(address(_12131))
                staticcall address(_12131).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12325] == mem[_12325 + 12 len 20]
                require ext_code.size(address(_12131))
                if address(arg2) == mem[_12325 + 12 len 20]:
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12442 = mem[_12418]
                    require mem[_12418] == mem[_12418 + 12 len 20]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12522 = mem[_12498]
                    require mem[_12498] == mem[_12498 + 12 len 20]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12442))
                    staticcall address(_12442).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12279 + 128] = mem[_12611]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12522))
                    staticcall address(_12522).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12717 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12279 + 160] = mem[_12717]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12817 = mem[_12785]
                    require mem[_12785] == mem[_12785 + 18 len 14]
                    _12851 = mem[_12785 + 32]
                    require mem[_12785 + 32] == mem[_12785 + 50 len 14]
                    require mem[_12785 + 64] == mem[_12785 + 92 len 4]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12909 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12909] == mem[_12909 + 12 len 20]
                    if address(arg2) == mem[_12909 + 12 len 20]:
                        if Mask(112, 0, _12817) != 0:
                            if Mask(112, 0, _12851):
                                require Mask(112, 0, _12851)
                                mem[_12279 + 96] = 10^18 * Mask(112, 0, _12817) / Mask(112, 0, _12851)
                        mem[_12279 + 32] = Mask(112, 0, _12817)
                        mem[_12279 + 64] = Mask(112, 0, _12851)
                        mem[_12279] = address(_12131)
                        if Mask(112, 0, _12817) != mem[_12279 + 128]:
                            mem[_12279 + 192] = 0
                        else:
                            if Mask(112, 0, _12851) == mem[_12279 + 160]:
                                mem[_12279 + 192] = 1
                            else:
                                mem[_12279 + 192] = 0
                    else:
                        if Mask(112, 0, _12851) != 0:
                            if Mask(112, 0, _12817):
                                require Mask(112, 0, _12817)
                                mem[_12279 + 96] = 10^18 * Mask(112, 0, _12851) / Mask(112, 0, _12817)
                        mem[_12279 + 32] = Mask(112, 0, _12851)
                        mem[_12279 + 64] = Mask(112, 0, _12817)
                        mem[_12279] = address(_12131)
                        if Mask(112, 0, _12851) != mem[_12279 + 128]:
                            mem[_12279 + 192] = 0
                        else:
                            if Mask(112, 0, _12817) == mem[_12279 + 160]:
                                mem[_12279 + 192] = 1
                            else:
                                mem[_12279 + 192] = 0
                else:
                    staticcall address(_12131).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12443 = mem[_12419]
                    require mem[_12419] == mem[_12419 + 12 len 20]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12499 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12523 = mem[_12499]
                    require mem[_12499] == mem[_12499 + 12 len 20]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12443))
                    staticcall address(_12443).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12279 + 128] = mem[_12627]
                    mem[mem[64] + 4] = address(_12131)
                    require ext_code.size(address(_12523))
                    staticcall address(_12523).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12131)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12725 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12279 + 160] = mem[_12725]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12833 = mem[_12799]
                    require mem[_12799] == mem[_12799 + 18 len 14]
                    _12863 = mem[_12799 + 32]
                    require mem[_12799 + 32] == mem[_12799 + 50 len 14]
                    require mem[_12799 + 64] == mem[_12799 + 92 len 4]
                    require ext_code.size(address(_12131))
                    staticcall address(_12131).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12919] == mem[_12919 + 12 len 20]
                    if address(arg2) == mem[_12919 + 12 len 20]:
                        if Mask(112, 0, _12833) != 0:
                            if Mask(112, 0, _12863):
                                require Mask(112, 0, _12863)
                                mem[_12279 + 96] = 10^18 * Mask(112, 0, _12833) / Mask(112, 0, _12863)
                        mem[_12279 + 32] = Mask(112, 0, _12833)
                        mem[_12279 + 64] = Mask(112, 0, _12863)
                        mem[_12279] = address(_12131)
                        if Mask(112, 0, _12833) != mem[_12279 + 128]:
                            mem[_12279 + 192] = 0
                        else:
                            if Mask(112, 0, _12863) == mem[_12279 + 160]:
                                mem[_12279 + 192] = 1
                            else:
                                mem[_12279 + 192] = 0
                    else:
                        if Mask(112, 0, _12863) != 0:
                            if Mask(112, 0, _12833):
                                require Mask(112, 0, _12833)
                                mem[_12279 + 96] = 10^18 * Mask(112, 0, _12863) / Mask(112, 0, _12833)
                        mem[_12279 + 32] = Mask(112, 0, _12863)
                        mem[_12279 + 64] = Mask(112, 0, _12833)
                        mem[_12279] = address(_12131)
                        if Mask(112, 0, _12863) != mem[_12279 + 128]:
                            mem[_12279 + 192] = 0
                        else:
                            if Mask(112, 0, _12833) == mem[_12279 + 160]:
                                mem[_12279 + 192] = 1
                            else:
                                mem[_12279 + 192] = 0
                require s < mem[_3586]
                mem[(32 * s) + _3586 + 32] = _12279
            _12117 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _12130 = mem[64]
        mem[mem[64]] = 32
        _12141 = mem[_3586]
        mem[mem[64] + 32] = mem[_3586]
        idx = 0
        s = _3586 + 32
        t = mem[64] + 64
        while idx < _12141:
            _13804 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_13804 + 32]
            mem[t + 64] = mem[_13804 + 64]
            mem[t + 96] = mem[_13804 + 96]
            mem[t + 128] = mem[_13804 + 128]
            mem[t + 160] = mem[_13804 + 160]
            mem[t + 192] = bool(mem[_13804 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _12130 + (224 * _12141) + -mem[64] + 64
    if arg4:
        require arg4 <= test266151307()
        mem[ceil32(return_data.size) + 96] = arg4
        mem[64] = ceil32(return_data.size) + (32 * arg4) + 128
        if not arg4:
            idx = arg3
            s = 0
            while idx < arg4 + arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1822] == mem[_1822 + 12 len 20]
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_1822 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _3574 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _3574:
                require idx < mem[ceil32(return_data.size) + 96]
                _3589 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3634] == mem[_3634 + 12 len 20]
                if mem[_3634 + 12 len 20] != address(arg2):
                    require ext_code.size(address(_3589))
                    staticcall address(_3589).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3844] == mem[_3844 + 12 len 20]
                    if mem[_3844 + 12 len 20] != address(arg2):
                        _3574 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                _3574 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            require s <= test266151307()
            _3588 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                _7012 = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = 0
                while idx < _7012:
                    require idx < mem[ceil32(return_data.size) + 96]
                    _7033 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7119 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7119] == mem[_7119 + 12 len 20]
                    if mem[_7119 + 12 len 20] == address(arg2):
                        _7248 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_7248] = 0
                        mem[_7248 + 32] = 0
                        mem[_7248 + 64] = 0
                        mem[_7248 + 96] = 0
                        mem[_7248 + 128] = 0
                        mem[_7248 + 160] = 0
                        mem[_7248 + 192] = 0
                        require ext_code.size(address(_7033))
                        staticcall address(_7033).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7280] == mem[_7280 + 12 len 20]
                        require ext_code.size(address(_7033))
                        if address(arg2) == mem[_7280 + 12 len 20]:
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7408 = mem[_7388]
                            require mem[_7388] == mem[_7388 + 12 len 20]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7572 = mem[_7548]
                            require mem[_7548] == mem[_7548 + 12 len 20]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7408))
                            staticcall address(_7408).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7248 + 128] = mem[_7750]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7572))
                            staticcall address(_7572).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7248 + 160] = mem[_7910]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8040 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8092 = mem[_8040]
                            require mem[_8040] == mem[_8040 + 18 len 14]
                            _8178 = mem[_8040 + 32]
                            require mem[_8040 + 32] == mem[_8040 + 50 len 14]
                            require mem[_8040 + 64] == mem[_8040 + 92 len 4]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8370] == mem[_8370 + 12 len 20]
                            if address(arg2) == mem[_8370 + 12 len 20]:
                                if Mask(112, 0, _8092) != 0:
                                    if Mask(112, 0, _8178):
                                        require Mask(112, 0, _8178)
                                        mem[_7248 + 96] = 10^18 * Mask(112, 0, _8092) / Mask(112, 0, _8178)
                                mem[_7248 + 32] = Mask(112, 0, _8092)
                                mem[_7248 + 64] = Mask(112, 0, _8178)
                                mem[_7248] = address(_7033)
                                if Mask(112, 0, _8092) != mem[_7248 + 128]:
                                    mem[_7248 + 192] = 0
                                else:
                                    if Mask(112, 0, _8178) == mem[_7248 + 160]:
                                        mem[_7248 + 192] = 1
                                    else:
                                        mem[_7248 + 192] = 0
                            else:
                                if Mask(112, 0, _8178) != 0:
                                    if Mask(112, 0, _8092):
                                        require Mask(112, 0, _8092)
                                        mem[_7248 + 96] = 10^18 * Mask(112, 0, _8178) / Mask(112, 0, _8092)
                                mem[_7248 + 32] = Mask(112, 0, _8178)
                                mem[_7248 + 64] = Mask(112, 0, _8092)
                                mem[_7248] = address(_7033)
                                if Mask(112, 0, _8178) != mem[_7248 + 128]:
                                    mem[_7248 + 192] = 0
                                else:
                                    if Mask(112, 0, _8092) == mem[_7248 + 160]:
                                        mem[_7248 + 192] = 1
                                    else:
                                        mem[_7248 + 192] = 0
                        else:
                            staticcall address(_7033).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7409 = mem[_7389]
                            require mem[_7389] == mem[_7389 + 12 len 20]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7573 = mem[_7549]
                            require mem[_7549] == mem[_7549 + 12 len 20]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7409))
                            staticcall address(_7409).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7248 + 128] = mem[_7762]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7573))
                            staticcall address(_7573).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7930 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7248 + 160] = mem[_7930]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8120 = mem[_8068]
                            require mem[_8068] == mem[_8068 + 18 len 14]
                            _8206 = mem[_8068 + 32]
                            require mem[_8068 + 32] == mem[_8068 + 50 len 14]
                            require mem[_8068 + 64] == mem[_8068 + 92 len 4]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8398 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8398] == mem[_8398 + 12 len 20]
                            if address(arg2) == mem[_8398 + 12 len 20]:
                                if Mask(112, 0, _8120) != 0:
                                    if Mask(112, 0, _8206):
                                        require Mask(112, 0, _8206)
                                        mem[_7248 + 96] = 10^18 * Mask(112, 0, _8120) / Mask(112, 0, _8206)
                                mem[_7248 + 32] = Mask(112, 0, _8120)
                                mem[_7248 + 64] = Mask(112, 0, _8206)
                                mem[_7248] = address(_7033)
                                if Mask(112, 0, _8120) != mem[_7248 + 128]:
                                    mem[_7248 + 192] = 0
                                else:
                                    if Mask(112, 0, _8206) == mem[_7248 + 160]:
                                        mem[_7248 + 192] = 1
                                    else:
                                        mem[_7248 + 192] = 0
                            else:
                                if Mask(112, 0, _8206) != 0:
                                    if Mask(112, 0, _8120):
                                        require Mask(112, 0, _8120)
                                        mem[_7248 + 96] = 10^18 * Mask(112, 0, _8206) / Mask(112, 0, _8120)
                                mem[_7248 + 32] = Mask(112, 0, _8206)
                                mem[_7248 + 64] = Mask(112, 0, _8120)
                                mem[_7248] = address(_7033)
                                if Mask(112, 0, _8206) != mem[_7248 + 128]:
                                    mem[_7248 + 192] = 0
                                else:
                                    if Mask(112, 0, _8120) == mem[_7248 + 160]:
                                        mem[_7248 + 192] = 1
                                    else:
                                        mem[_7248 + 192] = 0
                        require s < mem[_3588]
                        mem[(32 * s) + _3588 + 32] = _7248
                    else:
                        require ext_code.size(address(_7033))
                        staticcall address(_7033).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7249] == mem[_7249 + 12 len 20]
                        if mem[_7249 + 12 len 20] != address(arg2):
                            _7012 = mem[ceil32(return_data.size) + 96]
                            idx = idx + 1
                            s = s
                            continue 
                        _7336 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_7336] = 0
                        mem[_7336 + 32] = 0
                        mem[_7336 + 64] = 0
                        mem[_7336 + 96] = 0
                        mem[_7336 + 128] = 0
                        mem[_7336 + 160] = 0
                        mem[_7336 + 192] = 0
                        require ext_code.size(address(_7033))
                        staticcall address(_7033).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7390 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7390] == mem[_7390 + 12 len 20]
                        require ext_code.size(address(_7033))
                        if address(arg2) == mem[_7390 + 12 len 20]:
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7560 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7592 = mem[_7560]
                            require mem[_7560] == mem[_7560 + 12 len 20]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7737 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7763 = mem[_7737]
                            require mem[_7737] == mem[_7737 + 12 len 20]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7592))
                            staticcall address(_7592).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7336 + 128] = mem[_7953]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7763))
                            staticcall address(_7763).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7336 + 160] = mem[_8152]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8342 = mem[_8289]
                            require mem[_8289] == mem[_8289 + 18 len 14]
                            _8423 = mem[_8289 + 32]
                            require mem[_8289 + 32] == mem[_8289 + 50 len 14]
                            require mem[_8289 + 64] == mem[_8289 + 92 len 4]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8566] == mem[_8566 + 12 len 20]
                            if address(arg2) == mem[_8566 + 12 len 20]:
                                if Mask(112, 0, _8342) != 0:
                                    if Mask(112, 0, _8423):
                                        require Mask(112, 0, _8423)
                                        mem[_7336 + 96] = 10^18 * Mask(112, 0, _8342) / Mask(112, 0, _8423)
                                mem[_7336 + 32] = Mask(112, 0, _8342)
                                mem[_7336 + 64] = Mask(112, 0, _8423)
                                mem[_7336] = address(_7033)
                                if Mask(112, 0, _8342) != mem[_7336 + 128]:
                                    mem[_7336 + 192] = 0
                                else:
                                    if Mask(112, 0, _8423) == mem[_7336 + 160]:
                                        mem[_7336 + 192] = 1
                                    else:
                                        mem[_7336 + 192] = 0
                            else:
                                if Mask(112, 0, _8423) != 0:
                                    if Mask(112, 0, _8342):
                                        require Mask(112, 0, _8342)
                                        mem[_7336 + 96] = 10^18 * Mask(112, 0, _8423) / Mask(112, 0, _8342)
                                mem[_7336 + 32] = Mask(112, 0, _8423)
                                mem[_7336 + 64] = Mask(112, 0, _8342)
                                mem[_7336] = address(_7033)
                                if Mask(112, 0, _8423) != mem[_7336 + 128]:
                                    mem[_7336 + 192] = 0
                                else:
                                    if Mask(112, 0, _8342) == mem[_7336 + 160]:
                                        mem[_7336 + 192] = 1
                                    else:
                                        mem[_7336 + 192] = 0
                        else:
                            staticcall address(_7033).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7561 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7593 = mem[_7561]
                            require mem[_7561] == mem[_7561 + 12 len 20]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7738 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7764 = mem[_7738]
                            require mem[_7738] == mem[_7738 + 12 len 20]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7593))
                            staticcall address(_7593).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7979 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7336 + 128] = mem[_7979]
                            mem[mem[64] + 4] = address(_7033)
                            require ext_code.size(address(_7764))
                            staticcall address(_7764).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_7033)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8179 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7336 + 160] = mem[_8179]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8371 = mem[_8312]
                            require mem[_8312] == mem[_8312 + 18 len 14]
                            _8449 = mem[_8312 + 32]
                            require mem[_8312 + 32] == mem[_8312 + 50 len 14]
                            require mem[_8312 + 64] == mem[_8312 + 92 len 4]
                            require ext_code.size(address(_7033))
                            staticcall address(_7033).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8580] == mem[_8580 + 12 len 20]
                            if address(arg2) == mem[_8580 + 12 len 20]:
                                if Mask(112, 0, _8371) != 0:
                                    if Mask(112, 0, _8449):
                                        require Mask(112, 0, _8449)
                                        mem[_7336 + 96] = 10^18 * Mask(112, 0, _8371) / Mask(112, 0, _8449)
                                mem[_7336 + 32] = Mask(112, 0, _8371)
                                mem[_7336 + 64] = Mask(112, 0, _8449)
                                mem[_7336] = address(_7033)
                                if Mask(112, 0, _8371) != mem[_7336 + 128]:
                                    mem[_7336 + 192] = 0
                                else:
                                    if Mask(112, 0, _8449) == mem[_7336 + 160]:
                                        mem[_7336 + 192] = 1
                                    else:
                                        mem[_7336 + 192] = 0
                            else:
                                if Mask(112, 0, _8449) != 0:
                                    if Mask(112, 0, _8371):
                                        require Mask(112, 0, _8371)
                                        mem[_7336 + 96] = 10^18 * Mask(112, 0, _8449) / Mask(112, 0, _8371)
                                mem[_7336 + 32] = Mask(112, 0, _8449)
                                mem[_7336 + 64] = Mask(112, 0, _8371)
                                mem[_7336] = address(_7033)
                                if Mask(112, 0, _8449) != mem[_7336 + 128]:
                                    mem[_7336 + 192] = 0
                                else:
                                    if Mask(112, 0, _8371) == mem[_7336 + 160]:
                                        mem[_7336 + 192] = 1
                                    else:
                                        mem[_7336 + 192] = 0
                        require s < mem[_3588]
                        mem[(32 * s) + _3588 + 32] = _7336
                    _7012 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _7032 = mem[64]
                mem[mem[64]] = 32
                _7042 = mem[_3588]
                mem[mem[64] + 32] = mem[_3588]
                idx = 0
                s = _3588 + 32
                t = mem[64] + 64
                while idx < _7042:
                    _10398 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_10398 + 32]
                    mem[t + 64] = mem[_10398 + 64]
                    mem[t + 96] = mem[_10398 + 96]
                    mem[t + 128] = mem[_10398 + 128]
                    mem[t + 160] = mem[_10398 + 160]
                    mem[t + 192] = bool(mem[_10398 + 192])
                    idx = idx + 1
                    s = s + 32
                    t = t + 224
                    continue 
                return memory
                  from mem[64]
                   len _7032 + (224 * _7042) + -mem[64] + 64
            mem[64] = _3588 + (32 * s) + 256
            mem[_3588 + (32 * s) + 32] = 0
            mem[_3588 + (32 * s) + 64] = 0
            mem[_3588 + (32 * s) + 96] = 0
            mem[_3588 + (32 * s) + 128] = 0
            mem[_3588 + (32 * s) + 160] = 0
            mem[_3588 + (32 * s) + 192] = 0
            mem[_3588 + (32 * s) + 224] = 0
            mem[var37001] = _3588 + (32 * s) + 32
            t = var37001
            idx = var37002
            while idx - 1:
                mem[64] = mem[64] + 224
                mem[_3588 + (32 * s) + 32] = 0
                mem[_3588 + (32 * s) + 64] = 0
                mem[_3588 + (32 * s) + 96] = 0
                mem[_3588 + (32 * s) + 128] = 0
                mem[_3588 + (32 * s) + 160] = 0
                mem[_3588 + (32 * s) + 192] = 0
                mem[_3588 + (32 * s) + 224] = 0
                mem[t + 32] = _3588 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            _12118 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _12118:
                require idx < mem[ceil32(return_data.size) + 96]
                _12133 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12211 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12211] == mem[_12211 + 12 len 20]
                if mem[_12211 + 12 len 20] == address(arg2):
                    _12240 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_12240] = 0
                    mem[_12240 + 32] = 0
                    mem[_12240 + 64] = 0
                    mem[_12240 + 96] = 0
                    mem[_12240 + 128] = 0
                    mem[_12240 + 160] = 0
                    mem[_12240 + 192] = 0
                    require ext_code.size(address(_12133))
                    staticcall address(_12133).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12268] == mem[_12268 + 12 len 20]
                    require ext_code.size(address(_12133))
                    if address(arg2) == mem[_12268 + 12 len 20]:
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12344 = mem[_12326]
                        require mem[_12326] == mem[_12326 + 12 len 20]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12432 = mem[_12408]
                        require mem[_12408] == mem[_12408 + 12 len 20]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12344))
                        staticcall address(_12344).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12240 + 128] = mem[_12514]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12432))
                        staticcall address(_12432).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12588 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12240 + 160] = mem[_12588]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12668 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12696 = mem[_12668]
                        require mem[_12668] == mem[_12668 + 18 len 14]
                        _12726 = mem[_12668 + 32]
                        require mem[_12668 + 32] == mem[_12668 + 50 len 14]
                        require mem[_12668 + 64] == mem[_12668 + 92 len 4]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12834 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12834] == mem[_12834 + 12 len 20]
                        if address(arg2) == mem[_12834 + 12 len 20]:
                            if Mask(112, 0, _12696) != 0:
                                if Mask(112, 0, _12726):
                                    require Mask(112, 0, _12726)
                                    mem[_12240 + 96] = 10^18 * Mask(112, 0, _12696) / Mask(112, 0, _12726)
                            mem[_12240 + 32] = Mask(112, 0, _12696)
                            mem[_12240 + 64] = Mask(112, 0, _12726)
                            mem[_12240] = address(_12133)
                            if Mask(112, 0, _12696) != mem[_12240 + 128]:
                                mem[_12240 + 192] = 0
                            else:
                                if Mask(112, 0, _12726) == mem[_12240 + 160]:
                                    mem[_12240 + 192] = 1
                                else:
                                    mem[_12240 + 192] = 0
                        else:
                            if Mask(112, 0, _12726) != 0:
                                if Mask(112, 0, _12696):
                                    require Mask(112, 0, _12696)
                                    mem[_12240 + 96] = 10^18 * Mask(112, 0, _12726) / Mask(112, 0, _12696)
                            mem[_12240 + 32] = Mask(112, 0, _12726)
                            mem[_12240 + 64] = Mask(112, 0, _12696)
                            mem[_12240] = address(_12133)
                            if Mask(112, 0, _12726) != mem[_12240 + 128]:
                                mem[_12240 + 192] = 0
                            else:
                                if Mask(112, 0, _12696) == mem[_12240 + 160]:
                                    mem[_12240 + 192] = 1
                                else:
                                    mem[_12240 + 192] = 0
                    else:
                        staticcall address(_12133).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12345 = mem[_12327]
                        require mem[_12327] == mem[_12327 + 12 len 20]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12433 = mem[_12409]
                        require mem[_12409] == mem[_12409 + 12 len 20]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12345))
                        staticcall address(_12345).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12240 + 128] = mem[_12524]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12433))
                        staticcall address(_12433).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12600 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12240 + 160] = mem[_12600]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12684 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12708 = mem[_12684]
                        require mem[_12684] == mem[_12684 + 18 len 14]
                        _12738 = mem[_12684 + 32]
                        require mem[_12684 + 32] == mem[_12684 + 50 len 14]
                        require mem[_12684 + 64] == mem[_12684 + 92 len 4]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12844] == mem[_12844 + 12 len 20]
                        if address(arg2) == mem[_12844 + 12 len 20]:
                            if Mask(112, 0, _12708) != 0:
                                if Mask(112, 0, _12738):
                                    require Mask(112, 0, _12738)
                                    mem[_12240 + 96] = 10^18 * Mask(112, 0, _12708) / Mask(112, 0, _12738)
                            mem[_12240 + 32] = Mask(112, 0, _12708)
                            mem[_12240 + 64] = Mask(112, 0, _12738)
                            mem[_12240] = address(_12133)
                            if Mask(112, 0, _12708) != mem[_12240 + 128]:
                                mem[_12240 + 192] = 0
                            else:
                                if Mask(112, 0, _12738) == mem[_12240 + 160]:
                                    mem[_12240 + 192] = 1
                                else:
                                    mem[_12240 + 192] = 0
                        else:
                            if Mask(112, 0, _12738) != 0:
                                if Mask(112, 0, _12708):
                                    require Mask(112, 0, _12708)
                                    mem[_12240 + 96] = 10^18 * Mask(112, 0, _12738) / Mask(112, 0, _12708)
                            mem[_12240 + 32] = Mask(112, 0, _12738)
                            mem[_12240 + 64] = Mask(112, 0, _12708)
                            mem[_12240] = address(_12133)
                            if Mask(112, 0, _12738) != mem[_12240 + 128]:
                                mem[_12240 + 192] = 0
                            else:
                                if Mask(112, 0, _12708) == mem[_12240 + 160]:
                                    mem[_12240 + 192] = 1
                                else:
                                    mem[_12240 + 192] = 0
                    require s < mem[_3588]
                    mem[(32 * s) + _3588 + 32] = _12240
                else:
                    require ext_code.size(address(_12133))
                    staticcall address(_12133).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12241] == mem[_12241 + 12 len 20]
                    if mem[_12241 + 12 len 20] != address(arg2):
                        _12118 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _12280 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_12280] = 0
                    mem[_12280 + 32] = 0
                    mem[_12280 + 64] = 0
                    mem[_12280 + 96] = 0
                    mem[_12280 + 128] = 0
                    mem[_12280 + 160] = 0
                    mem[_12280 + 192] = 0
                    require ext_code.size(address(_12133))
                    staticcall address(_12133).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12328] == mem[_12328 + 12 len 20]
                    require ext_code.size(address(_12133))
                    if address(arg2) == mem[_12328 + 12 len 20]:
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12420 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12444 = mem[_12420]
                        require mem[_12420] == mem[_12420 + 12 len 20]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12525 = mem[_12501]
                        require mem[_12501] == mem[_12501 + 12 len 20]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12444))
                        staticcall address(_12444).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12613 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12280 + 128] = mem[_12613]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12525))
                        staticcall address(_12525).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12718 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12280 + 160] = mem[_12718]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12787 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12820 = mem[_12787]
                        require mem[_12787] == mem[_12787 + 18 len 14]
                        _12853 = mem[_12787 + 32]
                        require mem[_12787 + 32] == mem[_12787 + 50 len 14]
                        require mem[_12787 + 64] == mem[_12787 + 92 len 4]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12910] == mem[_12910 + 12 len 20]
                        if address(arg2) == mem[_12910 + 12 len 20]:
                            if Mask(112, 0, _12820) != 0:
                                if Mask(112, 0, _12853):
                                    require Mask(112, 0, _12853)
                                    mem[_12280 + 96] = 10^18 * Mask(112, 0, _12820) / Mask(112, 0, _12853)
                            mem[_12280 + 32] = Mask(112, 0, _12820)
                            mem[_12280 + 64] = Mask(112, 0, _12853)
                            mem[_12280] = address(_12133)
                            if Mask(112, 0, _12820) != mem[_12280 + 128]:
                                mem[_12280 + 192] = 0
                            else:
                                if Mask(112, 0, _12853) == mem[_12280 + 160]:
                                    mem[_12280 + 192] = 1
                                else:
                                    mem[_12280 + 192] = 0
                        else:
                            if Mask(112, 0, _12853) != 0:
                                if Mask(112, 0, _12820):
                                    require Mask(112, 0, _12820)
                                    mem[_12280 + 96] = 10^18 * Mask(112, 0, _12853) / Mask(112, 0, _12820)
                            mem[_12280 + 32] = Mask(112, 0, _12853)
                            mem[_12280 + 64] = Mask(112, 0, _12820)
                            mem[_12280] = address(_12133)
                            if Mask(112, 0, _12853) != mem[_12280 + 128]:
                                mem[_12280 + 192] = 0
                            else:
                                if Mask(112, 0, _12820) == mem[_12280 + 160]:
                                    mem[_12280 + 192] = 1
                                else:
                                    mem[_12280 + 192] = 0
                    else:
                        staticcall address(_12133).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12445 = mem[_12421]
                        require mem[_12421] == mem[_12421 + 12 len 20]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12526 = mem[_12502]
                        require mem[_12502] == mem[_12502 + 12 len 20]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12445))
                        staticcall address(_12445).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12280 + 128] = mem[_12631]
                        mem[mem[64] + 4] = address(_12133)
                        require ext_code.size(address(_12526))
                        staticcall address(_12526).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_12133)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12727 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_12280 + 160] = mem[_12727]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12802 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _12835 = mem[_12802]
                        require mem[_12802] == mem[_12802 + 18 len 14]
                        _12865 = mem[_12802 + 32]
                        require mem[_12802 + 32] == mem[_12802 + 50 len 14]
                        require mem[_12802 + 64] == mem[_12802 + 92 len 4]
                        require ext_code.size(address(_12133))
                        staticcall address(_12133).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12922 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12922] == mem[_12922 + 12 len 20]
                        if address(arg2) == mem[_12922 + 12 len 20]:
                            if Mask(112, 0, _12835) != 0:
                                if Mask(112, 0, _12865):
                                    require Mask(112, 0, _12865)
                                    mem[_12280 + 96] = 10^18 * Mask(112, 0, _12835) / Mask(112, 0, _12865)
                            mem[_12280 + 32] = Mask(112, 0, _12835)
                            mem[_12280 + 64] = Mask(112, 0, _12865)
                            mem[_12280] = address(_12133)
                            if Mask(112, 0, _12835) != mem[_12280 + 128]:
                                mem[_12280 + 192] = 0
                            else:
                                if Mask(112, 0, _12865) == mem[_12280 + 160]:
                                    mem[_12280 + 192] = 1
                                else:
                                    mem[_12280 + 192] = 0
                        else:
                            if Mask(112, 0, _12865) != 0:
                                if Mask(112, 0, _12835):
                                    require Mask(112, 0, _12835)
                                    mem[_12280 + 96] = 10^18 * Mask(112, 0, _12865) / Mask(112, 0, _12835)
                            mem[_12280 + 32] = Mask(112, 0, _12865)
                            mem[_12280 + 64] = Mask(112, 0, _12835)
                            mem[_12280] = address(_12133)
                            if Mask(112, 0, _12865) != mem[_12280 + 128]:
                                mem[_12280 + 192] = 0
                            else:
                                if Mask(112, 0, _12835) == mem[_12280 + 160]:
                                    mem[_12280 + 192] = 1
                                else:
                                    mem[_12280 + 192] = 0
                    require s < mem[_3588]
                    mem[(32 * s) + _3588 + 32] = _12280
                _12118 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _12132 = mem[64]
            mem[mem[64]] = 32
            _12142 = mem[_3588]
            mem[mem[64] + 32] = mem[_3588]
            idx = 0
            s = _3588 + 32
            t = mem[64] + 64
            while idx < _12142:
                _13812 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_13812 + 32]
                mem[t + 64] = mem[_13812 + 64]
                mem[t + 96] = mem[_13812 + 96]
                mem[t + 128] = mem[_13812 + 128]
                mem[t + 160] = mem[_13812 + 160]
                mem[t + 192] = bool(mem[_13812 + 192])
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _12132 + (224 * _12142) + -mem[64] + 64
        mem[ceil32(return_data.size) + 128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = arg3
        s = 0
        while idx < arg4 + arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1825 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1825] == mem[_1825 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_1825 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _3575 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _3575:
            require idx < mem[ceil32(return_data.size) + 96]
            _3591 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3637] == mem[_3637 + 12 len 20]
            if mem[_3637 + 12 len 20] != address(arg2):
                require ext_code.size(address(_3591))
                staticcall address(_3591).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3847] == mem[_3847 + 12 len 20]
                if mem[_3847 + 12 len 20] != address(arg2):
                    _3575 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
            _3575 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _3590 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            _7013 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _7013:
                require idx < mem[ceil32(return_data.size) + 96]
                _7035 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    _7122 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7122] == mem[_7122 + 12 len 20]
                    if mem[_7122 + 12 len 20] == address(arg2):
                        _7250 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_7250] = 0
                        mem[_7250 + 32] = 0
                        mem[_7250 + 64] = 0
                        mem[_7250 + 96] = 0
                        mem[_7250 + 128] = 0
                        mem[_7250 + 160] = 0
                        mem[_7250 + 192] = 0
                        require ext_code.size(address(_7035))
                        staticcall address(_7035).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _7283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7283] == mem[_7283 + 12 len 20]
                            if address(arg2) == mem[_7283 + 12 len 20]:
                                require ext_code.size(address(_7035))
                                staticcall address(_7035).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _7391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7412 = mem[_7391]
                                    require mem[_7391] == mem[_7391 + 12 len 20]
                                    require ext_code.size(address(_7035))
                                    staticcall address(_7035).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _7550 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7574 = mem[_7550]
                                        require mem[_7550] == mem[_7550 + 12 len 20]
                                        mem[mem[64] + 4] = address(_7035)
                                        require ext_code.size(address(_7412))
                                        staticcall address(_7412).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_7035)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _7751 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[_7250 + 128] = mem[_7751]
                                            mem[mem[64] + 4] = address(_7035)
                                            require ext_code.size(address(_7574))
                                            staticcall address(_7574).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_7035)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _7913 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[_7250 + 160] = mem[_7913]
                                                require ext_code.size(address(_7035))
                                                staticcall address(_7035).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8045 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _8096 = mem[_8045]
                                                    require mem[_8045] == mem[_8045 + 18 len 14]
                                                    _8183 = mem[_8045 + 32]
                                                    require mem[_8045 + 32] == mem[_8045 + 50 len 14]
                                                    require mem[_8045 + 64] == mem[_8045 + 92 len 4]
                                                    require ext_code.size(address(_7035))
                                                    staticcall address(_7035).token0() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _8375 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_8375] == mem[_8375 + 12 len 20]
                                                        if address(arg2) == mem[_8375 + 12 len 20]:
                                                            if 0 == Mask(112, 0, _8096):
                                                                mem[_7250 + 32] = Mask(112, 0, _8096)
                                                                mem[_7250 + 64] = Mask(112, 0, _8183)
                                                                mem[_7250] = address(_7035)
                                                                if Mask(112, 0, _8096) != mem[_7250 + 128]:
                                                                    mem[_7250 + 192] = 0
                                                                    require s < mem[_3590]
                                                                    mem[(32 * s) + _3590 + 32] = _7250
                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                    idx = idx + 1
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, _8183) == mem[_7250 + 160]:
                                                                        mem[_7250 + 192] = 1
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                            else:
                                                                if not Mask(112, 0, _8183):
                                                                    mem[_7250 + 32] = Mask(112, 0, _8096)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8183)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8096) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8183) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                else:
                                                                    require Mask(112, 0, _8183)
                                                                    mem[_7250 + 96] = 10^18 * Mask(112, 0, _8096) / Mask(112, 0, _8183)
                                                                    mem[_7250 + 32] = Mask(112, 0, _8096)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8183)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8096) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8183) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                        else:
                                                            if 0 == Mask(112, 0, _8183):
                                                                mem[_7250 + 32] = Mask(112, 0, _8183)
                                                                mem[_7250 + 64] = Mask(112, 0, _8096)
                                                                mem[_7250] = address(_7035)
                                                                if Mask(112, 0, _8183) != mem[_7250 + 128]:
                                                                    mem[_7250 + 192] = 0
                                                                    require s < mem[_3590]
                                                                    mem[(32 * s) + _3590 + 32] = _7250
                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                    idx = idx + 1
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, _8096) == mem[_7250 + 160]:
                                                                        mem[_7250 + 192] = 1
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                            else:
                                                                if not Mask(112, 0, _8096):
                                                                    mem[_7250 + 32] = Mask(112, 0, _8183)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8096)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8183) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8096) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                else:
                                                                    require Mask(112, 0, _8096)
                                                                    mem[_7250 + 96] = 10^18 * Mask(112, 0, _8183) / Mask(112, 0, _8096)
                                                                    mem[_7250 + 32] = Mask(112, 0, _8183)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8096)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8183) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8096) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                            else:
                                require ext_code.size(address(_7035))
                                staticcall address(_7035).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _7392 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7413 = mem[_7392]
                                    require mem[_7392] == mem[_7392 + 12 len 20]
                                    require ext_code.size(address(_7035))
                                    staticcall address(_7035).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _7551 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7575 = mem[_7551]
                                        require mem[_7551] == mem[_7551 + 12 len 20]
                                        mem[mem[64] + 4] = address(_7035)
                                        require ext_code.size(address(_7413))
                                        staticcall address(_7413).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_7035)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _7766 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[_7250 + 128] = mem[_7766]
                                            mem[mem[64] + 4] = address(_7035)
                                            require ext_code.size(address(_7575))
                                            staticcall address(_7575).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(_7035)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _7934 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[_7250 + 160] = mem[_7934]
                                                require ext_code.size(address(_7035))
                                                staticcall address(_7035).getReserves() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8072 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _8126 = mem[_8072]
                                                    require mem[_8072] == mem[_8072 + 18 len 14]
                                                    _8210 = mem[_8072 + 32]
                                                    require mem[_8072 + 32] == mem[_8072 + 50 len 14]
                                                    require mem[_8072 + 64] == mem[_8072 + 92 len 4]
                                                    require ext_code.size(address(_7035))
                                                    staticcall address(_7035).token0() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _8402 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_8402] == mem[_8402 + 12 len 20]
                                                        if address(arg2) == mem[_8402 + 12 len 20]:
                                                            if 0 == Mask(112, 0, _8126):
                                                                mem[_7250 + 32] = Mask(112, 0, _8126)
                                                                mem[_7250 + 64] = Mask(112, 0, _8210)
                                                                mem[_7250] = address(_7035)
                                                                if Mask(112, 0, _8126) != mem[_7250 + 128]:
                                                                    mem[_7250 + 192] = 0
                                                                    require s < mem[_3590]
                                                                    mem[(32 * s) + _3590 + 32] = _7250
                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                    idx = idx + 1
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, _8210) == mem[_7250 + 160]:
                                                                        mem[_7250 + 192] = 1
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                            else:
                                                                if not Mask(112, 0, _8210):
                                                                    mem[_7250 + 32] = Mask(112, 0, _8126)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8210)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8126) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8210) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                else:
                                                                    require Mask(112, 0, _8210)
                                                                    mem[_7250 + 96] = 10^18 * Mask(112, 0, _8126) / Mask(112, 0, _8210)
                                                                    mem[_7250 + 32] = Mask(112, 0, _8126)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8210)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8126) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8210) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                        else:
                                                            if 0 == Mask(112, 0, _8210):
                                                                mem[_7250 + 32] = Mask(112, 0, _8210)
                                                                mem[_7250 + 64] = Mask(112, 0, _8126)
                                                                mem[_7250] = address(_7035)
                                                                if Mask(112, 0, _8210) != mem[_7250 + 128]:
                                                                    mem[_7250 + 192] = 0
                                                                    require s < mem[_3590]
                                                                    mem[(32 * s) + _3590 + 32] = _7250
                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                    idx = idx + 1
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, _8126) == mem[_7250 + 160]:
                                                                        mem[_7250 + 192] = 1
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                            else:
                                                                if not Mask(112, 0, _8126):
                                                                    mem[_7250 + 32] = Mask(112, 0, _8210)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8126)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8210) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8126) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                else:
                                                                    require Mask(112, 0, _8126)
                                                                    mem[_7250 + 96] = 10^18 * Mask(112, 0, _8210) / Mask(112, 0, _8126)
                                                                    mem[_7250 + 32] = Mask(112, 0, _8210)
                                                                    mem[_7250 + 64] = Mask(112, 0, _8126)
                                                                    mem[_7250] = address(_7035)
                                                                    if Mask(112, 0, _8210) != mem[_7250 + 128]:
                                                                        mem[_7250 + 192] = 0
                                                                        require s < mem[_3590]
                                                                        mem[(32 * s) + _3590 + 32] = _7250
                                                                        _7013 = mem[ceil32(return_data.size) + 96]
                                                                        idx = idx + 1
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        if Mask(112, 0, _8126) == mem[_7250 + 160]:
                                                                            mem[_7250 + 192] = 1
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            mem[_7250 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7250
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                    else:
                        require ext_code.size(address(_7035))
                        staticcall address(_7035).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _7251 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7251] == mem[_7251 + 12 len 20]
                            if mem[_7251 + 12 len 20] != address(arg2):
                                _7013 = mem[ceil32(return_data.size) + 96]
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                _7337 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_7337] = 0
                                mem[_7337 + 32] = 0
                                mem[_7337 + 64] = 0
                                mem[_7337 + 96] = 0
                                mem[_7337 + 128] = 0
                                mem[_7337 + 160] = 0
                                mem[_7337 + 192] = 0
                                require ext_code.size(address(_7035))
                                staticcall address(_7035).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _7393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7393] == mem[_7393 + 12 len 20]
                                    if address(arg2) == mem[_7393 + 12 len 20]:
                                        require ext_code.size(address(_7035))
                                        staticcall address(_7035).token0() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _7562 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7598 = mem[_7562]
                                            require mem[_7562] == mem[_7562 + 12 len 20]
                                            require ext_code.size(address(_7035))
                                            staticcall address(_7035).token1() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _7740 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7767 = mem[_7740]
                                                require mem[_7740] == mem[_7740 + 12 len 20]
                                                mem[mem[64] + 4] = address(_7035)
                                                require ext_code.size(address(_7598))
                                                staticcall address(_7598).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_7035)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _7956 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    mem[_7337 + 128] = mem[_7956]
                                                    mem[mem[64] + 4] = address(_7035)
                                                    require ext_code.size(address(_7767))
                                                    staticcall address(_7767).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_7035)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _8156 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        mem[_7337 + 160] = mem[_8156]
                                                        require ext_code.size(address(_7035))
                                                        staticcall address(_7035).getReserves() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _8292 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _8347 = mem[_8292]
                                                            require mem[_8292] == mem[_8292 + 18 len 14]
                                                            _8427 = mem[_8292 + 32]
                                                            require mem[_8292 + 32] == mem[_8292 + 50 len 14]
                                                            require mem[_8292 + 64] == mem[_8292 + 92 len 4]
                                                            require ext_code.size(address(_7035))
                                                            staticcall address(_7035).token0() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _8567 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_8567] == mem[_8567 + 12 len 20]
                                                                if address(arg2) == mem[_8567 + 12 len 20]:
                                                                    if 0 == Mask(112, 0, _8347):
                                                                        mem[_7337 + 32] = Mask(112, 0, _8347)
                                                                        mem[_7337 + 64] = Mask(112, 0, _8427)
                                                                        mem[_7337] = address(_7035)
                                                                        if Mask(112, 0, _8347) != mem[_7337 + 128]:
                                                                            mem[_7337 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7337
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if Mask(112, 0, _8427) == mem[_7337 + 160]:
                                                                                mem[_7337 + 192] = 1
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                    else:
                                                                        if not Mask(112, 0, _8427):
                                                                            mem[_7337 + 32] = Mask(112, 0, _8347)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8427)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8347) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8427) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                        else:
                                                                            require Mask(112, 0, _8427)
                                                                            mem[_7337 + 96] = 10^18 * Mask(112, 0, _8347) / Mask(112, 0, _8427)
                                                                            mem[_7337 + 32] = Mask(112, 0, _8347)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8427)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8347) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8427) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                else:
                                                                    if 0 == Mask(112, 0, _8427):
                                                                        mem[_7337 + 32] = Mask(112, 0, _8427)
                                                                        mem[_7337 + 64] = Mask(112, 0, _8347)
                                                                        mem[_7337] = address(_7035)
                                                                        if Mask(112, 0, _8427) != mem[_7337 + 128]:
                                                                            mem[_7337 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7337
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if Mask(112, 0, _8347) == mem[_7337 + 160]:
                                                                                mem[_7337 + 192] = 1
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                    else:
                                                                        if not Mask(112, 0, _8347):
                                                                            mem[_7337 + 32] = Mask(112, 0, _8427)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8347)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8427) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8347) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                        else:
                                                                            require Mask(112, 0, _8347)
                                                                            mem[_7337 + 96] = 10^18 * Mask(112, 0, _8427) / Mask(112, 0, _8347)
                                                                            mem[_7337 + 32] = Mask(112, 0, _8427)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8347)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8427) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8347) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                    else:
                                        require ext_code.size(address(_7035))
                                        staticcall address(_7035).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _7563 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7599 = mem[_7563]
                                            require mem[_7563] == mem[_7563 + 12 len 20]
                                            require ext_code.size(address(_7035))
                                            staticcall address(_7035).token0() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _7741 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7768 = mem[_7741]
                                                require mem[_7741] == mem[_7741 + 12 len 20]
                                                mem[mem[64] + 4] = address(_7035)
                                                require ext_code.size(address(_7599))
                                                staticcall address(_7599).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(_7035)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _7985 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    mem[_7337 + 128] = mem[_7985]
                                                    mem[mem[64] + 4] = address(_7035)
                                                    require ext_code.size(address(_7768))
                                                    staticcall address(_7768).balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(_7035)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _8184 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        mem[_7337 + 160] = mem[_8184]
                                                        require ext_code.size(address(_7035))
                                                        staticcall address(_7035).getReserves() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _8317 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _8376 = mem[_8317]
                                                            require mem[_8317] == mem[_8317 + 18 len 14]
                                                            _8454 = mem[_8317 + 32]
                                                            require mem[_8317 + 32] == mem[_8317 + 50 len 14]
                                                            require mem[_8317 + 64] == mem[_8317 + 92 len 4]
                                                            require ext_code.size(address(_7035))
                                                            staticcall address(_7035).token0() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _8584 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_8584] == mem[_8584 + 12 len 20]
                                                                if address(arg2) == mem[_8584 + 12 len 20]:
                                                                    if 0 == Mask(112, 0, _8376):
                                                                        mem[_7337 + 32] = Mask(112, 0, _8376)
                                                                        mem[_7337 + 64] = Mask(112, 0, _8454)
                                                                        mem[_7337] = address(_7035)
                                                                        if Mask(112, 0, _8376) != mem[_7337 + 128]:
                                                                            mem[_7337 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7337
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if Mask(112, 0, _8454) == mem[_7337 + 160]:
                                                                                mem[_7337 + 192] = 1
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                    else:
                                                                        if not Mask(112, 0, _8454):
                                                                            mem[_7337 + 32] = Mask(112, 0, _8376)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8454)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8376) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8454) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                        else:
                                                                            require Mask(112, 0, _8454)
                                                                            mem[_7337 + 96] = 10^18 * Mask(112, 0, _8376) / Mask(112, 0, _8454)
                                                                            mem[_7337 + 32] = Mask(112, 0, _8376)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8454)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8376) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8454) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                else:
                                                                    if 0 == Mask(112, 0, _8454):
                                                                        mem[_7337 + 32] = Mask(112, 0, _8454)
                                                                        mem[_7337 + 64] = Mask(112, 0, _8376)
                                                                        mem[_7337] = address(_7035)
                                                                        if Mask(112, 0, _8454) != mem[_7337 + 128]:
                                                                            mem[_7337 + 192] = 0
                                                                            require s < mem[_3590]
                                                                            mem[(32 * s) + _3590 + 32] = _7337
                                                                            _7013 = mem[ceil32(return_data.size) + 96]
                                                                            idx = idx + 1
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            if Mask(112, 0, _8376) == mem[_7337 + 160]:
                                                                                mem[_7337 + 192] = 1
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                    else:
                                                                        if not Mask(112, 0, _8376):
                                                                            mem[_7337 + 32] = Mask(112, 0, _8454)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8376)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8454) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8376) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                        else:
                                                                            require Mask(112, 0, _8376)
                                                                            mem[_7337 + 96] = 10^18 * Mask(112, 0, _8454) / Mask(112, 0, _8376)
                                                                            mem[_7337 + 32] = Mask(112, 0, _8454)
                                                                            mem[_7337 + 64] = Mask(112, 0, _8376)
                                                                            mem[_7337] = address(_7035)
                                                                            if Mask(112, 0, _8454) != mem[_7337 + 128]:
                                                                                mem[_7337 + 192] = 0
                                                                                require s < mem[_3590]
                                                                                mem[(32 * s) + _3590 + 32] = _7337
                                                                                _7013 = mem[ceil32(return_data.size) + 96]
                                                                                idx = idx + 1
                                                                                s = s + 1
                                                                                continue 
                                                                            else:
                                                                                if Mask(112, 0, _8376) == mem[_7337 + 160]:
                                                                                    mem[_7337 + 192] = 1
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
                                                                                else:
                                                                                    mem[_7337 + 192] = 0
                                                                                    require s < mem[_3590]
                                                                                    mem[(32 * s) + _3590 + 32] = _7337
                                                                                    _7013 = mem[ceil32(return_data.size) + 96]
                                                                                    idx = idx + 1
                                                                                    s = s + 1
                                                                                    continue 
            _7034 = mem[64]
            mem[mem[64]] = 32
            _7043 = mem[_3590]
            mem[mem[64] + 32] = mem[_3590]
            idx = 0
            s = _3590 + 32
            t = mem[64] + 64
            while idx < _7043:
                _10406 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_10406 + 32]
                mem[t + 64] = mem[_10406 + 64]
                mem[t + 96] = mem[_10406 + 96]
                mem[t + 128] = mem[_10406 + 128]
                mem[t + 160] = mem[_10406 + 160]
                mem[t + 192] = bool(mem[_10406 + 192])
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _7034 + (224 * _7043) + -mem[64] + 64
        mem[64] = _3590 + (32 * s) + 256
        mem[_3590 + (32 * s) + 32] = 0
        mem[_3590 + (32 * s) + 64] = 0
        mem[_3590 + (32 * s) + 96] = 0
        mem[_3590 + (32 * s) + 128] = 0
        mem[_3590 + (32 * s) + 160] = 0
        mem[_3590 + (32 * s) + 192] = 0
        mem[_3590 + (32 * s) + 224] = 0
        mem[var38001] = _3590 + (32 * s) + 32
        t = var38001
        idx = var38002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[_3590 + (32 * s) + 32] = 0
            mem[_3590 + (32 * s) + 64] = 0
            mem[_3590 + (32 * s) + 96] = 0
            mem[_3590 + (32 * s) + 128] = 0
            mem[_3590 + (32 * s) + 160] = 0
            mem[_3590 + (32 * s) + 192] = 0
            mem[_3590 + (32 * s) + 224] = 0
            mem[t + 32] = _3590 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        _12119 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _12119:
            require idx < mem[ceil32(return_data.size) + 96]
            _12135 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12213] == mem[_12213 + 12 len 20]
            if mem[_12213 + 12 len 20] == address(arg2):
                _12242 = mem[64]
                mem[64] = mem[64] + 224
                mem[_12242] = 0
                mem[_12242 + 32] = 0
                mem[_12242 + 64] = 0
                mem[_12242 + 96] = 0
                mem[_12242 + 128] = 0
                mem[_12242 + 160] = 0
                mem[_12242 + 192] = 0
                require ext_code.size(address(_12135))
                staticcall address(_12135).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12269] == mem[_12269 + 12 len 20]
                require ext_code.size(address(_12135))
                if address(arg2) == mem[_12269 + 12 len 20]:
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12329 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12347 = mem[_12329]
                    require mem[_12329] == mem[_12329 + 12 len 20]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12434 = mem[_12410]
                    require mem[_12410] == mem[_12410 + 12 len 20]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12347))
                    staticcall address(_12347).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12242 + 128] = mem[_12515]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12434))
                    staticcall address(_12434).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12590 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12242 + 160] = mem[_12590]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12698 = mem[_12671]
                    require mem[_12671] == mem[_12671 + 18 len 14]
                    _12728 = mem[_12671 + 32]
                    require mem[_12671 + 32] == mem[_12671 + 50 len 14]
                    require mem[_12671 + 64] == mem[_12671 + 92 len 4]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12836 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12836] == mem[_12836 + 12 len 20]
                    if address(arg2) == mem[_12836 + 12 len 20]:
                        if Mask(112, 0, _12698) != 0:
                            if Mask(112, 0, _12728):
                                require Mask(112, 0, _12728)
                                mem[_12242 + 96] = 10^18 * Mask(112, 0, _12698) / Mask(112, 0, _12728)
                        mem[_12242 + 32] = Mask(112, 0, _12698)
                        mem[_12242 + 64] = Mask(112, 0, _12728)
                        mem[_12242] = address(_12135)
                        if Mask(112, 0, _12698) != mem[_12242 + 128]:
                            mem[_12242 + 192] = 0
                        else:
                            if Mask(112, 0, _12728) == mem[_12242 + 160]:
                                mem[_12242 + 192] = 1
                            else:
                                mem[_12242 + 192] = 0
                    else:
                        if Mask(112, 0, _12728) != 0:
                            if Mask(112, 0, _12698):
                                require Mask(112, 0, _12698)
                                mem[_12242 + 96] = 10^18 * Mask(112, 0, _12728) / Mask(112, 0, _12698)
                        mem[_12242 + 32] = Mask(112, 0, _12728)
                        mem[_12242 + 64] = Mask(112, 0, _12698)
                        mem[_12242] = address(_12135)
                        if Mask(112, 0, _12728) != mem[_12242 + 128]:
                            mem[_12242 + 192] = 0
                        else:
                            if Mask(112, 0, _12698) == mem[_12242 + 160]:
                                mem[_12242 + 192] = 1
                            else:
                                mem[_12242 + 192] = 0
                else:
                    staticcall address(_12135).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12348 = mem[_12330]
                    require mem[_12330] == mem[_12330 + 12 len 20]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12411 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12435 = mem[_12411]
                    require mem[_12411] == mem[_12411 + 12 len 20]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12348))
                    staticcall address(_12348).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12242 + 128] = mem[_12527]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12435))
                    staticcall address(_12435).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12602 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12242 + 160] = mem[_12602]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12686 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12710 = mem[_12686]
                    require mem[_12686] == mem[_12686 + 18 len 14]
                    _12740 = mem[_12686 + 32]
                    require mem[_12686 + 32] == mem[_12686 + 50 len 14]
                    require mem[_12686 + 64] == mem[_12686 + 92 len 4]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12845] == mem[_12845 + 12 len 20]
                    if address(arg2) == mem[_12845 + 12 len 20]:
                        if Mask(112, 0, _12710) != 0:
                            if Mask(112, 0, _12740):
                                require Mask(112, 0, _12740)
                                mem[_12242 + 96] = 10^18 * Mask(112, 0, _12710) / Mask(112, 0, _12740)
                        mem[_12242 + 32] = Mask(112, 0, _12710)
                        mem[_12242 + 64] = Mask(112, 0, _12740)
                        mem[_12242] = address(_12135)
                        if Mask(112, 0, _12710) != mem[_12242 + 128]:
                            mem[_12242 + 192] = 0
                        else:
                            if Mask(112, 0, _12740) == mem[_12242 + 160]:
                                mem[_12242 + 192] = 1
                            else:
                                mem[_12242 + 192] = 0
                    else:
                        if Mask(112, 0, _12740) != 0:
                            if Mask(112, 0, _12710):
                                require Mask(112, 0, _12710)
                                mem[_12242 + 96] = 10^18 * Mask(112, 0, _12740) / Mask(112, 0, _12710)
                        mem[_12242 + 32] = Mask(112, 0, _12740)
                        mem[_12242 + 64] = Mask(112, 0, _12710)
                        mem[_12242] = address(_12135)
                        if Mask(112, 0, _12740) != mem[_12242 + 128]:
                            mem[_12242 + 192] = 0
                        else:
                            if Mask(112, 0, _12710) == mem[_12242 + 160]:
                                mem[_12242 + 192] = 1
                            else:
                                mem[_12242 + 192] = 0
                require s < mem[_3590]
                mem[(32 * s) + _3590 + 32] = _12242
            else:
                require ext_code.size(address(_12135))
                staticcall address(_12135).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12243] == mem[_12243 + 12 len 20]
                if mem[_12243 + 12 len 20] != address(arg2):
                    _12119 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _12281 = mem[64]
                mem[64] = mem[64] + 224
                mem[_12281] = 0
                mem[_12281 + 32] = 0
                mem[_12281 + 64] = 0
                mem[_12281 + 96] = 0
                mem[_12281 + 128] = 0
                mem[_12281 + 160] = 0
                mem[_12281 + 192] = 0
                require ext_code.size(address(_12135))
                staticcall address(_12135).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12331] == mem[_12331 + 12 len 20]
                require ext_code.size(address(_12135))
                if address(arg2) == mem[_12331 + 12 len 20]:
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12446 = mem[_12422]
                    require mem[_12422] == mem[_12422 + 12 len 20]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12528 = mem[_12504]
                    require mem[_12504] == mem[_12504 + 12 len 20]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12446))
                    staticcall address(_12446).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12281 + 128] = mem[_12615]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12528))
                    staticcall address(_12528).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12719 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12281 + 160] = mem[_12719]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12789 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12823 = mem[_12789]
                    require mem[_12789] == mem[_12789 + 18 len 14]
                    _12855 = mem[_12789 + 32]
                    require mem[_12789 + 32] == mem[_12789 + 50 len 14]
                    require mem[_12789 + 64] == mem[_12789 + 92 len 4]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12911 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12911] == mem[_12911 + 12 len 20]
                    if address(arg2) == mem[_12911 + 12 len 20]:
                        if Mask(112, 0, _12823) != 0:
                            if Mask(112, 0, _12855):
                                require Mask(112, 0, _12855)
                                mem[_12281 + 96] = 10^18 * Mask(112, 0, _12823) / Mask(112, 0, _12855)
                        mem[_12281 + 32] = Mask(112, 0, _12823)
                        mem[_12281 + 64] = Mask(112, 0, _12855)
                        mem[_12281] = address(_12135)
                        if Mask(112, 0, _12823) != mem[_12281 + 128]:
                            mem[_12281 + 192] = 0
                        else:
                            if Mask(112, 0, _12855) == mem[_12281 + 160]:
                                mem[_12281 + 192] = 1
                            else:
                                mem[_12281 + 192] = 0
                    else:
                        if Mask(112, 0, _12855) != 0:
                            if Mask(112, 0, _12823):
                                require Mask(112, 0, _12823)
                                mem[_12281 + 96] = 10^18 * Mask(112, 0, _12855) / Mask(112, 0, _12823)
                        mem[_12281 + 32] = Mask(112, 0, _12855)
                        mem[_12281 + 64] = Mask(112, 0, _12823)
                        mem[_12281] = address(_12135)
                        if Mask(112, 0, _12855) != mem[_12281 + 128]:
                            mem[_12281 + 192] = 0
                        else:
                            if Mask(112, 0, _12823) == mem[_12281 + 160]:
                                mem[_12281 + 192] = 1
                            else:
                                mem[_12281 + 192] = 0
                else:
                    staticcall address(_12135).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12447 = mem[_12423]
                    require mem[_12423] == mem[_12423 + 12 len 20]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12529 = mem[_12505]
                    require mem[_12505] == mem[_12505 + 12 len 20]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12447))
                    staticcall address(_12447).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12281 + 128] = mem[_12635]
                    mem[mem[64] + 4] = address(_12135)
                    require ext_code.size(address(_12529))
                    staticcall address(_12529).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12281 + 160] = mem[_12729]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12805 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12837 = mem[_12805]
                    require mem[_12805] == mem[_12805 + 18 len 14]
                    _12867 = mem[_12805 + 32]
                    require mem[_12805 + 32] == mem[_12805 + 50 len 14]
                    require mem[_12805 + 64] == mem[_12805 + 92 len 4]
                    require ext_code.size(address(_12135))
                    staticcall address(_12135).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12925 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12925] == mem[_12925 + 12 len 20]
                    if address(arg2) == mem[_12925 + 12 len 20]:
                        if Mask(112, 0, _12837) != 0:
                            if Mask(112, 0, _12867):
                                require Mask(112, 0, _12867)
                                mem[_12281 + 96] = 10^18 * Mask(112, 0, _12837) / Mask(112, 0, _12867)
                        mem[_12281 + 32] = Mask(112, 0, _12837)
                        mem[_12281 + 64] = Mask(112, 0, _12867)
                        mem[_12281] = address(_12135)
                        if Mask(112, 0, _12837) != mem[_12281 + 128]:
                            mem[_12281 + 192] = 0
                        else:
                            if Mask(112, 0, _12867) == mem[_12281 + 160]:
                                mem[_12281 + 192] = 1
                            else:
                                mem[_12281 + 192] = 0
                    else:
                        if Mask(112, 0, _12867) != 0:
                            if Mask(112, 0, _12837):
                                require Mask(112, 0, _12837)
                                mem[_12281 + 96] = 10^18 * Mask(112, 0, _12867) / Mask(112, 0, _12837)
                        mem[_12281 + 32] = Mask(112, 0, _12867)
                        mem[_12281 + 64] = Mask(112, 0, _12837)
                        mem[_12281] = address(_12135)
                        if Mask(112, 0, _12867) != mem[_12281 + 128]:
                            mem[_12281 + 192] = 0
                        else:
                            if Mask(112, 0, _12837) == mem[_12281 + 160]:
                                mem[_12281 + 192] = 1
                            else:
                                mem[_12281 + 192] = 0
                require s < mem[_3590]
                mem[(32 * s) + _3590 + 32] = _12281
            _12119 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _12134 = mem[64]
        mem[mem[64]] = 32
        _12143 = mem[_3590]
        mem[mem[64] + 32] = mem[_3590]
        idx = 0
        s = _3590 + 32
        t = mem[64] + 64
        while idx < _12143:
            _13820 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_13820 + 32]
            mem[t + 64] = mem[_13820 + 64]
            mem[t + 96] = mem[_13820 + 96]
            mem[t + 128] = mem[_13820 + 128]
            mem[t + 160] = mem[_13820 + 160]
            mem[t + 192] = bool(mem[_13820 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _12134 + (224 * _12143) + -mem[64] + 64
    require ext_call.return_data[0] - arg3 <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
    if not ext_call.return_data[0] - arg3:
        idx = arg3
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
            _1828 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1828] == mem[_1828 + 12 len 20]
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_1828 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _3576 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _3576:
            require idx < mem[ceil32(return_data.size) + 96]
            _3593 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3640] == mem[_3640 + 12 len 20]
            if mem[_3640 + 12 len 20] != address(arg2):
                require ext_code.size(address(_3593))
                staticcall address(_3593).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3850 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3850] == mem[_3850 + 12 len 20]
                if mem[_3850 + 12 len 20] != address(arg2):
                    _3576 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
            _3576 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _3592 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            _7014 = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = 0
            while idx < _7014:
                require idx < mem[ceil32(return_data.size) + 96]
                _7037 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7125] == mem[_7125 + 12 len 20]
                if mem[_7125 + 12 len 20] == address(arg2):
                    _7252 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_7252] = 0
                    mem[_7252 + 32] = 0
                    mem[_7252 + 64] = 0
                    mem[_7252 + 96] = 0
                    mem[_7252 + 128] = 0
                    mem[_7252 + 160] = 0
                    mem[_7252 + 192] = 0
                    require ext_code.size(address(_7037))
                    staticcall address(_7037).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7286] == mem[_7286 + 12 len 20]
                    require ext_code.size(address(_7037))
                    if address(arg2) == mem[_7286 + 12 len 20]:
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7416 = mem[_7394]
                        require mem[_7394] == mem[_7394 + 12 len 20]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7552 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7576 = mem[_7552]
                        require mem[_7552] == mem[_7552 + 12 len 20]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7416))
                        staticcall address(_7416).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7752 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7252 + 128] = mem[_7752]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7576))
                        staticcall address(_7576).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7916 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7252 + 160] = mem[_7916]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8050 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8100 = mem[_8050]
                        require mem[_8050] == mem[_8050 + 18 len 14]
                        _8188 = mem[_8050 + 32]
                        require mem[_8050 + 32] == mem[_8050 + 50 len 14]
                        require mem[_8050 + 64] == mem[_8050 + 92 len 4]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8380 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8380] == mem[_8380 + 12 len 20]
                        if address(arg2) == mem[_8380 + 12 len 20]:
                            if Mask(112, 0, _8100) != 0:
                                if Mask(112, 0, _8188):
                                    require Mask(112, 0, _8188)
                                    mem[_7252 + 96] = 10^18 * Mask(112, 0, _8100) / Mask(112, 0, _8188)
                            mem[_7252 + 32] = Mask(112, 0, _8100)
                            mem[_7252 + 64] = Mask(112, 0, _8188)
                            mem[_7252] = address(_7037)
                            if Mask(112, 0, _8100) != mem[_7252 + 128]:
                                mem[_7252 + 192] = 0
                            else:
                                if Mask(112, 0, _8188) == mem[_7252 + 160]:
                                    mem[_7252 + 192] = 1
                                else:
                                    mem[_7252 + 192] = 0
                        else:
                            if Mask(112, 0, _8188) != 0:
                                if Mask(112, 0, _8100):
                                    require Mask(112, 0, _8100)
                                    mem[_7252 + 96] = 10^18 * Mask(112, 0, _8188) / Mask(112, 0, _8100)
                            mem[_7252 + 32] = Mask(112, 0, _8188)
                            mem[_7252 + 64] = Mask(112, 0, _8100)
                            mem[_7252] = address(_7037)
                            if Mask(112, 0, _8188) != mem[_7252 + 128]:
                                mem[_7252 + 192] = 0
                            else:
                                if Mask(112, 0, _8100) == mem[_7252 + 160]:
                                    mem[_7252 + 192] = 1
                                else:
                                    mem[_7252 + 192] = 0
                    else:
                        staticcall address(_7037).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7417 = mem[_7395]
                        require mem[_7395] == mem[_7395 + 12 len 20]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7577 = mem[_7553]
                        require mem[_7553] == mem[_7553 + 12 len 20]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7417))
                        staticcall address(_7417).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7252 + 128] = mem[_7770]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7577))
                        staticcall address(_7577).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7252 + 160] = mem[_7938]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8076 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8132 = mem[_8076]
                        require mem[_8076] == mem[_8076 + 18 len 14]
                        _8214 = mem[_8076 + 32]
                        require mem[_8076 + 32] == mem[_8076 + 50 len 14]
                        require mem[_8076 + 64] == mem[_8076 + 92 len 4]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8406] == mem[_8406 + 12 len 20]
                        if address(arg2) == mem[_8406 + 12 len 20]:
                            if Mask(112, 0, _8132) != 0:
                                if Mask(112, 0, _8214):
                                    require Mask(112, 0, _8214)
                                    mem[_7252 + 96] = 10^18 * Mask(112, 0, _8132) / Mask(112, 0, _8214)
                            mem[_7252 + 32] = Mask(112, 0, _8132)
                            mem[_7252 + 64] = Mask(112, 0, _8214)
                            mem[_7252] = address(_7037)
                            if Mask(112, 0, _8132) != mem[_7252 + 128]:
                                mem[_7252 + 192] = 0
                            else:
                                if Mask(112, 0, _8214) == mem[_7252 + 160]:
                                    mem[_7252 + 192] = 1
                                else:
                                    mem[_7252 + 192] = 0
                        else:
                            if Mask(112, 0, _8214) != 0:
                                if Mask(112, 0, _8132):
                                    require Mask(112, 0, _8132)
                                    mem[_7252 + 96] = 10^18 * Mask(112, 0, _8214) / Mask(112, 0, _8132)
                            mem[_7252 + 32] = Mask(112, 0, _8214)
                            mem[_7252 + 64] = Mask(112, 0, _8132)
                            mem[_7252] = address(_7037)
                            if Mask(112, 0, _8214) != mem[_7252 + 128]:
                                mem[_7252 + 192] = 0
                            else:
                                if Mask(112, 0, _8132) == mem[_7252 + 160]:
                                    mem[_7252 + 192] = 1
                                else:
                                    mem[_7252 + 192] = 0
                    require s < mem[_3592]
                    mem[(32 * s) + _3592 + 32] = _7252
                else:
                    require ext_code.size(address(_7037))
                    staticcall address(_7037).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7253] == mem[_7253 + 12 len 20]
                    if mem[_7253 + 12 len 20] != address(arg2):
                        _7014 = mem[ceil32(return_data.size) + 96]
                        idx = idx + 1
                        s = s
                        continue 
                    _7338 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_7338] = 0
                    mem[_7338 + 32] = 0
                    mem[_7338 + 64] = 0
                    mem[_7338 + 96] = 0
                    mem[_7338 + 128] = 0
                    mem[_7338 + 160] = 0
                    mem[_7338 + 192] = 0
                    require ext_code.size(address(_7037))
                    staticcall address(_7037).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7396 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7396] == mem[_7396 + 12 len 20]
                    require ext_code.size(address(_7037))
                    if address(arg2) == mem[_7396 + 12 len 20]:
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7604 = mem[_7564]
                        require mem[_7564] == mem[_7564 + 12 len 20]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7743 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7771 = mem[_7743]
                        require mem[_7743] == mem[_7743 + 12 len 20]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7604))
                        staticcall address(_7604).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7959 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7338 + 128] = mem[_7959]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7771))
                        staticcall address(_7771).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7338 + 160] = mem[_8160]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8295 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8352 = mem[_8295]
                        require mem[_8295] == mem[_8295 + 18 len 14]
                        _8431 = mem[_8295 + 32]
                        require mem[_8295 + 32] == mem[_8295 + 50 len 14]
                        require mem[_8295 + 64] == mem[_8295 + 92 len 4]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8568 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8568] == mem[_8568 + 12 len 20]
                        if address(arg2) == mem[_8568 + 12 len 20]:
                            if Mask(112, 0, _8352) != 0:
                                if Mask(112, 0, _8431):
                                    require Mask(112, 0, _8431)
                                    mem[_7338 + 96] = 10^18 * Mask(112, 0, _8352) / Mask(112, 0, _8431)
                            mem[_7338 + 32] = Mask(112, 0, _8352)
                            mem[_7338 + 64] = Mask(112, 0, _8431)
                            mem[_7338] = address(_7037)
                            if Mask(112, 0, _8352) != mem[_7338 + 128]:
                                mem[_7338 + 192] = 0
                            else:
                                if Mask(112, 0, _8431) == mem[_7338 + 160]:
                                    mem[_7338 + 192] = 1
                                else:
                                    mem[_7338 + 192] = 0
                        else:
                            if Mask(112, 0, _8431) != 0:
                                if Mask(112, 0, _8352):
                                    require Mask(112, 0, _8352)
                                    mem[_7338 + 96] = 10^18 * Mask(112, 0, _8431) / Mask(112, 0, _8352)
                            mem[_7338 + 32] = Mask(112, 0, _8431)
                            mem[_7338 + 64] = Mask(112, 0, _8352)
                            mem[_7338] = address(_7037)
                            if Mask(112, 0, _8431) != mem[_7338 + 128]:
                                mem[_7338 + 192] = 0
                            else:
                                if Mask(112, 0, _8352) == mem[_7338 + 160]:
                                    mem[_7338 + 192] = 1
                                else:
                                    mem[_7338 + 192] = 0
                    else:
                        staticcall address(_7037).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7605 = mem[_7565]
                        require mem[_7565] == mem[_7565 + 12 len 20]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7744 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7772 = mem[_7744]
                        require mem[_7744] == mem[_7744 + 12 len 20]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7605))
                        staticcall address(_7605).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7338 + 128] = mem[_7991]
                        mem[mem[64] + 4] = address(_7037)
                        require ext_code.size(address(_7772))
                        staticcall address(_7772).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(_7037)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_7338 + 160] = mem[_8189]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8381 = mem[_8322]
                        require mem[_8322] == mem[_8322 + 18 len 14]
                        _8459 = mem[_8322 + 32]
                        require mem[_8322 + 32] == mem[_8322 + 50 len 14]
                        require mem[_8322 + 64] == mem[_8322 + 92 len 4]
                        require ext_code.size(address(_7037))
                        staticcall address(_7037).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8588 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8588] == mem[_8588 + 12 len 20]
                        if address(arg2) == mem[_8588 + 12 len 20]:
                            if Mask(112, 0, _8381) != 0:
                                if Mask(112, 0, _8459):
                                    require Mask(112, 0, _8459)
                                    mem[_7338 + 96] = 10^18 * Mask(112, 0, _8381) / Mask(112, 0, _8459)
                            mem[_7338 + 32] = Mask(112, 0, _8381)
                            mem[_7338 + 64] = Mask(112, 0, _8459)
                            mem[_7338] = address(_7037)
                            if Mask(112, 0, _8381) != mem[_7338 + 128]:
                                mem[_7338 + 192] = 0
                            else:
                                if Mask(112, 0, _8459) == mem[_7338 + 160]:
                                    mem[_7338 + 192] = 1
                                else:
                                    mem[_7338 + 192] = 0
                        else:
                            if Mask(112, 0, _8459) != 0:
                                if Mask(112, 0, _8381):
                                    require Mask(112, 0, _8381)
                                    mem[_7338 + 96] = 10^18 * Mask(112, 0, _8459) / Mask(112, 0, _8381)
                            mem[_7338 + 32] = Mask(112, 0, _8459)
                            mem[_7338 + 64] = Mask(112, 0, _8381)
                            mem[_7338] = address(_7037)
                            if Mask(112, 0, _8459) != mem[_7338 + 128]:
                                mem[_7338 + 192] = 0
                            else:
                                if Mask(112, 0, _8381) == mem[_7338 + 160]:
                                    mem[_7338 + 192] = 1
                                else:
                                    mem[_7338 + 192] = 0
                    require s < mem[_3592]
                    mem[(32 * s) + _3592 + 32] = _7338
                _7014 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s + 1
                continue 
            _7036 = mem[64]
            mem[mem[64]] = 32
            _7044 = mem[_3592]
            mem[mem[64] + 32] = mem[_3592]
            idx = 0
            s = _3592 + 32
            t = mem[64] + 64
            while idx < _7044:
                _10414 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_10414 + 32]
                mem[t + 64] = mem[_10414 + 64]
                mem[t + 96] = mem[_10414 + 96]
                mem[t + 128] = mem[_10414 + 128]
                mem[t + 160] = mem[_10414 + 160]
                mem[t + 192] = bool(mem[_10414 + 192])
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _7036 + (224 * _7044) + -mem[64] + 64
        mem[64] = _3592 + (32 * s) + 256
        mem[_3592 + (32 * s) + 32] = 0
        mem[_3592 + (32 * s) + 64] = 0
        mem[_3592 + (32 * s) + 96] = 0
        mem[_3592 + (32 * s) + 128] = 0
        mem[_3592 + (32 * s) + 160] = 0
        mem[_3592 + (32 * s) + 192] = 0
        mem[_3592 + (32 * s) + 224] = 0
        mem[var38001] = _3592 + (32 * s) + 32
        t = var38001
        idx = var38002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[_3592 + (32 * s) + 32] = 0
            mem[_3592 + (32 * s) + 64] = 0
            mem[_3592 + (32 * s) + 96] = 0
            mem[_3592 + (32 * s) + 128] = 0
            mem[_3592 + (32 * s) + 160] = 0
            mem[_3592 + (32 * s) + 192] = 0
            mem[_3592 + (32 * s) + 224] = 0
            mem[t + 32] = _3592 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        _12120 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _12120:
            require idx < mem[ceil32(return_data.size) + 96]
            _12137 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12215] == mem[_12215 + 12 len 20]
            if mem[_12215 + 12 len 20] == address(arg2):
                _12244 = mem[64]
                mem[64] = mem[64] + 224
                mem[_12244] = 0
                mem[_12244 + 32] = 0
                mem[_12244 + 64] = 0
                mem[_12244 + 96] = 0
                mem[_12244 + 128] = 0
                mem[_12244 + 160] = 0
                mem[_12244 + 192] = 0
                require ext_code.size(address(_12137))
                staticcall address(_12137).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12270] == mem[_12270 + 12 len 20]
                require ext_code.size(address(_12137))
                if address(arg2) == mem[_12270 + 12 len 20]:
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12350 = mem[_12332]
                    require mem[_12332] == mem[_12332 + 12 len 20]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12436 = mem[_12412]
                    require mem[_12412] == mem[_12412 + 12 len 20]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12350))
                    staticcall address(_12350).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12244 + 128] = mem[_12516]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12436))
                    staticcall address(_12436).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12592 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12244 + 160] = mem[_12592]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12674 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12700 = mem[_12674]
                    require mem[_12674] == mem[_12674 + 18 len 14]
                    _12730 = mem[_12674 + 32]
                    require mem[_12674 + 32] == mem[_12674 + 50 len 14]
                    require mem[_12674 + 64] == mem[_12674 + 92 len 4]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12838] == mem[_12838 + 12 len 20]
                    if address(arg2) == mem[_12838 + 12 len 20]:
                        if Mask(112, 0, _12700) != 0:
                            if Mask(112, 0, _12730):
                                require Mask(112, 0, _12730)
                                mem[_12244 + 96] = 10^18 * Mask(112, 0, _12700) / Mask(112, 0, _12730)
                        mem[_12244 + 32] = Mask(112, 0, _12700)
                        mem[_12244 + 64] = Mask(112, 0, _12730)
                        mem[_12244] = address(_12137)
                        if Mask(112, 0, _12700) != mem[_12244 + 128]:
                            mem[_12244 + 192] = 0
                        else:
                            if Mask(112, 0, _12730) == mem[_12244 + 160]:
                                mem[_12244 + 192] = 1
                            else:
                                mem[_12244 + 192] = 0
                    else:
                        if Mask(112, 0, _12730) != 0:
                            if Mask(112, 0, _12700):
                                require Mask(112, 0, _12700)
                                mem[_12244 + 96] = 10^18 * Mask(112, 0, _12730) / Mask(112, 0, _12700)
                        mem[_12244 + 32] = Mask(112, 0, _12730)
                        mem[_12244 + 64] = Mask(112, 0, _12700)
                        mem[_12244] = address(_12137)
                        if Mask(112, 0, _12730) != mem[_12244 + 128]:
                            mem[_12244 + 192] = 0
                        else:
                            if Mask(112, 0, _12700) == mem[_12244 + 160]:
                                mem[_12244 + 192] = 1
                            else:
                                mem[_12244 + 192] = 0
                else:
                    staticcall address(_12137).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12351 = mem[_12333]
                    require mem[_12333] == mem[_12333 + 12 len 20]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12437 = mem[_12413]
                    require mem[_12413] == mem[_12413 + 12 len 20]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12351))
                    staticcall address(_12351).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12244 + 128] = mem[_12530]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12437))
                    staticcall address(_12437).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12604 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12244 + 160] = mem[_12604]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12712 = mem[_12688]
                    require mem[_12688] == mem[_12688 + 18 len 14]
                    _12742 = mem[_12688 + 32]
                    require mem[_12688 + 32] == mem[_12688 + 50 len 14]
                    require mem[_12688 + 64] == mem[_12688 + 92 len 4]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12846] == mem[_12846 + 12 len 20]
                    if address(arg2) == mem[_12846 + 12 len 20]:
                        if Mask(112, 0, _12712) != 0:
                            if Mask(112, 0, _12742):
                                require Mask(112, 0, _12742)
                                mem[_12244 + 96] = 10^18 * Mask(112, 0, _12712) / Mask(112, 0, _12742)
                        mem[_12244 + 32] = Mask(112, 0, _12712)
                        mem[_12244 + 64] = Mask(112, 0, _12742)
                        mem[_12244] = address(_12137)
                        if Mask(112, 0, _12712) != mem[_12244 + 128]:
                            mem[_12244 + 192] = 0
                        else:
                            if Mask(112, 0, _12742) == mem[_12244 + 160]:
                                mem[_12244 + 192] = 1
                            else:
                                mem[_12244 + 192] = 0
                    else:
                        if Mask(112, 0, _12742) != 0:
                            if Mask(112, 0, _12712):
                                require Mask(112, 0, _12712)
                                mem[_12244 + 96] = 10^18 * Mask(112, 0, _12742) / Mask(112, 0, _12712)
                        mem[_12244 + 32] = Mask(112, 0, _12742)
                        mem[_12244 + 64] = Mask(112, 0, _12712)
                        mem[_12244] = address(_12137)
                        if Mask(112, 0, _12742) != mem[_12244 + 128]:
                            mem[_12244 + 192] = 0
                        else:
                            if Mask(112, 0, _12712) == mem[_12244 + 160]:
                                mem[_12244 + 192] = 1
                            else:
                                mem[_12244 + 192] = 0
                require s < mem[_3592]
                mem[(32 * s) + _3592 + 32] = _12244
            else:
                require ext_code.size(address(_12137))
                staticcall address(_12137).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12245] == mem[_12245 + 12 len 20]
                if mem[_12245 + 12 len 20] != address(arg2):
                    _12120 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _12282 = mem[64]
                mem[64] = mem[64] + 224
                mem[_12282] = 0
                mem[_12282 + 32] = 0
                mem[_12282 + 64] = 0
                mem[_12282 + 96] = 0
                mem[_12282 + 128] = 0
                mem[_12282 + 160] = 0
                mem[_12282 + 192] = 0
                require ext_code.size(address(_12137))
                staticcall address(_12137).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12334] == mem[_12334 + 12 len 20]
                require ext_code.size(address(_12137))
                if address(arg2) == mem[_12334 + 12 len 20]:
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12448 = mem[_12424]
                    require mem[_12424] == mem[_12424 + 12 len 20]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12531 = mem[_12507]
                    require mem[_12507] == mem[_12507 + 12 len 20]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12448))
                    staticcall address(_12448).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12282 + 128] = mem[_12617]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12531))
                    staticcall address(_12531).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12720 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12282 + 160] = mem[_12720]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12791 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12826 = mem[_12791]
                    require mem[_12791] == mem[_12791 + 18 len 14]
                    _12857 = mem[_12791 + 32]
                    require mem[_12791 + 32] == mem[_12791 + 50 len 14]
                    require mem[_12791 + 64] == mem[_12791 + 92 len 4]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12912 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12912] == mem[_12912 + 12 len 20]
                    if address(arg2) == mem[_12912 + 12 len 20]:
                        if Mask(112, 0, _12826) != 0:
                            if Mask(112, 0, _12857):
                                require Mask(112, 0, _12857)
                                mem[_12282 + 96] = 10^18 * Mask(112, 0, _12826) / Mask(112, 0, _12857)
                        mem[_12282 + 32] = Mask(112, 0, _12826)
                        mem[_12282 + 64] = Mask(112, 0, _12857)
                        mem[_12282] = address(_12137)
                        if Mask(112, 0, _12826) != mem[_12282 + 128]:
                            mem[_12282 + 192] = 0
                        else:
                            if Mask(112, 0, _12857) == mem[_12282 + 160]:
                                mem[_12282 + 192] = 1
                            else:
                                mem[_12282 + 192] = 0
                    else:
                        if Mask(112, 0, _12857) != 0:
                            if Mask(112, 0, _12826):
                                require Mask(112, 0, _12826)
                                mem[_12282 + 96] = 10^18 * Mask(112, 0, _12857) / Mask(112, 0, _12826)
                        mem[_12282 + 32] = Mask(112, 0, _12857)
                        mem[_12282 + 64] = Mask(112, 0, _12826)
                        mem[_12282] = address(_12137)
                        if Mask(112, 0, _12857) != mem[_12282 + 128]:
                            mem[_12282 + 192] = 0
                        else:
                            if Mask(112, 0, _12826) == mem[_12282 + 160]:
                                mem[_12282 + 192] = 1
                            else:
                                mem[_12282 + 192] = 0
                else:
                    staticcall address(_12137).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12449 = mem[_12425]
                    require mem[_12425] == mem[_12425 + 12 len 20]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12532 = mem[_12508]
                    require mem[_12508] == mem[_12508 + 12 len 20]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12449))
                    staticcall address(_12449).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12282 + 128] = mem[_12639]
                    mem[mem[64] + 4] = address(_12137)
                    require ext_code.size(address(_12532))
                    staticcall address(_12532).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_12137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_12282 + 160] = mem[_12731]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12839 = mem[_12808]
                    require mem[_12808] == mem[_12808 + 18 len 14]
                    _12869 = mem[_12808 + 32]
                    require mem[_12808 + 32] == mem[_12808 + 50 len 14]
                    require mem[_12808 + 64] == mem[_12808 + 92 len 4]
                    require ext_code.size(address(_12137))
                    staticcall address(_12137).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12928 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12928] == mem[_12928 + 12 len 20]
                    if address(arg2) == mem[_12928 + 12 len 20]:
                        if Mask(112, 0, _12839) != 0:
                            if Mask(112, 0, _12869):
                                require Mask(112, 0, _12869)
                                mem[_12282 + 96] = 10^18 * Mask(112, 0, _12839) / Mask(112, 0, _12869)
                        mem[_12282 + 32] = Mask(112, 0, _12839)
                        mem[_12282 + 64] = Mask(112, 0, _12869)
                        mem[_12282] = address(_12137)
                        if Mask(112, 0, _12839) != mem[_12282 + 128]:
                            mem[_12282 + 192] = 0
                        else:
                            if Mask(112, 0, _12869) == mem[_12282 + 160]:
                                mem[_12282 + 192] = 1
                            else:
                                mem[_12282 + 192] = 0
                    else:
                        if Mask(112, 0, _12869) != 0:
                            if Mask(112, 0, _12839):
                                require Mask(112, 0, _12839)
                                mem[_12282 + 96] = 10^18 * Mask(112, 0, _12869) / Mask(112, 0, _12839)
                        mem[_12282 + 32] = Mask(112, 0, _12869)
                        mem[_12282 + 64] = Mask(112, 0, _12839)
                        mem[_12282] = address(_12137)
                        if Mask(112, 0, _12869) != mem[_12282 + 128]:
                            mem[_12282 + 192] = 0
                        else:
                            if Mask(112, 0, _12839) == mem[_12282 + 160]:
                                mem[_12282 + 192] = 1
                            else:
                                mem[_12282 + 192] = 0
                require s < mem[_3592]
                mem[(32 * s) + _3592 + 32] = _12282
            _12120 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _12136 = mem[64]
        mem[mem[64]] = 32
        _12144 = mem[_3592]
        mem[mem[64] + 32] = mem[_3592]
        idx = 0
        s = _3592 + 32
        t = mem[64] + 64
        while idx < _12144:
            _13828 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_13828 + 32]
            mem[t + 64] = mem[_13828 + 64]
            mem[t + 96] = mem[_13828 + 96]
            mem[t + 128] = mem[_13828 + 128]
            mem[t + 160] = mem[_13828 + 160]
            mem[t + 192] = bool(mem[_13828 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _12136 + (224 * _12144) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg3] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg3]
    idx = arg3
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
        _1831 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1831] == mem[_1831 + 12 len 20]
        require s < mem[ceil32(return_data.size) + 96]
        mem[(32 * s) + ceil32(return_data.size) + 128] = mem[_1831 + 12 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    _3577 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _3577:
        require idx < mem[ceil32(return_data.size) + 96]
        _3595 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3643 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3643] == mem[_3643 + 12 len 20]
        if mem[_3643 + 12 len 20] != address(arg2):
            require ext_code.size(address(_3595))
            staticcall address(_3595).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3853 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3853] == mem[_3853 + 12 len 20]
            if mem[_3853 + 12 len 20] != address(arg2):
                _3577 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
        _3577 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _3594 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        _7015 = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = 0
        while idx < _7015:
            require idx < mem[ceil32(return_data.size) + 96]
            _7039 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7128] == mem[_7128 + 12 len 20]
            if mem[_7128 + 12 len 20] == address(arg2):
                _7254 = mem[64]
                mem[64] = mem[64] + 224
                mem[_7254] = 0
                mem[_7254 + 32] = 0
                mem[_7254 + 64] = 0
                mem[_7254 + 96] = 0
                mem[_7254 + 128] = 0
                mem[_7254 + 160] = 0
                mem[_7254 + 192] = 0
                require ext_code.size(address(_7039))
                staticcall address(_7039).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7289] == mem[_7289 + 12 len 20]
                require ext_code.size(address(_7039))
                if address(arg2) == mem[_7289 + 12 len 20]:
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7397 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7420 = mem[_7397]
                    require mem[_7397] == mem[_7397 + 12 len 20]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7578 = mem[_7554]
                    require mem[_7554] == mem[_7554 + 12 len 20]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7420))
                    staticcall address(_7420).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7254 + 128] = mem[_7753]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7578))
                    staticcall address(_7578).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7254 + 160] = mem[_7919]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8055 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _8104 = mem[_8055]
                    require mem[_8055] == mem[_8055 + 18 len 14]
                    _8193 = mem[_8055 + 32]
                    require mem[_8055 + 32] == mem[_8055 + 50 len 14]
                    require mem[_8055 + 64] == mem[_8055 + 92 len 4]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8385] == mem[_8385 + 12 len 20]
                    if address(arg2) == mem[_8385 + 12 len 20]:
                        if Mask(112, 0, _8104) != 0:
                            if Mask(112, 0, _8193):
                                require Mask(112, 0, _8193)
                                mem[_7254 + 96] = 10^18 * Mask(112, 0, _8104) / Mask(112, 0, _8193)
                        mem[_7254 + 32] = Mask(112, 0, _8104)
                        mem[_7254 + 64] = Mask(112, 0, _8193)
                        mem[_7254] = address(_7039)
                        if Mask(112, 0, _8104) != mem[_7254 + 128]:
                            mem[_7254 + 192] = 0
                        else:
                            if Mask(112, 0, _8193) == mem[_7254 + 160]:
                                mem[_7254 + 192] = 1
                            else:
                                mem[_7254 + 192] = 0
                    else:
                        if Mask(112, 0, _8193) != 0:
                            if Mask(112, 0, _8104):
                                require Mask(112, 0, _8104)
                                mem[_7254 + 96] = 10^18 * Mask(112, 0, _8193) / Mask(112, 0, _8104)
                        mem[_7254 + 32] = Mask(112, 0, _8193)
                        mem[_7254 + 64] = Mask(112, 0, _8104)
                        mem[_7254] = address(_7039)
                        if Mask(112, 0, _8193) != mem[_7254 + 128]:
                            mem[_7254 + 192] = 0
                        else:
                            if Mask(112, 0, _8104) == mem[_7254 + 160]:
                                mem[_7254 + 192] = 1
                            else:
                                mem[_7254 + 192] = 0
                else:
                    staticcall address(_7039).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7398 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7421 = mem[_7398]
                    require mem[_7398] == mem[_7398 + 12 len 20]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7579 = mem[_7555]
                    require mem[_7555] == mem[_7555 + 12 len 20]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7421))
                    staticcall address(_7421).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7254 + 128] = mem[_7774]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7579))
                    staticcall address(_7579).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7254 + 160] = mem[_7942]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _8138 = mem[_8080]
                    require mem[_8080] == mem[_8080 + 18 len 14]
                    _8218 = mem[_8080 + 32]
                    require mem[_8080 + 32] == mem[_8080 + 50 len 14]
                    require mem[_8080 + 64] == mem[_8080 + 92 len 4]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8410] == mem[_8410 + 12 len 20]
                    if address(arg2) == mem[_8410 + 12 len 20]:
                        if Mask(112, 0, _8138) != 0:
                            if Mask(112, 0, _8218):
                                require Mask(112, 0, _8218)
                                mem[_7254 + 96] = 10^18 * Mask(112, 0, _8138) / Mask(112, 0, _8218)
                        mem[_7254 + 32] = Mask(112, 0, _8138)
                        mem[_7254 + 64] = Mask(112, 0, _8218)
                        mem[_7254] = address(_7039)
                        if Mask(112, 0, _8138) != mem[_7254 + 128]:
                            mem[_7254 + 192] = 0
                        else:
                            if Mask(112, 0, _8218) == mem[_7254 + 160]:
                                mem[_7254 + 192] = 1
                            else:
                                mem[_7254 + 192] = 0
                    else:
                        if Mask(112, 0, _8218) != 0:
                            if Mask(112, 0, _8138):
                                require Mask(112, 0, _8138)
                                mem[_7254 + 96] = 10^18 * Mask(112, 0, _8218) / Mask(112, 0, _8138)
                        mem[_7254 + 32] = Mask(112, 0, _8218)
                        mem[_7254 + 64] = Mask(112, 0, _8138)
                        mem[_7254] = address(_7039)
                        if Mask(112, 0, _8218) != mem[_7254 + 128]:
                            mem[_7254 + 192] = 0
                        else:
                            if Mask(112, 0, _8138) == mem[_7254 + 160]:
                                mem[_7254 + 192] = 1
                            else:
                                mem[_7254 + 192] = 0
                require s < mem[_3594]
                mem[(32 * s) + _3594 + 32] = _7254
            else:
                require ext_code.size(address(_7039))
                staticcall address(_7039).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7255] == mem[_7255 + 12 len 20]
                if mem[_7255 + 12 len 20] != address(arg2):
                    _7015 = mem[ceil32(return_data.size) + 96]
                    idx = idx + 1
                    s = s
                    continue 
                _7339 = mem[64]
                mem[64] = mem[64] + 224
                mem[_7339] = 0
                mem[_7339 + 32] = 0
                mem[_7339 + 64] = 0
                mem[_7339 + 96] = 0
                mem[_7339 + 128] = 0
                mem[_7339 + 160] = 0
                mem[_7339 + 192] = 0
                require ext_code.size(address(_7039))
                staticcall address(_7039).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7399] == mem[_7399 + 12 len 20]
                require ext_code.size(address(_7039))
                if address(arg2) == mem[_7399 + 12 len 20]:
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7566 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7610 = mem[_7566]
                    require mem[_7566] == mem[_7566 + 12 len 20]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7775 = mem[_7746]
                    require mem[_7746] == mem[_7746 + 12 len 20]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7610))
                    staticcall address(_7610).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7962 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7339 + 128] = mem[_7962]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7775))
                    staticcall address(_7775).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7339 + 160] = mem[_8164]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8298 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _8357 = mem[_8298]
                    require mem[_8298] == mem[_8298 + 18 len 14]
                    _8435 = mem[_8298 + 32]
                    require mem[_8298 + 32] == mem[_8298 + 50 len 14]
                    require mem[_8298 + 64] == mem[_8298 + 92 len 4]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8569 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8569] == mem[_8569 + 12 len 20]
                    if address(arg2) == mem[_8569 + 12 len 20]:
                        if Mask(112, 0, _8357) != 0:
                            if Mask(112, 0, _8435):
                                require Mask(112, 0, _8435)
                                mem[_7339 + 96] = 10^18 * Mask(112, 0, _8357) / Mask(112, 0, _8435)
                        mem[_7339 + 32] = Mask(112, 0, _8357)
                        mem[_7339 + 64] = Mask(112, 0, _8435)
                        mem[_7339] = address(_7039)
                        if Mask(112, 0, _8357) != mem[_7339 + 128]:
                            mem[_7339 + 192] = 0
                        else:
                            if Mask(112, 0, _8435) == mem[_7339 + 160]:
                                mem[_7339 + 192] = 1
                            else:
                                mem[_7339 + 192] = 0
                    else:
                        if Mask(112, 0, _8435) != 0:
                            if Mask(112, 0, _8357):
                                require Mask(112, 0, _8357)
                                mem[_7339 + 96] = 10^18 * Mask(112, 0, _8435) / Mask(112, 0, _8357)
                        mem[_7339 + 32] = Mask(112, 0, _8435)
                        mem[_7339 + 64] = Mask(112, 0, _8357)
                        mem[_7339] = address(_7039)
                        if Mask(112, 0, _8435) != mem[_7339 + 128]:
                            mem[_7339 + 192] = 0
                        else:
                            if Mask(112, 0, _8357) == mem[_7339 + 160]:
                                mem[_7339 + 192] = 1
                            else:
                                mem[_7339 + 192] = 0
                else:
                    staticcall address(_7039).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7611 = mem[_7567]
                    require mem[_7567] == mem[_7567 + 12 len 20]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7776 = mem[_7747]
                    require mem[_7747] == mem[_7747 + 12 len 20]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7611))
                    staticcall address(_7611).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7339 + 128] = mem[_7997]
                    mem[mem[64] + 4] = address(_7039)
                    require ext_code.size(address(_7776))
                    staticcall address(_7776).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(_7039)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_7339 + 160] = mem[_8194]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8327 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _8386 = mem[_8327]
                    require mem[_8327] == mem[_8327 + 18 len 14]
                    _8464 = mem[_8327 + 32]
                    require mem[_8327 + 32] == mem[_8327 + 50 len 14]
                    require mem[_8327 + 64] == mem[_8327 + 92 len 4]
                    require ext_code.size(address(_7039))
                    staticcall address(_7039).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8592 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8592] == mem[_8592 + 12 len 20]
                    if address(arg2) == mem[_8592 + 12 len 20]:
                        if Mask(112, 0, _8386) != 0:
                            if Mask(112, 0, _8464):
                                require Mask(112, 0, _8464)
                                mem[_7339 + 96] = 10^18 * Mask(112, 0, _8386) / Mask(112, 0, _8464)
                        mem[_7339 + 32] = Mask(112, 0, _8386)
                        mem[_7339 + 64] = Mask(112, 0, _8464)
                        mem[_7339] = address(_7039)
                        if Mask(112, 0, _8386) != mem[_7339 + 128]:
                            mem[_7339 + 192] = 0
                        else:
                            if Mask(112, 0, _8464) == mem[_7339 + 160]:
                                mem[_7339 + 192] = 1
                            else:
                                mem[_7339 + 192] = 0
                    else:
                        if Mask(112, 0, _8464) != 0:
                            if Mask(112, 0, _8386):
                                require Mask(112, 0, _8386)
                                mem[_7339 + 96] = 10^18 * Mask(112, 0, _8464) / Mask(112, 0, _8386)
                        mem[_7339 + 32] = Mask(112, 0, _8464)
                        mem[_7339 + 64] = Mask(112, 0, _8386)
                        mem[_7339] = address(_7039)
                        if Mask(112, 0, _8464) != mem[_7339 + 128]:
                            mem[_7339 + 192] = 0
                        else:
                            if Mask(112, 0, _8386) == mem[_7339 + 160]:
                                mem[_7339 + 192] = 1
                            else:
                                mem[_7339 + 192] = 0
                require s < mem[_3594]
                mem[(32 * s) + _3594 + 32] = _7339
            _7015 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            s = s + 1
            continue 
        _7038 = mem[64]
        mem[mem[64]] = 32
        _7045 = mem[_3594]
        mem[mem[64] + 32] = mem[_3594]
        idx = 0
        s = _3594 + 32
        t = mem[64] + 64
        while idx < _7045:
            _10422 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_10422 + 32]
            mem[t + 64] = mem[_10422 + 64]
            mem[t + 96] = mem[_10422 + 96]
            mem[t + 128] = mem[_10422 + 128]
            mem[t + 160] = mem[_10422 + 160]
            mem[t + 192] = bool(mem[_10422 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _7038 + (224 * _7045) + -mem[64] + 64
    mem[64] = _3594 + (32 * s) + 256
    mem[_3594 + (32 * s) + 32] = 0
    mem[_3594 + (32 * s) + 64] = 0
    mem[_3594 + (32 * s) + 96] = 0
    mem[_3594 + (32 * s) + 128] = 0
    mem[_3594 + (32 * s) + 160] = 0
    mem[_3594 + (32 * s) + 192] = 0
    mem[_3594 + (32 * s) + 224] = 0
    mem[var39001] = _3594 + (32 * s) + 32
    t = var39001
    idx = var39002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[_3594 + (32 * s) + 32] = 0
        mem[_3594 + (32 * s) + 64] = 0
        mem[_3594 + (32 * s) + 96] = 0
        mem[_3594 + (32 * s) + 128] = 0
        mem[_3594 + (32 * s) + 160] = 0
        mem[_3594 + (32 * s) + 192] = 0
        mem[_3594 + (32 * s) + 224] = 0
        mem[t + 32] = _3594 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    _12121 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _12121:
        require idx < mem[ceil32(return_data.size) + 96]
        _12139 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_12217] == mem[_12217 + 12 len 20]
        if mem[_12217 + 12 len 20] == address(arg2):
            _12246 = mem[64]
            mem[64] = mem[64] + 224
            mem[_12246] = 0
            mem[_12246 + 32] = 0
            mem[_12246 + 64] = 0
            mem[_12246 + 96] = 0
            mem[_12246 + 128] = 0
            mem[_12246 + 160] = 0
            mem[_12246 + 192] = 0
            require ext_code.size(address(_12139))
            staticcall address(_12139).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12271] == mem[_12271 + 12 len 20]
            require ext_code.size(address(_12139))
            if address(arg2) == mem[_12271 + 12 len 20]:
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12335 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12353 = mem[_12335]
                require mem[_12335] == mem[_12335 + 12 len 20]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12438 = mem[_12414]
                require mem[_12414] == mem[_12414 + 12 len 20]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12353))
                staticcall address(_12353).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12246 + 128] = mem[_12517]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12438))
                staticcall address(_12438).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12246 + 160] = mem[_12594]
                require ext_code.size(address(_12139))
                staticcall address(_12139).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12702 = mem[_12677]
                require mem[_12677] == mem[_12677 + 18 len 14]
                _12732 = mem[_12677 + 32]
                require mem[_12677 + 32] == mem[_12677 + 50 len 14]
                require mem[_12677 + 64] == mem[_12677 + 92 len 4]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12840 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12840] == mem[_12840 + 12 len 20]
                if address(arg2) == mem[_12840 + 12 len 20]:
                    if Mask(112, 0, _12702) != 0:
                        if Mask(112, 0, _12732):
                            require Mask(112, 0, _12732)
                            mem[_12246 + 96] = 10^18 * Mask(112, 0, _12702) / Mask(112, 0, _12732)
                    mem[_12246 + 32] = Mask(112, 0, _12702)
                    mem[_12246 + 64] = Mask(112, 0, _12732)
                    mem[_12246] = address(_12139)
                    if Mask(112, 0, _12702) != mem[_12246 + 128]:
                        mem[_12246 + 192] = 0
                    else:
                        if Mask(112, 0, _12732) == mem[_12246 + 160]:
                            mem[_12246 + 192] = 1
                        else:
                            mem[_12246 + 192] = 0
                else:
                    if Mask(112, 0, _12732) != 0:
                        if Mask(112, 0, _12702):
                            require Mask(112, 0, _12702)
                            mem[_12246 + 96] = 10^18 * Mask(112, 0, _12732) / Mask(112, 0, _12702)
                    mem[_12246 + 32] = Mask(112, 0, _12732)
                    mem[_12246 + 64] = Mask(112, 0, _12702)
                    mem[_12246] = address(_12139)
                    if Mask(112, 0, _12732) != mem[_12246 + 128]:
                        mem[_12246 + 192] = 0
                    else:
                        if Mask(112, 0, _12702) == mem[_12246 + 160]:
                            mem[_12246 + 192] = 1
                        else:
                            mem[_12246 + 192] = 0
            else:
                staticcall address(_12139).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12336 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12354 = mem[_12336]
                require mem[_12336] == mem[_12336 + 12 len 20]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12439 = mem[_12415]
                require mem[_12415] == mem[_12415 + 12 len 20]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12354))
                staticcall address(_12354).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12533 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12246 + 128] = mem[_12533]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12439))
                staticcall address(_12439).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12246 + 160] = mem[_12606]
                require ext_code.size(address(_12139))
                staticcall address(_12139).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12690 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12714 = mem[_12690]
                require mem[_12690] == mem[_12690 + 18 len 14]
                _12744 = mem[_12690 + 32]
                require mem[_12690 + 32] == mem[_12690 + 50 len 14]
                require mem[_12690 + 64] == mem[_12690 + 92 len 4]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12847] == mem[_12847 + 12 len 20]
                if address(arg2) == mem[_12847 + 12 len 20]:
                    if Mask(112, 0, _12714) != 0:
                        if Mask(112, 0, _12744):
                            require Mask(112, 0, _12744)
                            mem[_12246 + 96] = 10^18 * Mask(112, 0, _12714) / Mask(112, 0, _12744)
                    mem[_12246 + 32] = Mask(112, 0, _12714)
                    mem[_12246 + 64] = Mask(112, 0, _12744)
                    mem[_12246] = address(_12139)
                    if Mask(112, 0, _12714) != mem[_12246 + 128]:
                        mem[_12246 + 192] = 0
                    else:
                        if Mask(112, 0, _12744) == mem[_12246 + 160]:
                            mem[_12246 + 192] = 1
                        else:
                            mem[_12246 + 192] = 0
                else:
                    if Mask(112, 0, _12744) != 0:
                        if Mask(112, 0, _12714):
                            require Mask(112, 0, _12714)
                            mem[_12246 + 96] = 10^18 * Mask(112, 0, _12744) / Mask(112, 0, _12714)
                    mem[_12246 + 32] = Mask(112, 0, _12744)
                    mem[_12246 + 64] = Mask(112, 0, _12714)
                    mem[_12246] = address(_12139)
                    if Mask(112, 0, _12744) != mem[_12246 + 128]:
                        mem[_12246 + 192] = 0
                    else:
                        if Mask(112, 0, _12714) == mem[_12246 + 160]:
                            mem[_12246 + 192] = 1
                        else:
                            mem[_12246 + 192] = 0
            require s < mem[_3594]
            mem[(32 * s) + _3594 + 32] = _12246
        else:
            require ext_code.size(address(_12139))
            staticcall address(_12139).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12247] == mem[_12247 + 12 len 20]
            if mem[_12247 + 12 len 20] != address(arg2):
                _12121 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                s = s
                continue 
            _12283 = mem[64]
            mem[64] = mem[64] + 224
            mem[_12283] = 0
            mem[_12283 + 32] = 0
            mem[_12283 + 64] = 0
            mem[_12283 + 96] = 0
            mem[_12283 + 128] = 0
            mem[_12283 + 160] = 0
            mem[_12283 + 192] = 0
            require ext_code.size(address(_12139))
            staticcall address(_12139).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12337] == mem[_12337 + 12 len 20]
            require ext_code.size(address(_12139))
            if address(arg2) == mem[_12337 + 12 len 20]:
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12450 = mem[_12426]
                require mem[_12426] == mem[_12426 + 12 len 20]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12510 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12534 = mem[_12510]
                require mem[_12510] == mem[_12510 + 12 len 20]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12450))
                staticcall address(_12450).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12283 + 128] = mem[_12619]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12534))
                staticcall address(_12534).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12721 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12283 + 160] = mem[_12721]
                require ext_code.size(address(_12139))
                staticcall address(_12139).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12793 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12829 = mem[_12793]
                require mem[_12793] == mem[_12793 + 18 len 14]
                _12859 = mem[_12793 + 32]
                require mem[_12793 + 32] == mem[_12793 + 50 len 14]
                require mem[_12793 + 64] == mem[_12793 + 92 len 4]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12913 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12913] == mem[_12913 + 12 len 20]
                if address(arg2) == mem[_12913 + 12 len 20]:
                    if Mask(112, 0, _12829) != 0:
                        if Mask(112, 0, _12859):
                            require Mask(112, 0, _12859)
                            mem[_12283 + 96] = 10^18 * Mask(112, 0, _12829) / Mask(112, 0, _12859)
                    mem[_12283 + 32] = Mask(112, 0, _12829)
                    mem[_12283 + 64] = Mask(112, 0, _12859)
                    mem[_12283] = address(_12139)
                    if Mask(112, 0, _12829) != mem[_12283 + 128]:
                        mem[_12283 + 192] = 0
                    else:
                        if Mask(112, 0, _12859) == mem[_12283 + 160]:
                            mem[_12283 + 192] = 1
                        else:
                            mem[_12283 + 192] = 0
                else:
                    if Mask(112, 0, _12859) != 0:
                        if Mask(112, 0, _12829):
                            require Mask(112, 0, _12829)
                            mem[_12283 + 96] = 10^18 * Mask(112, 0, _12859) / Mask(112, 0, _12829)
                    mem[_12283 + 32] = Mask(112, 0, _12859)
                    mem[_12283 + 64] = Mask(112, 0, _12829)
                    mem[_12283] = address(_12139)
                    if Mask(112, 0, _12859) != mem[_12283 + 128]:
                        mem[_12283 + 192] = 0
                    else:
                        if Mask(112, 0, _12829) == mem[_12283 + 160]:
                            mem[_12283 + 192] = 1
                        else:
                            mem[_12283 + 192] = 0
            else:
                staticcall address(_12139).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12451 = mem[_12427]
                require mem[_12427] == mem[_12427 + 12 len 20]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12511 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12535 = mem[_12511]
                require mem[_12511] == mem[_12511 + 12 len 20]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12451))
                staticcall address(_12451).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12643 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12283 + 128] = mem[_12643]
                mem[mem[64] + 4] = address(_12139)
                require ext_code.size(address(_12535))
                staticcall address(_12535).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(_12139)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_12283 + 160] = mem[_12733]
                require ext_code.size(address(_12139))
                staticcall address(_12139).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12811 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12841 = mem[_12811]
                require mem[_12811] == mem[_12811 + 18 len 14]
                _12871 = mem[_12811 + 32]
                require mem[_12811 + 32] == mem[_12811 + 50 len 14]
                require mem[_12811 + 64] == mem[_12811 + 92 len 4]
                require ext_code.size(address(_12139))
                staticcall address(_12139).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12931] == mem[_12931 + 12 len 20]
                if address(arg2) == mem[_12931 + 12 len 20]:
                    if Mask(112, 0, _12841) != 0:
                        if Mask(112, 0, _12871):
                            require Mask(112, 0, _12871)
                            mem[_12283 + 96] = 10^18 * Mask(112, 0, _12841) / Mask(112, 0, _12871)
                    mem[_12283 + 32] = Mask(112, 0, _12841)
                    mem[_12283 + 64] = Mask(112, 0, _12871)
                    mem[_12283] = address(_12139)
                    if Mask(112, 0, _12841) != mem[_12283 + 128]:
                        mem[_12283 + 192] = 0
                    else:
                        if Mask(112, 0, _12871) == mem[_12283 + 160]:
                            mem[_12283 + 192] = 1
                        else:
                            mem[_12283 + 192] = 0
                else:
                    if Mask(112, 0, _12871) != 0:
                        if Mask(112, 0, _12841):
                            require Mask(112, 0, _12841)
                            mem[_12283 + 96] = 10^18 * Mask(112, 0, _12871) / Mask(112, 0, _12841)
                    mem[_12283 + 32] = Mask(112, 0, _12871)
                    mem[_12283 + 64] = Mask(112, 0, _12841)
                    mem[_12283] = address(_12139)
                    if Mask(112, 0, _12871) != mem[_12283 + 128]:
                        mem[_12283 + 192] = 0
                    else:
                        if Mask(112, 0, _12841) == mem[_12283 + 160]:
                            mem[_12283 + 192] = 1
                        else:
                            mem[_12283 + 192] = 0
            require s < mem[_3594]
            mem[(32 * s) + _3594 + 32] = _12283
        _12121 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        s = s + 1
        continue 
    _12138 = mem[64]
    mem[mem[64]] = 32
    _12145 = mem[_3594]
    mem[mem[64] + 32] = mem[_3594]
    idx = 0
    s = _3594 + 32
    t = mem[64] + 64
    while idx < _12145:
        _13836 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_13836 + 32]
        mem[t + 64] = mem[_13836 + 64]
        mem[t + 96] = mem[_13836 + 96]
        mem[t + 128] = mem[_13836 + 128]
        mem[t + 160] = mem[_13836 + 160]
        mem[t + 192] = bool(mem[_13836 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _12138 + (224 * _12145) + -mem[64] + 64
}



}
