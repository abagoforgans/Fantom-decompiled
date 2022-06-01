contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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

function sub_e156df13(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[416 len 160] = code.data[1762 len 160]
    mem[576 len 160] = code.data[1762 len 160]
    require 1 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[1]))
    staticcall address(('cd', 4)[1]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[1]))
    staticcall address(('cd', 4)[1]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[36]:
        require idx < ('cd', 4).length
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[841 len 27]
        if not address(ext_call.return_data[0]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[736 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < 5
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            mem[(32 * idx) + 576] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + 416] = Mask(112, 0, ext_call.return_data[0])
        else:
            mem[(32 * idx) + 576] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * idx) + 416] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    return mem[416 len 160], mem[576 len 160]
}



}
