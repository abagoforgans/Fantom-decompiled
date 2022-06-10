contract main {




// =====================  Runtime code  =====================


address rayAddress;

function ray() payable {
    return rayAddress
}

function _fallback() payable {
    revert
}

function sub_d7d7a001(?) payable {
    require ext_code.size(rayAddress)
    call rayAddress.summon(uint256 arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
