contract main {




// =====================  Runtime code  =====================


address wFTMAddress;
address sub_f13ffd92Address;

function wFTM() payable {
    return wFTMAddress
}

function sub_f13ffd92(?) payable {
    return sub_f13ffd92Address
}

function _fallback() payable {
    revert
}

function sub_5a2f7ed3(?) payable {
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] / ext_call.return_data[32])
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (ext_call.return_data[32] / ext_call.return_data[0])
}



}
