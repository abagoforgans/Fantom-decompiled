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
    if not ext_call.return_data[0]:
        if (2 * arg2) + arg3 <= ext_call.return_data[0]:
            require arg2 + arg3 <= test266151307()
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = arg2 + arg3
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + (32 * arg2 + arg3) + 160
            if not arg2 + arg3:
                idx = arg2
                while idx < arg2 + arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_115] == mem[_115 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_115 + 12 len 20]
                    idx = idx + 1
                    continue 
                _90 = mem[64]
                mem[mem[64]] = block.number
                mem[mem[64] + 32] = 64
                _98 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = mem[64] + 96
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                while idx < _98:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _90 + (32 * _98) + -mem[64] + 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * arg2 + arg3] = call.data[calldata.size len 32 * arg2 + arg3]
            idx = arg2
            while idx < arg2 + arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_117] == mem[_117 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_117 + 12 len 20]
                idx = idx + 1
                continue 
            _91 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _100 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = mem[64] + 96
            t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            while idx < _100:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _91 + (32 * _100) + -mem[64] + 96
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
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
                _119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_119] == mem[_119 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_119 + 12 len 20]
                idx = idx + 1
                continue 
            _92 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _102 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = mem[64] + 96
            t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            while idx < _102:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _92 + (32 * _102) + -mem[64] + 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
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
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_121] == mem[_121 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_121 + 12 len 20]
            idx = idx + 1
            continue 
        _93 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _104 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        while idx < _104:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _93 + (32 * _104) + -mem[64] + 96
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if (2 * arg2) + arg3 <= ext_call.return_data[0]:
        require arg2 + arg3 <= test266151307()
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = arg2 + arg3
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + (32 * arg2 + arg3) + 160
        if not arg2 + arg3:
            idx = arg2
            while idx < arg2 + arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_123] == mem[_123 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_123 + 12 len 20]
                idx = idx + 1
                continue 
            _94 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _106 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = mem[64] + 96
            t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            while idx < _106:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _94 + (32 * _106) + -mem[64] + 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * arg2 + arg3] = call.data[calldata.size len 32 * arg2 + arg3]
        idx = arg2
        while idx < arg2 + arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_125] == mem[_125 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_125 + 12 len 20]
            idx = idx + 1
            continue 
        _95 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _108 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        while idx < _108:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _95 + (32 * _108) + -mem[64] + 96
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
    if not ext_call.return_data[0]:
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
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_127] == mem[_127 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_127 + 12 len 20]
            idx = idx + 1
            continue 
        _96 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _110 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = mem[64] + 96
        t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        while idx < _110:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _96 + (32 * _110) + -mem[64] + 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
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
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_129] == mem[_129 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_129 + 12 len 20]
        idx = idx + 1
        continue 
    _97 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = 64
    _112 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    idx = 0
    s = mem[64] + 96
    t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
    while idx < _112:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _97 + (32 * _112) + -mem[64] + 96
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
    if not ext_call.return_data[0]:
        if (2 * arg2) + arg3 <= ext_call.return_data[0]:
            require arg2 + arg3 <= test266151307()
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = arg2 + arg3
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + (32 * arg2 + arg3) + 160
            if not arg2 + arg3:
                idx = arg2
                while idx < arg2 + arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_436] == mem[_436 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_436 + 12 len 20]
                    idx = idx + 1
                    continue 
                _794 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                while idx < _794:
                    require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    _811 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _883 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_883] == mem[_883 + 12 len 20]
                    if mem[_883 + 12 len 20] == WFTMAddress:
                        _922 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_922] = 0
                        mem[_922 + 32] = 0
                        mem[_922 + 64] = 0
                        require ext_code.size(address(_811))
                        staticcall address(_811).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _962 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _970 = mem[_962]
                        require mem[_962] == mem[_962 + 18 len 14]
                        _978 = mem[_962 + 32]
                        require mem[_962 + 32] == mem[_962 + 50 len 14]
                        require mem[_962 + 64] == mem[_962 + 92 len 4]
                        require ext_code.size(address(_811))
                        staticcall address(_811).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1050 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1050] == mem[_1050 + 12 len 20]
                        if mem[_1050 + 12 len 20] == WFTMAddress:
                            require Mask(112, 0, _978)
                            mem[_922] = Mask(112, 0, _970)
                            mem[_922 + 32] = Mask(112, 0, _978)
                            mem[_922 + 64] = 10^18 * Mask(112, 0, _970) / Mask(112, 0, _978)
                        else:
                            require Mask(112, 0, _970)
                            mem[_922] = Mask(112, 0, _978)
                            mem[_922 + 32] = Mask(112, 0, _970)
                            mem[_922 + 64] = 10^18 * Mask(112, 0, _978) / Mask(112, 0, _970)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _922
                    else:
                        require ext_code.size(address(_811))
                        staticcall address(_811).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _923 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_923] == mem[_923 + 12 len 20]
                        if mem[_923 + 12 len 20] == WFTMAddress:
                            _986 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_986] = 0
                            mem[_986 + 32] = 0
                            mem[_986 + 64] = 0
                            require ext_code.size(address(_811))
                            staticcall address(_811).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1018 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1042 = mem[_1018]
                            require mem[_1018] == mem[_1018 + 18 len 14]
                            _1059 = mem[_1018 + 32]
                            require mem[_1018 + 32] == mem[_1018 + 50 len 14]
                            require mem[_1018 + 64] == mem[_1018 + 92 len 4]
                            require ext_code.size(address(_811))
                            staticcall address(_811).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1100 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1100] == mem[_1100 + 12 len 20]
                            if mem[_1100 + 12 len 20] == WFTMAddress:
                                require Mask(112, 0, _1059)
                                mem[_986] = Mask(112, 0, _1042)
                                mem[_986 + 32] = Mask(112, 0, _1059)
                                mem[_986 + 64] = 10^18 * Mask(112, 0, _1042) / Mask(112, 0, _1059)
                            else:
                                require Mask(112, 0, _1042)
                                mem[_986] = Mask(112, 0, _1059)
                                mem[_986 + 32] = Mask(112, 0, _1042)
                                mem[_986 + 64] = 10^18 * Mask(112, 0, _1059) / Mask(112, 0, _1042)
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _986
                    _794 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                    idx = idx + 1
                    continue 
                _810 = mem[64]
                mem[mem[64]] = 32
                _826 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _826:
                    _1146 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1146 + 32]
                    mem[t + 64] = mem[_1146 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _810 + (96 * _826) + -mem[64] + 64
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * arg2 + arg3] = call.data[calldata.size len 32 * arg2 + arg3]
            idx = arg2
            while idx < arg2 + arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_439] == mem[_439 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_439 + 12 len 20]
                idx = idx + 1
                continue 
            _795 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            while idx < _795:
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                _813 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _885 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_885] == mem[_885 + 12 len 20]
                if mem[_885 + 12 len 20] == WFTMAddress:
                    _924 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_924] = 0
                    mem[_924 + 32] = 0
                    mem[_924 + 64] = 0
                    require ext_code.size(address(_813))
                    staticcall address(_813).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _963 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _971 = mem[_963]
                    require mem[_963] == mem[_963 + 18 len 14]
                    _979 = mem[_963 + 32]
                    require mem[_963 + 32] == mem[_963 + 50 len 14]
                    require mem[_963 + 64] == mem[_963 + 92 len 4]
                    require ext_code.size(address(_813))
                    staticcall address(_813).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1051 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1051] == mem[_1051 + 12 len 20]
                    if mem[_1051 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _979)
                        mem[_924] = Mask(112, 0, _971)
                        mem[_924 + 32] = Mask(112, 0, _979)
                        mem[_924 + 64] = 10^18 * Mask(112, 0, _971) / Mask(112, 0, _979)
                    else:
                        require Mask(112, 0, _971)
                        mem[_924] = Mask(112, 0, _979)
                        mem[_924 + 32] = Mask(112, 0, _971)
                        mem[_924 + 64] = 10^18 * Mask(112, 0, _979) / Mask(112, 0, _971)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _924
                else:
                    require ext_code.size(address(_813))
                    staticcall address(_813).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _925 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_925] == mem[_925 + 12 len 20]
                    if mem[_925 + 12 len 20] == WFTMAddress:
                        _987 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_987] = 0
                        mem[_987 + 32] = 0
                        mem[_987 + 64] = 0
                        require ext_code.size(address(_813))
                        staticcall address(_813).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1019 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1043 = mem[_1019]
                        require mem[_1019] == mem[_1019 + 18 len 14]
                        _1061 = mem[_1019 + 32]
                        require mem[_1019 + 32] == mem[_1019 + 50 len 14]
                        require mem[_1019 + 64] == mem[_1019 + 92 len 4]
                        require ext_code.size(address(_813))
                        staticcall address(_813).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1103 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1103] == mem[_1103 + 12 len 20]
                        if mem[_1103 + 12 len 20] == WFTMAddress:
                            require Mask(112, 0, _1061)
                            mem[_987] = Mask(112, 0, _1043)
                            mem[_987 + 32] = Mask(112, 0, _1061)
                            mem[_987 + 64] = 10^18 * Mask(112, 0, _1043) / Mask(112, 0, _1061)
                        else:
                            require Mask(112, 0, _1043)
                            mem[_987] = Mask(112, 0, _1061)
                            mem[_987 + 32] = Mask(112, 0, _1043)
                            mem[_987 + 64] = 10^18 * Mask(112, 0, _1061) / Mask(112, 0, _1043)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _987
                _795 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = idx + 1
                continue 
            _812 = mem[64]
            mem[mem[64]] = 32
            _827 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _827:
                _1150 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1150 + 32]
                mem[t + 64] = mem[_1150 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _812 + (96 * _827) + -mem[64] + 64
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
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
                _442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_442] == mem[_442 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_442 + 12 len 20]
                idx = idx + 1
                continue 
            _796 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            while idx < _796:
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                _815 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _887 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_887] == mem[_887 + 12 len 20]
                if mem[_887 + 12 len 20] == WFTMAddress:
                    _926 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_926] = 0
                    mem[_926 + 32] = 0
                    mem[_926 + 64] = 0
                    require ext_code.size(address(_815))
                    staticcall address(_815).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _972 = mem[_964]
                    require mem[_964] == mem[_964 + 18 len 14]
                    _980 = mem[_964 + 32]
                    require mem[_964 + 32] == mem[_964 + 50 len 14]
                    require mem[_964 + 64] == mem[_964 + 92 len 4]
                    require ext_code.size(address(_815))
                    staticcall address(_815).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1052 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1052] == mem[_1052 + 12 len 20]
                    if mem[_1052 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _980)
                        mem[_926] = Mask(112, 0, _972)
                        mem[_926 + 32] = Mask(112, 0, _980)
                        mem[_926 + 64] = 10^18 * Mask(112, 0, _972) / Mask(112, 0, _980)
                    else:
                        require Mask(112, 0, _972)
                        mem[_926] = Mask(112, 0, _980)
                        mem[_926 + 32] = Mask(112, 0, _972)
                        mem[_926 + 64] = 10^18 * Mask(112, 0, _980) / Mask(112, 0, _972)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _926
                else:
                    require ext_code.size(address(_815))
                    staticcall address(_815).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _927 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_927] == mem[_927 + 12 len 20]
                    if mem[_927 + 12 len 20] == WFTMAddress:
                        _988 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_988] = 0
                        mem[_988 + 32] = 0
                        mem[_988 + 64] = 0
                        require ext_code.size(address(_815))
                        staticcall address(_815).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1044 = mem[_1020]
                        require mem[_1020] == mem[_1020 + 18 len 14]
                        _1063 = mem[_1020 + 32]
                        require mem[_1020 + 32] == mem[_1020 + 50 len 14]
                        require mem[_1020 + 64] == mem[_1020 + 92 len 4]
                        require ext_code.size(address(_815))
                        staticcall address(_815).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1106] == mem[_1106 + 12 len 20]
                        if mem[_1106 + 12 len 20] == WFTMAddress:
                            require Mask(112, 0, _1063)
                            mem[_988] = Mask(112, 0, _1044)
                            mem[_988 + 32] = Mask(112, 0, _1063)
                            mem[_988 + 64] = 10^18 * Mask(112, 0, _1044) / Mask(112, 0, _1063)
                        else:
                            require Mask(112, 0, _1044)
                            mem[_988] = Mask(112, 0, _1063)
                            mem[_988 + 32] = Mask(112, 0, _1044)
                            mem[_988 + 64] = 10^18 * Mask(112, 0, _1063) / Mask(112, 0, _1044)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _988
                _796 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = idx + 1
                continue 
            _814 = mem[64]
            mem[mem[64]] = 32
            _828 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _828:
                _1154 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1154 + 32]
                mem[t + 64] = mem[_1154 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _814 + (96 * _828) + -mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
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
            _445 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_445] == mem[_445 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_445 + 12 len 20]
            idx = idx + 1
            continue 
        _797 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        while idx < _797:
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            _817 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _889 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_889] == mem[_889 + 12 len 20]
            if mem[_889 + 12 len 20] == WFTMAddress:
                _928 = mem[64]
                mem[64] = mem[64] + 96
                mem[_928] = 0
                mem[_928 + 32] = 0
                mem[_928 + 64] = 0
                require ext_code.size(address(_817))
                staticcall address(_817).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _965 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _973 = mem[_965]
                require mem[_965] == mem[_965 + 18 len 14]
                _981 = mem[_965 + 32]
                require mem[_965 + 32] == mem[_965 + 50 len 14]
                require mem[_965 + 64] == mem[_965 + 92 len 4]
                require ext_code.size(address(_817))
                staticcall address(_817).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1053 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1053] == mem[_1053 + 12 len 20]
                if mem[_1053 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _981)
                    mem[_928] = Mask(112, 0, _973)
                    mem[_928 + 32] = Mask(112, 0, _981)
                    mem[_928 + 64] = 10^18 * Mask(112, 0, _973) / Mask(112, 0, _981)
                else:
                    require Mask(112, 0, _973)
                    mem[_928] = Mask(112, 0, _981)
                    mem[_928 + 32] = Mask(112, 0, _973)
                    mem[_928 + 64] = 10^18 * Mask(112, 0, _981) / Mask(112, 0, _973)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _928
            else:
                require ext_code.size(address(_817))
                staticcall address(_817).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _929 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_929] == mem[_929 + 12 len 20]
                if mem[_929 + 12 len 20] == WFTMAddress:
                    _989 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_989] = 0
                    mem[_989 + 32] = 0
                    mem[_989 + 64] = 0
                    require ext_code.size(address(_817))
                    staticcall address(_817).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1021 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1045 = mem[_1021]
                    require mem[_1021] == mem[_1021 + 18 len 14]
                    _1065 = mem[_1021 + 32]
                    require mem[_1021 + 32] == mem[_1021 + 50 len 14]
                    require mem[_1021 + 64] == mem[_1021 + 92 len 4]
                    require ext_code.size(address(_817))
                    staticcall address(_817).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1109 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1109] == mem[_1109 + 12 len 20]
                    if mem[_1109 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _1065)
                        mem[_989] = Mask(112, 0, _1045)
                        mem[_989 + 32] = Mask(112, 0, _1065)
                        mem[_989 + 64] = 10^18 * Mask(112, 0, _1045) / Mask(112, 0, _1065)
                    else:
                        require Mask(112, 0, _1045)
                        mem[_989] = Mask(112, 0, _1065)
                        mem[_989 + 32] = Mask(112, 0, _1045)
                        mem[_989 + 64] = 10^18 * Mask(112, 0, _1065) / Mask(112, 0, _1045)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _989
            _797 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = idx + 1
            continue 
        _816 = mem[64]
        mem[mem[64]] = 32
        _829 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _829:
            _1158 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1158 + 32]
            mem[t + 64] = mem[_1158 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _816 + (96 * _829) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if (2 * arg2) + arg3 <= ext_call.return_data[0]:
        require arg2 + arg3 <= test266151307()
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = arg2 + arg3
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + (32 * arg2 + arg3) + 160
        if not arg2 + arg3:
            idx = arg2
            while idx < arg2 + arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_448] == mem[_448 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_448 + 12 len 20]
                idx = idx + 1
                continue 
            _798 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            while idx < _798:
                require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                _819 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _891 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_891] == mem[_891 + 12 len 20]
                if mem[_891 + 12 len 20] == WFTMAddress:
                    _930 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_930] = 0
                    mem[_930 + 32] = 0
                    mem[_930 + 64] = 0
                    require ext_code.size(address(_819))
                    staticcall address(_819).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _974 = mem[_966]
                    require mem[_966] == mem[_966 + 18 len 14]
                    _982 = mem[_966 + 32]
                    require mem[_966 + 32] == mem[_966 + 50 len 14]
                    require mem[_966 + 64] == mem[_966 + 92 len 4]
                    require ext_code.size(address(_819))
                    staticcall address(_819).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1054 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1054] == mem[_1054 + 12 len 20]
                    if mem[_1054 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _982)
                        mem[_930] = Mask(112, 0, _974)
                        mem[_930 + 32] = Mask(112, 0, _982)
                        mem[_930 + 64] = 10^18 * Mask(112, 0, _974) / Mask(112, 0, _982)
                    else:
                        require Mask(112, 0, _974)
                        mem[_930] = Mask(112, 0, _982)
                        mem[_930 + 32] = Mask(112, 0, _974)
                        mem[_930 + 64] = 10^18 * Mask(112, 0, _982) / Mask(112, 0, _974)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _930
                else:
                    require ext_code.size(address(_819))
                    staticcall address(_819).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_931] == mem[_931 + 12 len 20]
                    if mem[_931 + 12 len 20] == WFTMAddress:
                        _990 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_990] = 0
                        mem[_990 + 32] = 0
                        mem[_990 + 64] = 0
                        require ext_code.size(address(_819))
                        staticcall address(_819).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1022 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1046 = mem[_1022]
                        require mem[_1022] == mem[_1022 + 18 len 14]
                        _1067 = mem[_1022 + 32]
                        require mem[_1022 + 32] == mem[_1022 + 50 len 14]
                        require mem[_1022 + 64] == mem[_1022 + 92 len 4]
                        require ext_code.size(address(_819))
                        staticcall address(_819).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1112 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1112] == mem[_1112 + 12 len 20]
                        if mem[_1112 + 12 len 20] == WFTMAddress:
                            require Mask(112, 0, _1067)
                            mem[_990] = Mask(112, 0, _1046)
                            mem[_990 + 32] = Mask(112, 0, _1067)
                            mem[_990 + 64] = 10^18 * Mask(112, 0, _1046) / Mask(112, 0, _1067)
                        else:
                            require Mask(112, 0, _1046)
                            mem[_990] = Mask(112, 0, _1067)
                            mem[_990 + 32] = Mask(112, 0, _1046)
                            mem[_990 + 64] = 10^18 * Mask(112, 0, _1067) / Mask(112, 0, _1046)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _990
                _798 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = idx + 1
                continue 
            _818 = mem[64]
            mem[mem[64]] = 32
            _830 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _830:
                _1162 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1162 + 32]
                mem[t + 64] = mem[_1162 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _818 + (96 * _830) + -mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * arg2 + arg3] = call.data[calldata.size len 32 * arg2 + arg3]
        idx = arg2
        while idx < arg2 + arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _451 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_451] == mem[_451 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_451 + 12 len 20]
            idx = idx + 1
            continue 
        _799 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        while idx < _799:
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            _821 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _893 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_893] == mem[_893 + 12 len 20]
            if mem[_893 + 12 len 20] == WFTMAddress:
                _932 = mem[64]
                mem[64] = mem[64] + 96
                mem[_932] = 0
                mem[_932 + 32] = 0
                mem[_932 + 64] = 0
                require ext_code.size(address(_821))
                staticcall address(_821).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _967 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _975 = mem[_967]
                require mem[_967] == mem[_967 + 18 len 14]
                _983 = mem[_967 + 32]
                require mem[_967 + 32] == mem[_967 + 50 len 14]
                require mem[_967 + 64] == mem[_967 + 92 len 4]
                require ext_code.size(address(_821))
                staticcall address(_821).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1055 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1055] == mem[_1055 + 12 len 20]
                if mem[_1055 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _983)
                    mem[_932] = Mask(112, 0, _975)
                    mem[_932 + 32] = Mask(112, 0, _983)
                    mem[_932 + 64] = 10^18 * Mask(112, 0, _975) / Mask(112, 0, _983)
                else:
                    require Mask(112, 0, _975)
                    mem[_932] = Mask(112, 0, _983)
                    mem[_932 + 32] = Mask(112, 0, _975)
                    mem[_932 + 64] = 10^18 * Mask(112, 0, _983) / Mask(112, 0, _975)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _932
            else:
                require ext_code.size(address(_821))
                staticcall address(_821).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_933] == mem[_933 + 12 len 20]
                if mem[_933 + 12 len 20] == WFTMAddress:
                    _991 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_991] = 0
                    mem[_991 + 32] = 0
                    mem[_991 + 64] = 0
                    require ext_code.size(address(_821))
                    staticcall address(_821).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1023 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1047 = mem[_1023]
                    require mem[_1023] == mem[_1023 + 18 len 14]
                    _1069 = mem[_1023 + 32]
                    require mem[_1023 + 32] == mem[_1023 + 50 len 14]
                    require mem[_1023 + 64] == mem[_1023 + 92 len 4]
                    require ext_code.size(address(_821))
                    staticcall address(_821).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1115] == mem[_1115 + 12 len 20]
                    if mem[_1115 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _1069)
                        mem[_991] = Mask(112, 0, _1047)
                        mem[_991 + 32] = Mask(112, 0, _1069)
                        mem[_991 + 64] = 10^18 * Mask(112, 0, _1047) / Mask(112, 0, _1069)
                    else:
                        require Mask(112, 0, _1047)
                        mem[_991] = Mask(112, 0, _1069)
                        mem[_991 + 32] = Mask(112, 0, _1047)
                        mem[_991 + 64] = 10^18 * Mask(112, 0, _1069) / Mask(112, 0, _1047)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _991
            _799 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = idx + 1
            continue 
        _820 = mem[64]
        mem[mem[64]] = 32
        _831 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _831:
            _1166 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1166 + 32]
            mem[t + 64] = mem[_1166 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _820 + (96 * _831) + -mem[64] + 64
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
    if not ext_call.return_data[0]:
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
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_454] == mem[_454 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_454 + 12 len 20]
            idx = idx + 1
            continue 
        _800 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        while idx < _800:
            require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            _823 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _895 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_895] == mem[_895 + 12 len 20]
            if mem[_895 + 12 len 20] == WFTMAddress:
                _934 = mem[64]
                mem[64] = mem[64] + 96
                mem[_934] = 0
                mem[_934 + 32] = 0
                mem[_934 + 64] = 0
                require ext_code.size(address(_823))
                staticcall address(_823).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _968 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _976 = mem[_968]
                require mem[_968] == mem[_968 + 18 len 14]
                _984 = mem[_968 + 32]
                require mem[_968 + 32] == mem[_968 + 50 len 14]
                require mem[_968 + 64] == mem[_968 + 92 len 4]
                require ext_code.size(address(_823))
                staticcall address(_823).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1056 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1056] == mem[_1056 + 12 len 20]
                if mem[_1056 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _984)
                    mem[_934] = Mask(112, 0, _976)
                    mem[_934 + 32] = Mask(112, 0, _984)
                    mem[_934 + 64] = 10^18 * Mask(112, 0, _976) / Mask(112, 0, _984)
                else:
                    require Mask(112, 0, _976)
                    mem[_934] = Mask(112, 0, _984)
                    mem[_934 + 32] = Mask(112, 0, _976)
                    mem[_934 + 64] = 10^18 * Mask(112, 0, _984) / Mask(112, 0, _976)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _934
            else:
                require ext_code.size(address(_823))
                staticcall address(_823).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_935] == mem[_935 + 12 len 20]
                if mem[_935 + 12 len 20] == WFTMAddress:
                    _992 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_992] = 0
                    mem[_992 + 32] = 0
                    mem[_992 + 64] = 0
                    require ext_code.size(address(_823))
                    staticcall address(_823).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1048 = mem[_1024]
                    require mem[_1024] == mem[_1024 + 18 len 14]
                    _1071 = mem[_1024 + 32]
                    require mem[_1024 + 32] == mem[_1024 + 50 len 14]
                    require mem[_1024 + 64] == mem[_1024 + 92 len 4]
                    require ext_code.size(address(_823))
                    staticcall address(_823).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1118 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1118] == mem[_1118 + 12 len 20]
                    if mem[_1118 + 12 len 20] == WFTMAddress:
                        require Mask(112, 0, _1071)
                        mem[_992] = Mask(112, 0, _1048)
                        mem[_992 + 32] = Mask(112, 0, _1071)
                        mem[_992 + 64] = 10^18 * Mask(112, 0, _1048) / Mask(112, 0, _1071)
                    else:
                        require Mask(112, 0, _1048)
                        mem[_992] = Mask(112, 0, _1071)
                        mem[_992 + 32] = Mask(112, 0, _1048)
                        mem[_992 + 64] = 10^18 * Mask(112, 0, _1071) / Mask(112, 0, _1048)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _992
            _800 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = idx + 1
            continue 
        _822 = mem[64]
        mem[mem[64]] = 32
        _832 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _832:
            _1170 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1170 + 32]
            mem[t + 64] = mem[_1170 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _822 + (96 * _832) + -mem[64] + 64
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
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
        _457 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_457] == mem[_457 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_457 + 12 len 20]
        idx = idx + 1
        continue 
    _801 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    idx = 0
    while idx < _801:
        require idx < mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        _825 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 172 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _897 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_897] == mem[_897 + 12 len 20]
        if mem[_897 + 12 len 20] == WFTMAddress:
            _936 = mem[64]
            mem[64] = mem[64] + 96
            mem[_936] = 0
            mem[_936 + 32] = 0
            mem[_936 + 64] = 0
            require ext_code.size(address(_825))
            staticcall address(_825).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _969 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _977 = mem[_969]
            require mem[_969] == mem[_969 + 18 len 14]
            _985 = mem[_969 + 32]
            require mem[_969 + 32] == mem[_969 + 50 len 14]
            require mem[_969 + 64] == mem[_969 + 92 len 4]
            require ext_code.size(address(_825))
            staticcall address(_825).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1057 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1057] == mem[_1057 + 12 len 20]
            if mem[_1057 + 12 len 20] == WFTMAddress:
                require Mask(112, 0, _985)
                mem[_936] = Mask(112, 0, _977)
                mem[_936 + 32] = Mask(112, 0, _985)
                mem[_936 + 64] = 10^18 * Mask(112, 0, _977) / Mask(112, 0, _985)
            else:
                require Mask(112, 0, _977)
                mem[_936] = Mask(112, 0, _985)
                mem[_936 + 32] = Mask(112, 0, _977)
                mem[_936 + 64] = 10^18 * Mask(112, 0, _985) / Mask(112, 0, _977)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _936
        else:
            require ext_code.size(address(_825))
            staticcall address(_825).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _937 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_937] == mem[_937 + 12 len 20]
            if mem[_937 + 12 len 20] == WFTMAddress:
                _993 = mem[64]
                mem[64] = mem[64] + 96
                mem[_993] = 0
                mem[_993 + 32] = 0
                mem[_993 + 64] = 0
                require ext_code.size(address(_825))
                staticcall address(_825).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1025 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1049 = mem[_1025]
                require mem[_1025] == mem[_1025 + 18 len 14]
                _1073 = mem[_1025 + 32]
                require mem[_1025 + 32] == mem[_1025 + 50 len 14]
                require mem[_1025 + 64] == mem[_1025 + 92 len 4]
                require ext_code.size(address(_825))
                staticcall address(_825).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1121] == mem[_1121 + 12 len 20]
                if mem[_1121 + 12 len 20] == WFTMAddress:
                    require Mask(112, 0, _1073)
                    mem[_993] = Mask(112, 0, _1049)
                    mem[_993 + 32] = Mask(112, 0, _1073)
                    mem[_993 + 64] = 10^18 * Mask(112, 0, _1049) / Mask(112, 0, _1073)
                else:
                    require Mask(112, 0, _1049)
                    mem[_993] = Mask(112, 0, _1073)
                    mem[_993 + 32] = Mask(112, 0, _1049)
                    mem[_993 + 64] = 10^18 * Mask(112, 0, _1073) / Mask(112, 0, _1049)
                require idx < mem[96]
                mem[(32 * idx) + 128] = _993
        _801 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = idx + 1
        continue 
    _824 = mem[64]
    mem[mem[64]] = 32
    _833 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _833:
        _1174 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1174 + 32]
        mem[t + 64] = mem[_1174 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _824 + (96 * _833) + -mem[64] + 64
}



}
