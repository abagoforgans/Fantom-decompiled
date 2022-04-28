contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f06efa59(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg4.length
    mem[(32 * arg2.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg4.length) + 160] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _12 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _14 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg4.length) + 160] = 0x156e29f600000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg4.length) + 164] = address(_12)
        mem[(32 * arg2.length) + (32 * arg4.length) + 196] = arg3
        mem[(32 * arg2.length) + (32 * arg4.length) + 228] = _14
        require ext_code.size(arg1)
        call arg1.0x156e29f6 with:
             gas gas_remaining wei
            args address(_12), arg3, _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_5120555b(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _19 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _21 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 0x156e29f600000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 196] = address(_19)
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = 0
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = _21
        require ext_code.size(arg1)
        call arg1.0x156e29f6 with:
             gas gas_remaining wei
            args address(_19), 0, _21
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _27 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 0x156e29f600000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 196] = address(_25)
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = 1
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = _27
        require ext_code.size(arg1)
        call arg1.0x156e29f6 with:
             gas gas_remaining wei
            args address(_25), 1, _27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
