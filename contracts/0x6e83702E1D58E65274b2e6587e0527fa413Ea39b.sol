contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_32]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_33]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
