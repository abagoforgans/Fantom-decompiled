contract main {




// =====================  Runtime code  =====================


address governanceAddress;

function governance() payable {
    return governanceAddress
}

function _fallback() payable {
    revert
}

function sub_f7eec809(?) payable {
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0x84cba5b6f8ff50bc576bc7830f38c3e4a62cfb8c, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
