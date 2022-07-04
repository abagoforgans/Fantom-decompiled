contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_52e407e3(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x4e0c1d1d with:
            gas gas_remaining wei
           args ext_call.return_data[0 len 28], ext_call.return_data[28 len 4]
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 'min'
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.0x8b3d6217 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function sub_16c3f04b(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x4e0c1d1d with:
            gas gas_remaining wei
           args ext_call.return_data[0 len 28], ext_call.return_data[28 len 4]
    if ext_call.return_data[0] < 19:
        revert with 0, 'min'
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args 0, 'crafting'
    staticcall 'console.log'.0x4e0c1d1d with:
            gas gas_remaining wei
           args ext_call.return_data[0 len 28], ext_call.return_data[28 len 4]
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.next_item() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 9, Mask(72, 0, 'next_item')
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.craft(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
