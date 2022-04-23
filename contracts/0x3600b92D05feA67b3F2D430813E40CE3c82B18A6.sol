contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4d99c63b(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.allTokenHashesLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.allTokenHashes(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.tokenType(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(ext_call.return_data[0]) != 1:
            if uint8(ext_call.return_data[0]) != 2:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        if uint8(ext_call.return_data[0]) != 2:
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        idx = idx + 1
        s = s + 1
        t = t + 1
        continue 
    require t <= test266151307()
    if t:
        mem[128 len 32 * t] = call.data[calldata.size len 32 * t]
    require s <= test266151307()
    mem[(32 * t) + 128] = s
    if s:
        mem[(32 * t) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.allTokenHashes(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.tokenType(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * t) + (32 * s) + 164] = arg3
        mem[(32 * t) + (32 * s) + 196] = ext_call.return_data[0]
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg3), ext_call.return_data[0]
        mem[(32 * t) + (32 * s) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if 1 == uint8(ext_call.return_data[0]):
                require 0 < mem[96]
                mem[128] = ext_call.return_data[0]
            if 2 == uint8(ext_call.return_data[0]):
                require 0 < mem[(32 * t) + 128]
                mem[(32 * t) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * t) + (32 * s) + 160] = 64
    mem[(32 * t) + (32 * s) + 224] = mem[96]
    mem[(32 * t) + (32 * s) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(32 * t) + (32 * s) + 192] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + (32 * t) + (32 * s) + 256] = mem[(32 * t) + 128]
    mem[(32 * mem[96]) + (32 * t) + (32 * s) + 288 len floor32(mem[(32 * t) + 128])] = mem[(32 * t) + 160 len floor32(mem[(32 * t) + 128])]
    return Array(len=mem[96], data=mem[(32 * t) + (32 * s) + 256 len (32 * mem[(32 * t) + 128]) + (32 * mem[96]) + 32]), 
           (32 * mem[96]) + 96
}



}
