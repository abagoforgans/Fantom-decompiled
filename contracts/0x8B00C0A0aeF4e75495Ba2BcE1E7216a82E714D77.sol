contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
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
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(ext_call.return_data[64])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _52 = mem[(32 * arg1.length) + 128]
        s = mem[64] + 64
        idx = 0
        while idx < _52:
            _115 = mem[(32 * idx) + (32 * arg1.length) + 160]
            t = 0
            while t < 96:
                mem[2 * t] = mem[_115 + t]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    else:
        mem[64] = (64 * arg1.length) + 256
        mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
        mem[var12001] = (64 * arg1.length) + 160
        s = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (64 * arg1.length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _113 = mem[96]
        idx = 0
        while idx < _113:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(ext_call.return_data[64])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _119 = mem[(32 * arg1.length) + 128]
        s = mem[64] + 64
        idx = 0
        while idx < _119:
            _140 = mem[(32 * idx) + (32 * arg1.length) + 160]
            t = 0
            while t < 96:
                mem[2 * t] = mem[_140 + t]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
