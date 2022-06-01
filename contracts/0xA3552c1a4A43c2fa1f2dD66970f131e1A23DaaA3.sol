contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f32e9de6(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require 0 < ('cd', 4).length
    require 0 < ('cd', 36).length
    require 0 < ('cd', 68).length
    if address(('cd', 36)[0]) == address(('cd', 68)[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if address(('cd', 36)[0]) < address(('cd', 68)[0]):
        if not address(('cd', 36)[0]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 0 < ext_call.return_data[0]
        require 0 < ext_call.return_data[0]
        if address(('cd', 36)[0]) == address(('cd', 36)[0]):
            mem[192 len 2048] = ext_call.return_data[0] << 144, 64, mem[192 len 1984]
        else:
            mem[192 len 2048] = ext_call.return_data[32] << 144, 64, mem[192 len 1984]
    else:
        if not address(('cd', 68)[0]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 0 < ext_call.return_data[0]
        require 0 < ext_call.return_data[0]
        if address(('cd', 36)[0]) == address(('cd', 68)[0]):
            mem[192 len 2048] = ext_call.return_data[0] << 144, 64, mem[192 len 1984]
        else:
            mem[192 len 2048] = ext_call.return_data[32] << 144, 64, mem[192 len 1984]
    return 64, 2144, 64, mem[192 len 2048], 64, 2144, 64 >> 256, mem[2336 len 1984]
}



}
