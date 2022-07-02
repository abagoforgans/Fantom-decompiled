contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_16c3f04b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 0, 'min'
    mem[ceil32(return_data.size) + 196 len 96] = 2160380644, arg1, arg2, mem[ceil32(return_data.size) + 196 len 28]
    delegate 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
}



}
