contract main {




// =====================  Runtime code  =====================


address sAddress;

function s() payable {
    return sAddress
}

function _fallback() payable {
    revert
}

function getValue() payable {
    require ext_code.size(sAddress)
    staticcall sAddress.0x3c6bb436 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function saveValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sAddress)
    call sAddress.0x55241077 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
