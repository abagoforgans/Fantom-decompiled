contract main {




// =====================  Runtime code  =====================


const sub_bdbf506b(?) = ext_call.return_data[0]


function _fallback() payable {
    revert
}

function sub_983f0c61(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b695361b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fb5ddb25(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04cd14ff(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_44aa2a19(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
    call 0x00000000000147629f002966c4f2adc1cb4f0aca.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_d6163012(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.0xcc0db0b7 with:
            gas gas_remaining wei
           args arg1, 520
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 520:
        revert with 0, 'min'
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function sub_52e407e3(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.0x8b3d6217 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[32] < 520:
        revert with 0, 'min'
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function sub_15f4f4d1(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.0xcc0db0b7 with:
            gas gas_remaining wei
           args arg1, 520
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 300:
        revert with 0, 'min'
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.craft(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_16c3f04b(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.0xcc0db0b7 with:
            gas gas_remaining wei
           args arg1, 520
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 520:
        revert with 0, 'min'
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.craft(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
