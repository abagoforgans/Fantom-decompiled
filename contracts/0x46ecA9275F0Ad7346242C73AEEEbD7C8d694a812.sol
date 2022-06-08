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
        staticcall arg1.allPairs(uint256 arg1) with:
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
            _90 = mem[64]
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = ext_call.return_data[0]
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64]] = 160
            mem[_90 + 160] = mem[(32 * arg2.length) + 128]
            _92 = mem[(32 * arg2.length) + 128]
            mem[_90 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[_90 + 32] = (32 * _92) + 192
            mem[(32 * _92) + _90 + 192] = mem[(64 * arg2.length) + 160]
            _163 = mem[(64 * arg2.length) + 160]
            if not Mask(251, 0, mem[(64 * arg2.length) + 160]):
                return memory
                  from mem[64]
                   len (32 * mem[(64 * arg2.length) + 160]) + (32 * _92) + _90 + -mem[64] + 224
            mem[(32 * _92) + _90 + 224] = mem[(64 * arg2.length) + 192]
            mem[(32 * _92) + _90 + 256 len floor32((32 * _163) - 1)] = mem[(64 * arg2.length) + 224 len floor32((32 * _163) - 1)]
            return memory
              from mem[64]
               len (32 * _163) + (32 * _92) + _90 + -mem[64] + 224
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
        _96 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64]] = 160
        mem[_96 + 160] = mem[(32 * arg2.length) + 128]
        _98 = mem[(32 * arg2.length) + 128]
        mem[_96 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[_96 + 32] = (32 * _98) + 192
        mem[(32 * _98) + _96 + 192] = mem[(64 * arg2.length) + 160]
        _166 = mem[(64 * arg2.length) + 160]
        if not Mask(251, 0, mem[(64 * arg2.length) + 160]):
            return memory
              from mem[64]
               len (32 * mem[(64 * arg2.length) + 160]) + (32 * _98) + _96 + -mem[64] + 224
        mem[(32 * _98) + _96 + 224] = mem[(64 * arg2.length) + 192]
        mem[(32 * _98) + _96 + 256 len floor32((32 * _166) - 1)] = mem[(64 * arg2.length) + 224 len floor32((32 * _166) - 1)]
        return memory
          from mem[64]
           len (32 * _166) + (32 * _98) + _96 + -mem[64] + 224
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
        _102 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64]] = 160
        mem[_102 + 160] = mem[(32 * arg2.length) + 128]
        _104 = mem[(32 * arg2.length) + 128]
        mem[_102 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[_102 + 32] = (32 * _104) + 192
        mem[(32 * _104) + _102 + 192] = mem[(64 * arg2.length) + 160]
        _169 = mem[(64 * arg2.length) + 160]
        if not Mask(251, 0, mem[(64 * arg2.length) + 160]):
            return memory
              from mem[64]
               len (32 * mem[(64 * arg2.length) + 160]) + (32 * _104) + _102 + -mem[64] + 224
        mem[(32 * _104) + _102 + 224] = mem[(64 * arg2.length) + 192]
        mem[(32 * _104) + _102 + 256 len floor32((32 * _169) - 1)] = mem[(64 * arg2.length) + 224 len floor32((32 * _169) - 1)]
        return memory
          from mem[64]
           len (32 * _169) + (32 * _104) + _102 + -mem[64] + 224
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
    _108 = mem[64]
    mem[mem[64] + 64] = block.number
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = block.timestamp
    mem[mem[64]] = 160
    mem[_108 + 160] = mem[(32 * arg2.length) + 128]
    _110 = mem[(32 * arg2.length) + 128]
    mem[_108 + 192 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    mem[_108 + 32] = (32 * _110) + 192
    mem[(32 * _110) + _108 + 192] = mem[(64 * arg2.length) + 160]
    _172 = mem[(64 * arg2.length) + 160]
    if not Mask(251, 0, mem[(64 * arg2.length) + 160]):
        return memory
          from mem[64]
           len (32 * mem[(64 * arg2.length) + 160]) + (32 * _110) + _108 + -mem[64] + 224
    mem[(32 * _110) + _108 + 224] = mem[(64 * arg2.length) + 192]
    mem[(32 * _110) + _108 + 256 len floor32((32 * _172) - 1)] = mem[(64 * arg2.length) + 224 len floor32((32 * _172) - 1)]
    return memory
      from mem[64]
       len (32 * _172) + (32 * _110) + _108 + -mem[64] + 224
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
                    staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
        staticcall arg1.allPairs(uint256 arg1) with:
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

function sub_54d4f940(?) payable {
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
        if not arg2.length:
            require arg2.length <= test266151307()
            mem[(98 * arg2.length) + 192] = arg2.length
            mem[64] = (131 * arg2.length) + 224
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
                    require idx < mem[(98 * arg2.length) + 192]
                    mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
                    mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _198 = mem[64]
                mem[mem[64] + 96] = block.number
                mem[mem[64] + 128] = ext_call.return_data[0]
                mem[mem[64] + 160] = block.timestamp
                mem[mem[64]] = 192
                mem[_198 + 192] = mem[(32 * arg2.length) + 128]
                _200 = mem[(32 * arg2.length) + 128]
                mem[_198 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                mem[_198 + 32] = (32 * _200) + 224
                mem[(32 * _200) + _198 + 224] = mem[(64 * arg2.length) + 160]
                _367 = mem[(64 * arg2.length) + 160]
                s = 0
                while arg2.length < 32 * _367:
                    mem[arg2.length + (32 * _200) + _198 + 256] = mem[(66 * arg2.length) + 192]
                    s = arg2.length + 32
                    continue 
                mem[_198 + 64] = (32 * _367) + (32 * _200) + 256
                mem[(32 * _367) + (32 * _200) + _198 + 256] = mem[(98 * arg2.length) + 192]
                _431 = mem[(98 * arg2.length) + 192]
                mem[(32 * _367) + (32 * _200) + _198 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
                return memory
                  from mem[64]
                   len (32 * _431) + (32 * _367) + (32 * _200) + _198 + -mem[64] + 288
            mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
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
                require idx < mem[(98 * arg2.length) + 192]
                mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
                mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _204 = mem[64]
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = ext_call.return_data[0]
            mem[mem[64] + 160] = block.timestamp
            mem[mem[64]] = 192
            mem[_204 + 192] = mem[(32 * arg2.length) + 128]
            _206 = mem[(32 * arg2.length) + 128]
            mem[_204 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[_204 + 32] = (32 * _206) + 224
            mem[(32 * _206) + _204 + 224] = mem[(64 * arg2.length) + 160]
            _370 = mem[(64 * arg2.length) + 160]
            s = 0
            while arg2.length < 32 * _370:
                mem[arg2.length + (32 * _206) + _204 + 256] = mem[(66 * arg2.length) + 192]
                s = arg2.length + 32
                continue 
            mem[_204 + 64] = (32 * _370) + (32 * _206) + 256
            mem[(32 * _370) + (32 * _206) + _204 + 256] = mem[(98 * arg2.length) + 192]
            _434 = mem[(98 * arg2.length) + 192]
            mem[(32 * _370) + (32 * _206) + _204 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _434) + (32 * _370) + (32 * _206) + _204 + -mem[64] + 288
        mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require arg2.length <= test266151307()
        mem[(98 * arg2.length) + 192] = arg2.length
        mem[64] = (131 * arg2.length) + 224
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
                require idx < mem[(98 * arg2.length) + 192]
                mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
                mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _210 = mem[64]
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = ext_call.return_data[0]
            mem[mem[64] + 160] = block.timestamp
            mem[mem[64]] = 192
            mem[_210 + 192] = mem[(32 * arg2.length) + 128]
            _212 = mem[(32 * arg2.length) + 128]
            mem[_210 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[_210 + 32] = (32 * _212) + 224
            mem[(32 * _212) + _210 + 224] = mem[(64 * arg2.length) + 160]
            _373 = mem[(64 * arg2.length) + 160]
            s = 0
            while arg2.length < 32 * _373:
                mem[arg2.length + (32 * _212) + _210 + 256] = mem[(66 * arg2.length) + 192]
                s = arg2.length + 32
                continue 
            mem[_210 + 64] = (32 * _373) + (32 * _212) + 256
            mem[(32 * _373) + (32 * _212) + _210 + 256] = mem[(98 * arg2.length) + 192]
            _437 = mem[(98 * arg2.length) + 192]
            mem[(32 * _373) + (32 * _212) + _210 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _437) + (32 * _373) + (32 * _212) + _210 + -mem[64] + 288
        mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
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
            require idx < mem[(98 * arg2.length) + 192]
            mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
            mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _216 = mem[64]
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = ext_call.return_data[0]
        mem[mem[64] + 160] = block.timestamp
        mem[mem[64]] = 192
        mem[_216 + 192] = mem[(32 * arg2.length) + 128]
        _218 = mem[(32 * arg2.length) + 128]
        mem[_216 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[_216 + 32] = (32 * _218) + 224
        mem[(32 * _218) + _216 + 224] = mem[(64 * arg2.length) + 160]
        _376 = mem[(64 * arg2.length) + 160]
        s = 0
        while arg2.length < 32 * _376:
            mem[arg2.length + (32 * _218) + _216 + 256] = mem[(66 * arg2.length) + 192]
            s = arg2.length + 32
            continue 
        mem[_216 + 64] = (32 * _376) + (32 * _218) + 256
        mem[(32 * _376) + (32 * _218) + _216 + 256] = mem[(98 * arg2.length) + 192]
        _440 = mem[(98 * arg2.length) + 192]
        mem[(32 * _376) + (32 * _218) + _216 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return memory
          from mem[64]
           len (32 * _440) + (32 * _376) + (32 * _218) + _216 + -mem[64] + 288
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(64 * arg2.length) + 160] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(98 * arg2.length) + 192] = arg2.length
        mem[64] = (131 * arg2.length) + 224
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
                require idx < mem[(98 * arg2.length) + 192]
                mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
                mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _222 = mem[64]
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = ext_call.return_data[0]
            mem[mem[64] + 160] = block.timestamp
            mem[mem[64]] = 192
            mem[_222 + 192] = mem[(32 * arg2.length) + 128]
            _224 = mem[(32 * arg2.length) + 128]
            mem[_222 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[_222 + 32] = (32 * _224) + 224
            mem[(32 * _224) + _222 + 224] = mem[(64 * arg2.length) + 160]
            _379 = mem[(64 * arg2.length) + 160]
            s = 0
            while arg2.length < 32 * _379:
                mem[arg2.length + (32 * _224) + _222 + 256] = mem[(66 * arg2.length) + 192]
                s = arg2.length + 32
                continue 
            mem[_222 + 64] = (32 * _379) + (32 * _224) + 256
            mem[(32 * _379) + (32 * _224) + _222 + 256] = mem[(98 * arg2.length) + 192]
            _443 = mem[(98 * arg2.length) + 192]
            mem[(32 * _379) + (32 * _224) + _222 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _443) + (32 * _379) + (32 * _224) + _222 + -mem[64] + 288
        mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
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
            require idx < mem[(98 * arg2.length) + 192]
            mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
            mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _228 = mem[64]
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = ext_call.return_data[0]
        mem[mem[64] + 160] = block.timestamp
        mem[mem[64]] = 192
        mem[_228 + 192] = mem[(32 * arg2.length) + 128]
        _230 = mem[(32 * arg2.length) + 128]
        mem[_228 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[_228 + 32] = (32 * _230) + 224
        mem[(32 * _230) + _228 + 224] = mem[(64 * arg2.length) + 160]
        _382 = mem[(64 * arg2.length) + 160]
        s = 0
        while arg2.length < 32 * _382:
            mem[arg2.length + (32 * _230) + _228 + 256] = mem[(66 * arg2.length) + 192]
            s = arg2.length + 32
            continue 
        mem[_228 + 64] = (32 * _382) + (32 * _230) + 256
        mem[(32 * _382) + (32 * _230) + _228 + 256] = mem[(98 * arg2.length) + 192]
        _446 = mem[(98 * arg2.length) + 192]
        mem[(32 * _382) + (32 * _230) + _228 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return memory
          from mem[64]
           len (32 * _446) + (32 * _382) + (32 * _230) + _228 + -mem[64] + 288
    mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(98 * arg2.length) + 192] = arg2.length
    mem[64] = (131 * arg2.length) + 224
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
            require idx < mem[(98 * arg2.length) + 192]
            mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
            mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _234 = mem[64]
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = ext_call.return_data[0]
        mem[mem[64] + 160] = block.timestamp
        mem[mem[64]] = 192
        mem[_234 + 192] = mem[(32 * arg2.length) + 128]
        _236 = mem[(32 * arg2.length) + 128]
        mem[_234 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[_234 + 32] = (32 * _236) + 224
        mem[(32 * _236) + _234 + 224] = mem[(64 * arg2.length) + 160]
        _385 = mem[(64 * arg2.length) + 160]
        s = 0
        while arg2.length < 32 * _385:
            mem[arg2.length + (32 * _236) + _234 + 256] = mem[(66 * arg2.length) + 192]
            s = arg2.length + 32
            continue 
        mem[_234 + 64] = (32 * _385) + (32 * _236) + 256
        mem[(32 * _385) + (32 * _236) + _234 + 256] = mem[(98 * arg2.length) + 192]
        _449 = mem[(98 * arg2.length) + 192]
        mem[(32 * _385) + (32 * _236) + _234 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return memory
          from mem[64]
           len (32 * _449) + (32 * _385) + (32 * _236) + _234 + -mem[64] + 288
    mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
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
        require idx < mem[(98 * arg2.length) + 192]
        mem[(32 * idx) + (98 * arg2.length) + 224] = uint32(ext_call.return_data[64])
        mem[(32 * idx) + (64 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _240 = mem[64]
    mem[mem[64] + 96] = block.number
    mem[mem[64] + 128] = ext_call.return_data[0]
    mem[mem[64] + 160] = block.timestamp
    mem[mem[64]] = 192
    mem[_240 + 192] = mem[(32 * arg2.length) + 128]
    _242 = mem[(32 * arg2.length) + 128]
    mem[_240 + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    mem[_240 + 32] = (32 * _242) + 224
    mem[(32 * _242) + _240 + 224] = mem[(64 * arg2.length) + 160]
    _388 = mem[(64 * arg2.length) + 160]
    s = 0
    while arg2.length < 32 * _388:
        mem[arg2.length + (32 * _242) + _240 + 256] = mem[(66 * arg2.length) + 192]
        s = arg2.length + 32
        continue 
    mem[_240 + 64] = (32 * _388) + (32 * _242) + 256
    mem[(32 * _388) + (32 * _242) + _240 + 256] = mem[(98 * arg2.length) + 192]
    _452 = mem[(98 * arg2.length) + 192]
    mem[(32 * _388) + (32 * _242) + _240 + 288 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
    return memory
      from mem[64]
       len (32 * _452) + (32 * _388) + (32 * _242) + _240 + -mem[64] + 288
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
                    staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            mem[mem[64] + 32] = (32 * _273) + 128
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            mem[_274 + 32] = (32 * _276) + 128
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            mem[_280 + 32] = (32 * _282) + 128
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
        mem[mem[64] + 32] = (32 * _288) + 128
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
        staticcall arg1.allPairs(uint256 arg1) with:
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
    mem[mem[64] + 32] = (32 * _291) + 128
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

function sub_2b8c8319(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0] - 1:
        if arg3 < arg2:
            mem[256 len 4096] = mem[128 len 64], 0, 128, mem[256 len 3968]
            return 128, 
                   4256,
                   8384,
                   0,
                   128,
                   mem[256 len 4096],
                   128,
                   4256,
                   mem[160],
                   0,
                   128,
                   mem[256 len 3968],
                   128,
                   4256,
                   8384,
                   0,
                   128,
                   mem[256 len 3968]
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
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx - arg2 < mem[96]
                        require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                        require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                        mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
                        mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
                    mem[(98 * arg3) + (-98 * arg2) + 290] = 128
                    mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
                    _468 = mem[96]
                    mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
                    mem[(32 * _468) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
                    _829 = mem[(32 * arg3 + -arg2 + 1) + 128]
                    mem[(32 * _468) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                    mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _829) + (32 * _468) + 192
                    mem[(32 * _829) + (32 * _468) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
                    _966 = mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * _829) + (32 * _468) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                    return 128, 
                           mem[(98 * arg3) + (-98 * arg2) + 322],
                           (32 * _829) + (32 * _468) + 192,
                           block.number,
                           mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _966) + (32 * _829) + (32 * _468) + 96]
                mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
                idx = arg2
                while idx <= arg3:
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx - arg2 < mem[96]
                    require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                    require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
                    mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
                mem[(98 * arg3) + (-98 * arg2) + 290] = 128
                mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
                _472 = mem[96]
                mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
                mem[(32 * _472) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
                _832 = mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * _472) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _832) + (32 * _472) + 192
                mem[(32 * _832) + (32 * _472) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
                _969 = mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * _832) + (32 * _472) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                return 128, 
                       mem[(98 * arg3) + (-98 * arg2) + 322],
                       (32 * _832) + (32 * _472) + 192,
                       block.number,
                       mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _969) + (32 * _832) + (32 * _472) + 96]
            mem[(32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            require arg3 + -arg2 + 1 <= test266151307()
            mem[(64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
            mem[64] = (98 * arg3) + (-98 * arg2) + 290
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx - arg2 < mem[96]
                    require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                    require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
                    mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
                mem[(98 * arg3) + (-98 * arg2) + 290] = 128
                mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
                _476 = mem[96]
                mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
                mem[(32 * _476) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
                _835 = mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * _476) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _835) + (32 * _476) + 192
                mem[(32 * _835) + (32 * _476) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
                _972 = mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * _835) + (32 * _476) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                return 128, 
                       mem[(98 * arg3) + (-98 * arg2) + 322],
                       (32 * _835) + (32 * _476) + 192,
                       block.number,
                       mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _972) + (32 * _835) + (32 * _476) + 96]
            mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
            mem[(98 * arg3) + (-98 * arg2) + 290] = 128
            mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
            _480 = mem[96]
            mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
            mem[(32 * _480) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _838 = mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * _480) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
            mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _838) + (32 * _480) + 192
            mem[(32 * _838) + (32 * _480) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
            _975 = mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * _838) + (32 * _480) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
            return 128, 
                   mem[(98 * arg3) + (-98 * arg2) + 322],
                   (32 * _838) + (32 * _480) + 192,
                   block.number,
                   mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _975) + (32 * _838) + (32 * _480) + 96]
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
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx - arg2 < mem[96]
                    require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                    require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                    mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
                    mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
                mem[(98 * arg3) + (-98 * arg2) + 290] = 128
                mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
                _484 = mem[96]
                mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
                mem[(32 * _484) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
                _841 = mem[(32 * arg3 + -arg2 + 1) + 128]
                mem[(32 * _484) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
                mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _841) + (32 * _484) + 192
                mem[(32 * _841) + (32 * _484) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
                _978 = mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * _841) + (32 * _484) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
                return 128, 
                       mem[(98 * arg3) + (-98 * arg2) + 322],
                       (32 * _841) + (32 * _484) + 192,
                       block.number,
                       mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _978) + (32 * _841) + (32 * _484) + 96]
            mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
            mem[(98 * arg3) + (-98 * arg2) + 290] = 128
            mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
            _488 = mem[96]
            mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
            mem[(32 * _488) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _844 = mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * _488) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
            mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _844) + (32 * _488) + 192
            mem[(32 * _844) + (32 * _488) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
            _981 = mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * _844) + (32 * _488) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
            return 128, 
                   mem[(98 * arg3) + (-98 * arg2) + 322],
                   (32 * _844) + (32 * _488) + 192,
                   block.number,
                   mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _981) + (32 * _844) + (32 * _488) + 96]
        mem[(32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        require arg3 + -arg2 + 1 <= test266151307()
        mem[(64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
        mem[64] = (98 * arg3) + (-98 * arg2) + 290
        if not arg3 + -arg2 + 1:
            idx = arg2
            while idx <= arg3:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
                require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
                mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
                mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
            mem[(98 * arg3) + (-98 * arg2) + 290] = 128
            mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
            _492 = mem[96]
            mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
            mem[(32 * _492) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
            _847 = mem[(32 * arg3 + -arg2 + 1) + 128]
            mem[(32 * _492) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
            mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _847) + (32 * _492) + 192
            mem[(32 * _847) + (32 * _492) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
            _984 = mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * _847) + (32 * _492) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
            return 128, 
                   mem[(98 * arg3) + (-98 * arg2) + 322],
                   (32 * _847) + (32 * _492) + 192,
                   block.number,
                   mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _984) + (32 * _847) + (32 * _492) + 96]
        mem[(64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        idx = arg2
        while idx <= arg3:
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(98 * arg3) + (-98 * arg2) + 290 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx - arg2 < mem[96]
            require idx - arg2 < mem[(32 * arg3 + -arg2 + 1) + 128]
            require idx - arg2 < mem[(64 * arg3 + -arg2 + 1) + 160]
            mem[(32 * idx - arg2) + (64 * arg3 + -arg2 + 1) + 192] = uint32(ext_call.return_data[64])
            mem[(32 * idx - arg2) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(98 * arg3) + (-98 * arg2) + 386] = block.number
        mem[(98 * arg3) + (-98 * arg2) + 290] = 128
        mem[(98 * arg3) + (-98 * arg2) + 418] = mem[96]
        _496 = mem[96]
        mem[(98 * arg3) + (-98 * arg2) + 450 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(98 * arg3) + (-98 * arg2) + 322] = (32 * mem[96]) + 160
        mem[(32 * _496) + (98 * arg3) + (-98 * arg2) + 450] = mem[(32 * arg3 + -arg2 + 1) + 128]
        _850 = mem[(32 * arg3 + -arg2 + 1) + 128]
        mem[(32 * _496) + (98 * arg3) + (-98 * arg2) + 482 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
        mem[(98 * arg3) + (-98 * arg2) + 354] = (32 * _850) + (32 * _496) + 192
        mem[(32 * _850) + (32 * _496) + (98 * arg3) + (-98 * arg2) + 482] = mem[(64 * arg3 + -arg2 + 1) + 160]
        _987 = mem[(64 * arg3 + -arg2 + 1) + 160]
        mem[(32 * _850) + (32 * _496) + (98 * arg3) + (-98 * arg2) + 514 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])] = mem[(64 * arg3 + -arg2 + 1) + 192 len floor32(mem[(64 * arg3 + -arg2 + 1) + 160])]
        return 128, 
               mem[(98 * arg3) + (-98 * arg2) + 322],
               (32 * _850) + (32 * _496) + 192,
               block.number,
               mem[(98 * arg3) + (-98 * arg2) + 418 len (32 * _987) + (32 * _850) + (32 * _496) + 96]
    if ext_call.return_data[0] - 1 < arg2:
        mem[256 len 4096] = mem[128 len 64], 0, 128, mem[256 len 3968]
        return 128, 
               4256,
               8384,
               0,
               128,
               mem[256 len 4096],
               128,
               4256,
               mem[160],
               0,
               128,
               mem[256 len 3968],
               128,
               4256,
               8384,
               0,
               128,
               mem[256 len 3968]
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
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx - arg2 < mem[96]
                    require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                    require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                    mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
                    mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _501 = mem[64]
                mem[mem[64] + 96] = block.number
                mem[mem[64]] = 128
                mem[_501 + 128] = mem[96]
                _503 = mem[96]
                mem[_501 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_501 + 32] = (32 * mem[96]) + 160
                mem[(32 * _503) + _501 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
                _856 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
                mem[(32 * _503) + _501 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
                mem[_501 + 64] = (32 * _856) + (32 * _503) + 192
                mem[(32 * _856) + (32 * _503) + _501 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
                _992 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * _856) + (32 * _503) + _501 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
                return memory
                  from mem[64]
                   len (32 * _992) + (32 * _856) + (32 * _503) + _501 + -mem[64] + 224
            mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
                mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _505 = mem[64]
            mem[mem[64] + 96] = block.number
            mem[mem[64]] = 128
            mem[_505 + 128] = mem[96]
            _507 = mem[96]
            mem[_505 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_505 + 32] = (32 * mem[96]) + 160
            mem[(32 * _507) + _505 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            _859 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * _507) + _505 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
            mem[_505 + 64] = (32 * _859) + (32 * _507) + 192
            mem[(32 * _859) + (32 * _507) + _505 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            _995 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * _859) + (32 * _507) + _505 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
            return memory
              from mem[64]
               len (32 * _995) + (32 * _859) + (32 * _507) + _505 + -mem[64] + 224
        mem[(32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[(64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
        mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
                mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _509 = mem[64]
            mem[mem[64] + 96] = block.number
            mem[mem[64]] = 128
            mem[_509 + 128] = mem[96]
            _511 = mem[96]
            mem[_509 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_509 + 32] = (32 * mem[96]) + 160
            mem[(32 * _511) + _509 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            _862 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * _511) + _509 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
            mem[_509 + 64] = (32 * _862) + (32 * _511) + 192
            mem[(32 * _862) + (32 * _511) + _509 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            _998 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * _862) + (32 * _511) + _509 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
            return memory
              from mem[64]
               len (32 * _998) + (32 * _862) + (32 * _511) + _509 + -mem[64] + 224
        mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx - arg2 < mem[96]
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _513 = mem[64]
        mem[mem[64] + 96] = block.number
        mem[mem[64]] = 128
        mem[_513 + 128] = mem[96]
        _515 = mem[96]
        mem[_513 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_513 + 32] = (32 * mem[96]) + 160
        mem[(32 * _515) + _513 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _865 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * _515) + _513 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
        mem[_513 + 64] = (32 * _865) + (32 * _515) + 192
        mem[(32 * _865) + (32 * _515) + _513 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        _1001 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * _865) + (32 * _515) + _513 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
        return memory
          from mem[64]
           len (32 * _1001) + (32 * _865) + (32 * _515) + _513 + -mem[64] + 224
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
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx - arg2 < mem[96]
                require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
                require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
                mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
                mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _517 = mem[64]
            mem[mem[64] + 96] = block.number
            mem[mem[64]] = 128
            mem[_517 + 128] = mem[96]
            _519 = mem[96]
            mem[_517 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_517 + 32] = (32 * mem[96]) + 160
            mem[(32 * _519) + _517 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            _868 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
            mem[(32 * _519) + _517 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
            mem[_517 + 64] = (32 * _868) + (32 * _519) + 192
            mem[(32 * _868) + (32 * _519) + _517 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            _1004 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * _868) + (32 * _519) + _517 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
            return memory
              from mem[64]
               len (32 * _1004) + (32 * _868) + (32 * _519) + _517 + -mem[64] + 224
        mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx - arg2 < mem[96]
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _521 = mem[64]
        mem[mem[64] + 96] = block.number
        mem[mem[64]] = 128
        mem[_521 + 128] = mem[96]
        _523 = mem[96]
        mem[_521 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_521 + 32] = (32 * mem[96]) + 160
        mem[(32 * _523) + _521 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _871 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * _523) + _521 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
        mem[_521 + 64] = (32 * _871) + (32 * _523) + 192
        mem[(32 * _871) + (32 * _523) + _521 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        _1007 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * _871) + (32 * _523) + _521 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
        return memory
          from mem[64]
           len (32 * _1007) + (32 * _871) + (32 * _523) + _521 + -mem[64] + 224
    mem[(32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[(64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
    mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx - arg2 < mem[96]
            require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
            require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
            mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
            mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _525 = mem[64]
        mem[mem[64] + 96] = block.number
        mem[mem[64]] = 128
        mem[_525 + 128] = mem[96]
        _527 = mem[96]
        mem[_525 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_525 + 32] = (32 * mem[96]) + 160
        mem[(32 * _527) + _525 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        _874 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
        mem[(32 * _527) + _525 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
        mem[_525 + 64] = (32 * _874) + (32 * _527) + 192
        mem[(32 * _874) + (32 * _527) + _525 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        _1010 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * _874) + (32 * _527) + _525 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
        return memory
          from mem[64]
           len (32 * _1010) + (32 * _874) + (32 * _527) + _525 + -mem[64] + 224
    mem[(64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    idx = arg2
    while idx <= ext_call.return_data[0] - 1:
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx - arg2 < mem[96]
        require idx - arg2 < mem[(32 * ext_call.return_data[0] - arg2) + 128]
        require idx - arg2 < mem[(64 * ext_call.return_data[0] - arg2) + 160]
        mem[(32 * idx - arg2) + (64 * ext_call.return_data[0] - arg2) + 192] = uint32(ext_call.return_data[64])
        mem[(32 * idx - arg2) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx - arg2) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _529 = mem[64]
    mem[mem[64] + 96] = block.number
    mem[mem[64]] = 128
    mem[_529 + 128] = mem[96]
    _531 = mem[96]
    mem[_529 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_529 + 32] = (32 * mem[96]) + 160
    mem[(32 * _531) + _529 + 160] = mem[(32 * ext_call.return_data[0] - arg2) + 128]
    _877 = mem[(32 * ext_call.return_data[0] - arg2) + 128]
    mem[(32 * _531) + _529 + 192 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])] = mem[(32 * ext_call.return_data[0] - arg2) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg2) + 128])]
    mem[_529 + 64] = (32 * _877) + (32 * _531) + 192
    mem[(32 * _877) + (32 * _531) + _529 + 192] = mem[(64 * ext_call.return_data[0] - arg2) + 160]
    _1013 = mem[(64 * ext_call.return_data[0] - arg2) + 160]
    mem[(32 * _877) + (32 * _531) + _529 + 224 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])] = mem[(64 * ext_call.return_data[0] - arg2) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg2) + 160])]
    return memory
      from mem[64]
       len (32 * _1013) + (32 * _877) + (32 * _531) + _529 + -mem[64] + 224
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
                        staticcall arg1.allPairs(uint256 arg1) with:
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
                    staticcall arg1.allPairs(uint256 arg1) with:
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
                    staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
                    staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
                    staticcall arg1.allPairs(uint256 arg1) with:
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
                mem[mem[64] + 32] = (32 * _599) + 128
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
                staticcall arg1.allPairs(uint256 arg1) with:
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
            mem[mem[64] + 32] = (32 * _615) + 128
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
            staticcall arg1.allPairs(uint256 arg1) with:
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
        staticcall arg1.allPairs(uint256 arg1) with:
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
