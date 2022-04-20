contract main {




// =====================  Runtime code  =====================


address sAddress;

function s() payable {
    return sAddress
}

function _fallback() payable {
    revert
}

function sub_8e45cf1b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sAddress)
    call sAddress.checkTotalEthraisedOfPresale(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
