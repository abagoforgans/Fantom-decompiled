contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c3fc44b6(?) payable {
    require calldata.size - 4 >= 256
    mem[96 len 64] = code.data[2349 len 64]
    mem[160 len 64] = code.data[2349 len 64]
    mem[224 len 64] = code.data[2349 len 64]
    idx = cd[196]
    while idx < cd[228]:
        require cd[196] < 2
        mem[(32 * cd[196]) + 96] = address(cd[((32 * cd[196]) + 4)])
        mem[(32 * cd[196]) + 160] = address(cd[((32 * cd[196]) + 68)])
        mem[(32 * cd[196]) + 224] = address(cd[((32 * cd[196]) + 132)])
        idx = idx + 1
        continue 
    return mem[96 len 64], mem[160 len 64], mem[224 len 64]
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_209afece(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[100]
    while idx < cd[132]:
        require cd[100] < ('cd', 4).length
        require cd[100] < ('cd', 36).length
        require cd[100] < ('cd', 68).length
        if address(cd[((32 * cd[100]) + cd[36] + 36)]) == address(cd[((32 * cd[100]) + cd[68] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if address(cd[((32 * cd[100]) + cd[36] + 36)]) < address(cd[((32 * cd[100]) + cd[68] + 36)]):
            if not address(cd[((32 * cd[100]) + cd[36] + 36)]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(cd[((32 * cd[100]) + cd[4] + 36)]))
            staticcall address(cd[((32 * cd[100]) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            if address(cd[((32 * cd[100]) + cd[36] + 36)]) == address(cd[((32 * cd[100]) + cd[36] + 36)]):
                mem[(32 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            else:
                mem[(32 * idx) + 128] = Mask(112, 0, ext_call.return_data[32])
        else:
            if not address(cd[((32 * cd[100]) + cd[68] + 36)]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(cd[((32 * cd[100]) + cd[4] + 36)]))
            staticcall address(cd[((32 * cd[100]) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < ext_call.return_data[0]
            require idx < ext_call.return_data[0]
            if address(cd[((32 * cd[100]) + cd[36] + 36)]) == address(cd[((32 * cd[100]) + cd[68] + 36)]):
                mem[(32 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            else:
                mem[(32 * idx) + 128] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    mem[192 len 2048] = mem[128], 64, mem[192 len 1984]
    return 64, 2144, 64, mem[192 len 2048], 64, 2144, 64 >> 256, mem[2336 len 1984]
}



}
