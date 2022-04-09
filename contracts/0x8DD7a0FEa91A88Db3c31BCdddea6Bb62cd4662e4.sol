contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6bd58166(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3d6b71f4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * ext_call.return_data[0]) + 160 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < ext_call.return_data[0]
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * ext_call.return_data[0]) + 224] = block.number
    mem[(64 * ext_call.return_data[0]) + 160] = 96
    mem[(64 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 128
    mem[(98 * ext_call.return_data[0]) + 288] = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(98 * ext_call.return_data[0]) + 320 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    return memory
      from (64 * ext_call.return_data[0]) + 160
       len (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 160
}

function sub_d683f6d5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(64 * arg2.length) + 160] = arg2.length
        mem[64] = (98 * arg2.length) + 192
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                require idx < mem[(64 * arg2.length) + 160]
                mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _82 = mem[64]
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = ext_call.return_data[0]
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64]] = 160
            mem[_82 + 160] = mem[(32 * arg2.length) + 128]
            _84 = mem[(32 * arg2.length) + 128]
            mem[_82 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[_82 + 32] = (32 * _84) + 192
            mem[(32 * _84) + _82 + 192] = mem[(64 * arg2.length) + 160]
            _147 = mem[(64 * arg2.length) + 160]
            mem[(32 * _84) + _82 + 224 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            return memory
              from mem[64]
               len (32 * _147) + (32 * _84) + _82 + -mem[64] + 224
        mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(64 * arg2.length) + 160]
            mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64]] = 160
        mem[_88 + 160] = mem[(32 * arg2.length) + 128]
        _90 = mem[(32 * arg2.length) + 128]
        mem[_88 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[_88 + 32] = (32 * _90) + 192
        mem[(32 * _90) + _88 + 192] = mem[(64 * arg2.length) + 160]
        _150 = mem[(64 * arg2.length) + 160]
        mem[(32 * _90) + _88 + 224 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        return memory
          from mem[64]
           len (32 * _150) + (32 * _90) + _88 + -mem[64] + 224
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(64 * arg2.length) + 160] = arg2.length
    mem[64] = (98 * arg2.length) + 192
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[(64 * arg2.length) + 160]
            mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _94 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64]] = 160
        mem[_94 + 160] = mem[(32 * arg2.length) + 128]
        _96 = mem[(32 * arg2.length) + 128]
        mem[_94 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[_94 + 32] = (32 * _96) + 192
        mem[(32 * _96) + _94 + 192] = mem[(64 * arg2.length) + 160]
        _153 = mem[(64 * arg2.length) + 160]
        mem[(32 * _96) + _94 + 224 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        return memory
          from mem[64]
           len (32 * _153) + (32 * _96) + _94 + -mem[64] + 224
    mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[(32 * arg2.length) + 128]
        require idx < mem[(64 * arg2.length) + 160]
        mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _100 = mem[64]
    mem[mem[64] + 64] = block.number
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = block.timestamp
    mem[mem[64]] = 160
    mem[_100 + 160] = mem[(32 * arg2.length) + 128]
    _102 = mem[(32 * arg2.length) + 128]
    mem[_100 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    mem[_100 + 32] = (32 * _102) + 192
    mem[(32 * _102) + _100 + 192] = mem[(64 * arg2.length) + 160]
    _156 = mem[(64 * arg2.length) + 160]
    mem[(32 * _102) + _100 + 224 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
    return memory
      from mem[64]
       len (32 * _156) + (32 * _102) + _100 + -mem[64] + 224
}

function sub_9308368e(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0] - 1:
        if arg3 < arg2:
            mem[160] = 0
            mem[192] = ext_call.return_data[0]
            mem[224 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
            mem[(32 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            return ext_call.return_data[0], 
                   (32 * ext_call.return_data[0]) + 128,
                   0,
                   ext_call.return_data[0],
                   mem[224 len (64 * ext_call.return_data[0]) + 32]
        require arg3 + -arg2 + 1 <= test266151307()
        mem[96] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            require arg3 + -arg2 + 1 <= test266151307()
            mem[(32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3 + -arg2 + 1) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx - arg2 < mem[96]
                    require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                    mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(64 * arg3 + -arg2 + 1) + 224] = block.number
                mem[(64 * arg3 + -arg2 + 1) + 160] = 96
                mem[(64 * arg3 + -arg2 + 1) + 256] = mem[96]
                mem[(64 * arg3 + -arg2 + 1) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(64 * arg3 + -arg2 + 1) + 192] = (32 * mem[96]) + 128
                mem[(32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 288] = mem[(32 * arg3 + -arg2 + 1) + 128]
                _344 = mem[(32 * arg3 + -arg2 + 1) + 128]
                s = 0
                while arg3 + 1 < 32 * _344:
                    mem[arg3 + (32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 321] = mem[arg3 + (32 * arg3 + -arg2 + 1) + 161]
                    s = arg3 + 33
                    continue 
                return Array(len=mem[96], data=mem[(64 * arg3 + -arg2 + 1) + 288 len (32 * _344) + (32 * mem[96]) + 32]), 
                       (32 * mem[96]) + 128,
                       block.number
            mem[(32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3 + -arg2 + 1) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(64 * arg3 + -arg2 + 1) + 224] = block.number
            mem[(64 * arg3 + -arg2 + 1) + 160] = 96
            mem[(64 * arg3 + -arg2 + 1) + 256] = mem[96]
            mem[(64 * arg3 + -arg2 + 1) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * arg3 + -arg2 + 1) + 192] = (32 * mem[96]) + 128
            mem[(32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 288] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _347 = mem[(32 * arg3 + -arg2 + 1) + 128]
            s = 0
            while arg3 + 1 < 32 * _347:
                mem[arg3 + (32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 321] = mem[arg3 + (32 * arg3 + -arg2 + 1) + 161]
                s = arg3 + 33
                continue 
            return Array(len=mem[96], data=mem[(64 * arg3 + -arg2 + 1) + 288 len (32 * _347) + (32 * mem[96]) + 32]), 
                   (32 * mem[96]) + 128,
                   block.number
        mem[128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        require arg3 + -arg2 + 1 <= test266151307()
        mem[(32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            idx = arg2
            while idx <= arg3:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3 + -arg2 + 1) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(64 * arg3 + -arg2 + 1) + 224] = block.number
            mem[(64 * arg3 + -arg2 + 1) + 160] = 96
            mem[(64 * arg3 + -arg2 + 1) + 256] = mem[96]
            mem[(64 * arg3 + -arg2 + 1) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * arg3 + -arg2 + 1) + 192] = (32 * mem[96]) + 128
            mem[(32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 288] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _350 = mem[(32 * arg3 + -arg2 + 1) + 128]
            s = 0
            while arg3 + 1 < 32 * _350:
                mem[arg3 + (32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 321] = mem[arg3 + (32 * arg3 + -arg2 + 1) + 161]
                s = arg3 + 33
                continue 
            return Array(len=mem[96], data=mem[(64 * arg3 + -arg2 + 1) + 288 len (32 * _350) + (32 * mem[96]) + 32]), 
                   (32 * mem[96]) + 128,
                   block.number
        mem[(32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        idx = arg2
        while idx <= arg3:
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * arg3 + -arg2 + 1) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx - arg2 < mem[96]
            require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(64 * arg3 + -arg2 + 1) + 224] = block.number
        mem[(64 * arg3 + -arg2 + 1) + 160] = 96
        mem[(64 * arg3 + -arg2 + 1) + 256] = mem[96]
        mem[(64 * arg3 + -arg2 + 1) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(64 * arg3 + -arg2 + 1) + 192] = (32 * mem[96]) + 128
        mem[(32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 288] = mem[(32 * arg3 + -arg2 + 1) + 128]
        _353 = mem[(32 * arg3 + -arg2 + 1) + 128]
        s = 0
        while arg3 + 1 < 32 * _353:
            mem[arg3 + (32 * mem[96]) + (64 * arg3 + -arg2 + 1) + 321] = mem[arg3 + (32 * arg3 + -arg2 + 1) + 161]
            s = arg3 + 33
            continue 
        return Array(len=mem[96], data=mem[(64 * arg3 + -arg2 + 1) + 288 len (32 * _353) + (32 * mem[96]) + 32]), 
               (32 * mem[96]) + 128,
               block.number
    if ext_call.return_data[0] - 1 < arg2:
        mem[160] = 0
        mem[192] = ext_call.return_data[0]
        mem[224 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[(32 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        return ext_call.return_data[0], 
               (32 * ext_call.return_data[0]) + 128,
               0,
               ext_call.return_data[0],
               mem[224 len (64 * ext_call.return_data[0]) + 32]
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[96] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[(32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * ext_call.return_data[0] - arg2) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(64 * ext_call.return_data[0] - arg2) + 224] = block.number
            mem[(64 * ext_call.return_data[0] - arg2) + 160] = 96
            mem[(64 * ext_call.return_data[0] - arg2) + 256] = mem[96]
            mem[(64 * ext_call.return_data[0] - arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(64 * ext_call.return_data[0] - arg2) + 192] = (32 * mem[96]) + 128
            mem[(32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 288] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            _358 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            s = 0
            while ext_call.return_data[0] < 32 * _358:
                mem[ext_call.return_data[0] + (32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 320] = mem[ext_call.return_data[0] + (32 * ext_call.return_data[0] - arg2) + 160]
                s = ext_call.return_data[0] + 32
                continue 
            return Array(len=mem[96], data=mem[(64 * ext_call.return_data[0] - arg2) + 288 len (32 * _358) + (32 * mem[96]) + 32]), 
                   (32 * mem[96]) + 128,
                   block.number
        mem[(32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ext_call.return_data[0] - arg2) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx - arg2 < mem[96]
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(64 * ext_call.return_data[0] - arg2) + 224] = block.number
        mem[(64 * ext_call.return_data[0] - arg2) + 160] = 96
        mem[(64 * ext_call.return_data[0] - arg2) + 256] = mem[96]
        mem[(64 * ext_call.return_data[0] - arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(64 * ext_call.return_data[0] - arg2) + 192] = (32 * mem[96]) + 128
        mem[(32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 288] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _361 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        s = 0
        while ext_call.return_data[0] < 32 * _361:
            mem[ext_call.return_data[0] + (32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 320] = mem[ext_call.return_data[0] + (32 * ext_call.return_data[0] - arg2) + 160]
            s = ext_call.return_data[0] + 32
            continue 
        return Array(len=mem[96], data=mem[(64 * ext_call.return_data[0] - arg2) + 288 len (32 * _361) + (32 * mem[96]) + 32]), 
               (32 * mem[96]) + 128,
               block.number
    mem[128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[(32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * ext_call.return_data[0] - arg2) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx - arg2 < mem[96]
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(64 * ext_call.return_data[0] - arg2) + 224] = block.number
        mem[(64 * ext_call.return_data[0] - arg2) + 160] = 96
        mem[(64 * ext_call.return_data[0] - arg2) + 256] = mem[96]
        mem[(64 * ext_call.return_data[0] - arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(64 * ext_call.return_data[0] - arg2) + 192] = (32 * mem[96]) + 128
        mem[(32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 288] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _364 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        s = 0
        while ext_call.return_data[0] < 32 * _364:
            mem[ext_call.return_data[0] + (32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 320] = mem[ext_call.return_data[0] + (32 * ext_call.return_data[0] - arg2) + 160]
            s = ext_call.return_data[0] + 32
            continue 
        return Array(len=mem[96], data=mem[(64 * ext_call.return_data[0] - arg2) + 288 len (32 * _364) + (32 * mem[96]) + 32]), 
               (32 * mem[96]) + 128,
               block.number
    mem[(32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    idx = arg2
    while idx <= ext_call.return_data[0] - 1:
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * ext_call.return_data[0] - arg2) + 160 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx - arg2 < mem[96]
        require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * ext_call.return_data[0] - arg2) + 224] = block.number
    mem[(64 * ext_call.return_data[0] - arg2) + 160] = 96
    mem[(64 * ext_call.return_data[0] - arg2) + 256] = mem[96]
    mem[(64 * ext_call.return_data[0] - arg2) + 288 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(64 * ext_call.return_data[0] - arg2) + 192] = (32 * mem[96]) + 128
    mem[(32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 288] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
    _367 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
    s = 0
    while ext_call.return_data[0] < 32 * _367:
        mem[ext_call.return_data[0] + (32 * mem[96]) + (64 * ext_call.return_data[0] - arg2) + 320] = mem[ext_call.return_data[0] + (32 * ext_call.return_data[0] - arg2) + 160]
        s = ext_call.return_data[0] + 32
        continue 
    return Array(len=mem[96], data=mem[(64 * ext_call.return_data[0] - arg2) + 288 len (32 * _367) + (32 * mem[96]) + 32]), 
           (32 * mem[96]) + 128,
           block.number
}

function sub_ba4e21ff(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] <= test266151307()
            mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[64] = (98 * ext_call.return_data[0]) + 192
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                    require idx < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                    require idx < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _268 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = mem[96]
                _270 = mem[96]
                mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_268 + 32] = (32 * _270) + 128
                mem[(32 * _270) + _268 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
                _493 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * _270) + _268 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[_268 + 64] = (32 * _493) + (32 * _270) + 160
                mem[(32 * _493) + (32 * _270) + _268 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
                _557 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _493) + (32 * _270) + _268 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                return memory
                  from mem[64]
                   len (32 * _557) + (32 * _493) + (32 * _270) + _268 + -mem[64] + 192
            mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require idx < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require idx < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _271 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _273 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_271 + 32] = (32 * _273) + 128
            mem[(32 * _273) + _271 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
            _496 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * _273) + _271 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[_271 + 64] = (32 * _496) + (32 * _273) + 160
            mem[(32 * _496) + (32 * _273) + _271 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
            _560 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _496) + (32 * _273) + _271 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return memory
              from mem[64]
               len (32 * _560) + (32 * _496) + (32 * _273) + _271 + -mem[64] + 192
        mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_call.return_data[0] <= test266151307()
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[64] = (98 * ext_call.return_data[0]) + 192
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require idx < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require idx < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _274 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _276 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _276) + 128
            mem[(32 * _276) + _274 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
            _499 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * _276) + _274 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[_274 + 64] = (32 * _499) + (32 * _276) + 160
            mem[(32 * _499) + (32 * _276) + _274 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
            _563 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _499) + (32 * _276) + _274 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return memory
              from mem[64]
               len (32 * _563) + (32 * _499) + (32 * _276) + _274 + -mem[64] + 192
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require idx < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _277 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _279 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_277 + 32] = (32 * _279) + 128
        mem[(32 * _279) + _277 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
        _502 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * _279) + _277 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[_277 + 64] = (32 * _502) + (32 * _279) + 160
        mem[(32 * _502) + (32 * _279) + _277 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
        _566 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _502) + (32 * _279) + _277 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return memory
          from mem[64]
           len (32 * _566) + (32 * _502) + (32 * _279) + _277 + -mem[64] + 192
    mem[128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[64] = (98 * ext_call.return_data[0]) + 192
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require idx < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require idx < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _280 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _282 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _282) + 128
            mem[(32 * _282) + _280 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
            _505 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * _282) + _280 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[_280 + 64] = (32 * _505) + (32 * _282) + 160
            mem[(32 * _505) + (32 * _282) + _280 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
            _569 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _505) + (32 * _282) + _280 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            return memory
              from mem[64]
               len (32 * _569) + (32 * _505) + (32 * _282) + _280 + -mem[64] + 192
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require idx < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _283 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _285 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_283 + 32] = (32 * _285) + 128
        mem[(32 * _285) + _283 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
        _508 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * _285) + _283 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[_283 + 64] = (32 * _508) + (32 * _285) + 160
        mem[(32 * _508) + (32 * _285) + _283 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
        _572 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _508) + (32 * _285) + _283 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return memory
          from mem[64]
           len (32 * _572) + (32 * _508) + (32 * _285) + _283 + -mem[64] + 192
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[64] = (98 * ext_call.return_data[0]) + 192
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require idx < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _286 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _288 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_286 + 32] = (32 * _288) + 128
        mem[(32 * _288) + _286 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
        _511 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * _288) + _286 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[_286 + 64] = (32 * _511) + (32 * _288) + 160
        mem[(32 * _511) + (32 * _288) + _286 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
        _575 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _511) + (32 * _288) + _286 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        return memory
          from mem[64]
           len (32 * _575) + (32 * _511) + (32 * _288) + _286 + -mem[64] + 192
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < mem[96]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
        require idx < mem[96]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _289 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _291 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_289 + 32] = (32 * _291) + 128
    mem[(32 * _291) + _289 + 128] = mem[(32 * ext_call.return_data[0]) + 128]
    _514 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * _291) + _289 + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[_289 + 64] = (32 * _514) + (32 * _291) + 160
    mem[(32 * _514) + (32 * _291) + _289 + 160] = mem[(64 * ext_call.return_data[0]) + 160]
    _578 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * _514) + (32 * _291) + _289 + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    return memory
      from mem[64]
       len (32 * _578) + (32 * _514) + (32 * _291) + _289 + -mem[64] + 192
}

function sub_79856892(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0] - 1:
        if arg3 < arg2:
            mem[224 len 3072] = mem[128 len 64], 96, mem[224 len 2976]
            return 96, 3200, 6304, 96, mem[224 len 3072], 96, 3200, mem[160], 96, mem[224 len 2976], 96, 3200, 6304, 96, mem[224 len 2976]
        require arg3 + -arg2 + 1 <= test266151307()
        mem[96] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            require arg3 + -arg2 + 1 <= test266151307()
            mem[(32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
            if not arg3 + -arg2 + 1:
                require arg3 + -arg2 + 1 <= test266151307()
                mem[(64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
                mem[64] = (98 * arg3) + (-98 * arg2) + 290
                if not arg3 + -arg2 + 1:
                    idx = arg2
                    while idx <= arg3:
                        mem[(98 * arg3) + (-98 * arg2) + 294] = idx
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx - arg2 < mem[96]
                        mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                        require idx - arg2 < mem[96]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                        mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
                        require idx - arg2 < mem[96]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                        mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[(98 * arg3) + (-98 * arg2) + 290] = 96
                    mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
                    _564 = mem[96]
                    mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _564) + 128
                    mem[(32 * _564) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
                    _1021 = mem[(32 * arg3 + -arg2 + 1) + 128]
                    mem[(32 * _564) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                    mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1021) + (32 * _564) + 160
                    mem[(32 * _1021) + (32 * _564) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
                    _1158 = mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * _1021) + (32 * _564) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                    return 96, 
                           (32 * _564) + 128,
                           (32 * _1021) + (32 * _564) + 160,
                           mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1158) + (32 * _1021) + (32 * _564) + 96]
                mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
                idx = arg2
                while idx <= arg3:
                    mem[(98 * arg3) + (-98 * arg2) + 294] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                    mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(98 * arg3) + (-98 * arg2) + 290] = 96
                mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
                _568 = mem[96]
                mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _568) + 128
                mem[(32 * _568) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
                _1024 = mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * _568) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1024) + (32 * _568) + 160
                mem[(32 * _1024) + (32 * _568) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
                _1161 = mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * _1024) + (32 * _568) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                return 96, 
                       (32 * _568) + 128,
                       (32 * _1024) + (32 * _568) + 160,
                       mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1161) + (32 * _1024) + (32 * _568) + 96]
            mem[(32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            require arg3 + -arg2 + 1 <= test266151307()
            mem[(64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
            mem[64] = (98 * arg3) + (-98 * arg2) + 290
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    mem[(98 * arg3) + (-98 * arg2) + 294] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                    mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(98 * arg3) + (-98 * arg2) + 290] = 96
                mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
                _572 = mem[96]
                mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _572) + 128
                mem[(32 * _572) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
                _1027 = mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * _572) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1027) + (32 * _572) + 160
                mem[(32 * _1027) + (32 * _572) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
                _1164 = mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * _1027) + (32 * _572) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                return 96, 
                       (32 * _572) + 128,
                       (32 * _1027) + (32 * _572) + 160,
                       mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1164) + (32 * _1027) + (32 * _572) + 96]
            mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                mem[(98 * arg3) + (-98 * arg2) + 294] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(98 * arg3) + (-98 * arg2) + 290] = 96
            mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
            _576 = mem[96]
            mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _576) + 128
            mem[(32 * _576) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _1030 = mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * _576) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
            mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1030) + (32 * _576) + 160
            mem[(32 * _1030) + (32 * _576) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
            _1167 = mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * _1030) + (32 * _576) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
            return 96, 
                   (32 * _576) + 128,
                   (32 * _1030) + (32 * _576) + 160,
                   mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1167) + (32 * _1030) + (32 * _576) + 96]
        mem[128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        require arg3 + -arg2 + 1 <= test266151307()
        mem[(32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            require arg3 + -arg2 + 1 <= test266151307()
            mem[(64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
            mem[64] = (98 * arg3) + (-98 * arg2) + 290
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    mem[(98 * arg3) + (-98 * arg2) + 294] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                    mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(98 * arg3) + (-98 * arg2) + 290] = 96
                mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
                _580 = mem[96]
                mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _580) + 128
                mem[(32 * _580) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
                _1033 = mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * _580) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1033) + (32 * _580) + 160
                mem[(32 * _1033) + (32 * _580) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
                _1170 = mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * _1033) + (32 * _580) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                return 96, 
                       (32 * _580) + 128,
                       (32 * _1033) + (32 * _580) + 160,
                       mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1170) + (32 * _1033) + (32 * _580) + 96]
            mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                mem[(98 * arg3) + (-98 * arg2) + 294] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(98 * arg3) + (-98 * arg2) + 290] = 96
            mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
            _584 = mem[96]
            mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _584) + 128
            mem[(32 * _584) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _1036 = mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * _584) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
            mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1036) + (32 * _584) + 160
            mem[(32 * _1036) + (32 * _584) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
            _1173 = mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * _1036) + (32 * _584) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
            return 96, 
                   (32 * _584) + 128,
                   (32 * _1036) + (32 * _584) + 160,
                   mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1173) + (32 * _1036) + (32 * _584) + 96]
        mem[(32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        require arg3 + -arg2 + 1 <= test266151307()
        mem[(64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
        mem[64] = (98 * arg3) + (-98 * arg2) + 290
        if not arg3 + -arg2 + 1:
            idx = arg2
            while idx <= arg3:
                mem[(98 * arg3) + (-98 * arg2) + 294] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(98 * arg3) + (-98 * arg2) + 290] = 96
            mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
            _588 = mem[96]
            mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _588) + 128
            mem[(32 * _588) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _1039 = mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * _588) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
            mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1039) + (32 * _588) + 160
            mem[(32 * _1039) + (32 * _588) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
            _1176 = mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * _1039) + (32 * _588) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
            return 96, 
                   (32 * _588) + 128,
                   (32 * _1039) + (32 * _588) + 160,
                   mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1176) + (32 * _1039) + (32 * _588) + 96]
        mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        idx = arg2
        while idx <= arg3:
            mem[(98 * arg3) + (-98 * arg2) + 294] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[96]
            mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(98 * arg3) + (-98 * arg2) + 290] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(98 * arg3) + (-98 * arg2) + 290] = 96
        mem[(98 * arg3) + (-98 * arg2) + 386] = mem[96]
        _592 = mem[96]
        mem[(98 * arg3) + (-98 * arg2) + 418 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * _592) + 128
        mem[(32 * _592) + (98 * arg3) + (-98 * arg2) + 418] = mem[(32 * arg3 + -arg2 + 1) + 128]
        _1042 = mem[(32 * arg3 + -arg2 + 1) + 128]
        mem[(32 * _592) + (98 * arg3) + (-98 * arg2) + 450 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
        mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _1042) + (32 * _592) + 160
        mem[(32 * _1042) + (32 * _592) + (98 * arg3) + (-98 * arg2) + 450] = mem[(64 * arg3 + -arg2 + 1) + 160]
        _1179 = mem[(64 * arg3 + -arg2 + 1) + 160]
        mem[(32 * _1042) + (32 * _592) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
        return 96, 
               (32 * _592) + 128,
               (32 * _1042) + (32 * _592) + 160,
               mem[(98 * arg3) + (-98 * arg2) + 386 len (32 * _1179) + (32 * _1042) + (32 * _592) + 96]
    if ext_call.return_data[0] - 1 < arg2:
        mem[224 len 3072] = mem[128 len 64], 96, mem[224 len 2976]
        return 96, 3200, 6304, 96, mem[224 len 3072], 96, 3200, mem[160], 96, mem[224 len 2976], 96, 3200, 6304, 96, mem[224 len 2976]
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[96] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[(32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
        if not ext_call.return_data[0] - arg2:
            require ext_call.return_data[0] - arg2 <= test266151307()
            mem[(64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
            mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
            if not ext_call.return_data[0] - arg2:
                idx = arg2
                while idx <= ext_call.return_data[0] - 1:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                    mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
                    require idx - arg2 < mem[96]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                    mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _597 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = mem[96]
                _599 = mem[96]
                mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_597 + 32] = (32 * _599) + 128
                mem[(32 * _599) + _597 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
                _1048 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
                mem[(32 * _599) + _597 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
                mem[_597 + 64] = (32 * _1048) + (32 * _599) + 160
                mem[(32 * _1048) + (32 * _599) + _597 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
                _1184 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * _1048) + (32 * _599) + _597 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
                return memory
                  from mem[64]
                   len (32 * _1184) + (32 * _1048) + (32 * _599) + _597 + -mem[64] + 192
            mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _601 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _603 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_601 + 32] = (32 * _603) + 128
            mem[(32 * _603) + _601 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            _1051 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * _603) + _601 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
            mem[_601 + 64] = (32 * _1051) + (32 * _603) + 160
            mem[(32 * _1051) + (32 * _603) + _601 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            _1187 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * _1051) + (32 * _603) + _601 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
            return memory
              from mem[64]
               len (32 * _1187) + (32 * _1051) + (32 * _603) + _601 + -mem[64] + 192
        mem[(32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[(64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
        mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _605 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _607 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _607) + 128
            mem[(32 * _607) + _605 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            _1054 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * _607) + _605 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
            mem[_605 + 64] = (32 * _1054) + (32 * _607) + 160
            mem[(32 * _1054) + (32 * _607) + _605 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            _1190 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * _1054) + (32 * _607) + _605 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
            return memory
              from mem[64]
               len (32 * _1190) + (32 * _1054) + (32 * _607) + _605 + -mem[64] + 192
        mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[96]
            mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _609 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _611 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_609 + 32] = (32 * _611) + 128
        mem[(32 * _611) + _609 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _1057 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * _611) + _609 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
        mem[_609 + 64] = (32 * _1057) + (32 * _611) + 160
        mem[(32 * _1057) + (32 * _611) + _609 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        _1193 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * _1057) + (32 * _611) + _609 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
        return memory
          from mem[64]
           len (32 * _1193) + (32 * _1057) + (32 * _611) + _609 + -mem[64] + 192
    mem[128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[(32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[(64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
        mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
                require idx - arg2 < mem[96]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _613 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _615 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_613 + 32] = (32 * _615) + 128
            mem[(32 * _615) + _613 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            _1060 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * _615) + _613 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
            mem[_613 + 64] = (32 * _1060) + (32 * _615) + 160
            mem[(32 * _1060) + (32 * _615) + _613 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            _1196 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * _1060) + (32 * _615) + _613 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
            return memory
              from mem[64]
               len (32 * _1196) + (32 * _1060) + (32 * _615) + _613 + -mem[64] + 192
        mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[96]
            mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _617 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _619 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_617 + 32] = (32 * _619) + 128
        mem[(32 * _619) + _617 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _1063 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * _619) + _617 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
        mem[_617 + 64] = (32 * _1063) + (32 * _619) + 160
        mem[(32 * _1063) + (32 * _619) + _617 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        _1199 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * _1063) + (32 * _619) + _617 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
        return memory
          from mem[64]
           len (32 * _1199) + (32 * _1063) + (32 * _619) + _617 + -mem[64] + 192
    mem[(32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[(64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
    mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[96]
            mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
            require idx - arg2 < mem[96]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _621 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _623 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_621 + 32] = (32 * _623) + 128
        mem[(32 * _623) + _621 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _1066 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * _623) + _621 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
        mem[_621 + 64] = (32 * _1066) + (32 * _623) + 160
        mem[(32 * _1066) + (32 * _623) + _621 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        _1202 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * _1066) + (32 * _623) + _621 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
        return memory
          from mem[64]
           len (32 * _1202) + (32 * _1066) + (32 * _623) + _621 + -mem[64] + 192
    mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    idx = arg2
    while idx <= ext_call.return_data[0] - 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - arg2 < mem[96]
        mem[(32 * idx - arg2) + 128] = address(ext_call.return_data[0])
        require idx - arg2 < mem[96]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = address(ext_call.return_data[0])
        require idx - arg2 < mem[96]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _625 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _627 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * _627) + 128
    mem[(32 * _627) + _625 + 128] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
    _1069 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
    mem[(32 * _627) + _625 + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
    mem[_625 + 64] = (32 * _1069) + (32 * _627) + 160
    mem[(32 * _1069) + (32 * _627) + _625 + 160] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
    _1205 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
    mem[(32 * _1069) + (32 * _627) + _625 + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
    return memory
      from mem[64]
       len (32 * _1205) + (32 * _1069) + (32 * _627) + _625 + -mem[64] + 192
}



}
