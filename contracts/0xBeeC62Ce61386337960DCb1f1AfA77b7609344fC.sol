contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_08b87c3c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function craft(uint256 arg1, uint8 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xee1a2ea55945223404d73c0bbe57f540bbaad0d8)
    staticcall 0xee1a2ea55945223404d73c0bbe57f540bbaad0d8.simulate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args 0, uint32(arg1), arg2 << 248, arg3 << 248, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[0]:
        require ext_code.size(0xee1a2ea55945223404d73c0bbe57f540bbaad0d8)
        call 0xee1a2ea55945223404d73c0bbe57f540bbaad0d8.craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args arg1, arg2 << 248, arg3 << 248, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}



}
