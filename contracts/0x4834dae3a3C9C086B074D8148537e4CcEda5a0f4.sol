contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function getReserves(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function getReservesByBatch(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _92 = mem[64]
            mem[mem[64] + 64] = 0
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _94 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _94) + 128
            mem[(32 * _94) + _92 + 128] = mem[(64 * arg1.length) + 160]
            _161 = mem[(64 * arg1.length) + 160]
            mem[(32 * _94) + _92 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _161) + (32 * _94) + _92 + -mem[64] + 160
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1187 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _98 = mem[64]
        mem[mem[64] + 64] = 0
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _100 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _100) + 128
        mem[(32 * _100) + _98 + 128] = mem[(64 * arg1.length) + 160]
        _164 = mem[(64 * arg1.length) + 160]
        mem[(32 * _100) + _98 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _164) + (32 * _100) + _98 + -mem[64] + 160
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[1187 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[64] = (98 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _104 = mem[64]
        mem[mem[64] + 64] = 0
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _106 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _106) + 128
        mem[(32 * _106) + _104 + 128] = mem[(64 * arg1.length) + 160]
        _167 = mem[(64 * arg1.length) + 160]
        mem[(32 * _106) + _104 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _167) + (32 * _106) + _104 + -mem[64] + 160
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1187 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(64 * arg1.length) + 160]
        mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _110 = mem[64]
    mem[mem[64] + 64] = 0
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    _112 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _112) + 128
    mem[(32 * _112) + _110 + 128] = mem[(64 * arg1.length) + 160]
    _170 = mem[(64 * arg1.length) + 160]
    mem[(32 * _112) + _110 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from mem[64]
       len (32 * _170) + (32 * _112) + _110 + -mem[64] + 160
}



}
