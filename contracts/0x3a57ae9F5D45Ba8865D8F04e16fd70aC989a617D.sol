contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getValue() payable {
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, 0x5ce92d0d36a3fe4b7ecc57a6b26f2f43765869a8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
