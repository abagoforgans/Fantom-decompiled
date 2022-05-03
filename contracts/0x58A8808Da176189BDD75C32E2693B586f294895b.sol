contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d8ff62c6(?) payable {
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0xe95dc522 with:
         gas gas_remaining wei
        args 0, 0, 1, 2 * 10^18, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return 123
}

function sub_f8e4f240(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x27e611fd27b276acbd5ffd632e5eaebec9761e40, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
