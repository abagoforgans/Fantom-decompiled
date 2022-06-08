contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_aca812ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = _9
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_a7c128b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    s = 0
    t = 0
    u = 1
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(stor0)
        staticcall stor0.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _17
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp - ext_call.return_data[0] >= 0:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if t <= block.timestamp - ext_call.return_data[0]:
            idx = idx + 1
            s = s
            t = t
            u = 0
            continue 
        require idx < arg1.length
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        t = block.timestamp - ext_call.return_data[0]
        u = 0
        continue 
    return bool(u), t, s
}



}
