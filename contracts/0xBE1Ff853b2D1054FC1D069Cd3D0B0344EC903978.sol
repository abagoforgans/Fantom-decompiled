contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_99c41ae6(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return eth.balance(arg1), ext_call.return_data[0]
}



}
