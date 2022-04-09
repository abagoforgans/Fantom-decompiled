contract main {




// =====================  Runtime code  =====================


address wFTMAddress;
address sub_f13ffd92Address;
address sub_68dce878Address;

function wFTM() payable {
    return wFTMAddress
}

function sub_68dce878(?) payable {
    return sub_68dce878Address
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
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_858c81cf(?) payable {
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_68dce878Address)
    staticcall sub_68dce878Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if wFTMAddress != address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (10^18 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}



}
