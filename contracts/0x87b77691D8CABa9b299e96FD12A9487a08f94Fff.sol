contract main {




// =====================  Runtime code  =====================


#
#  - sub_380a7a56(?)
#
address wFTMAddress;
address sub_f13ffd92Address;
address sub_68dce878Address;
address sub_1f01866fAddress;
address sub_1da0087cAddress;
address sub_c97a30a9Address;

function wFTM() payable {
    return wFTMAddress
}

function sub_1da0087c(?) payable {
    return sub_1da0087cAddress
}

function sub_1f01866f(?) payable {
    return sub_1f01866fAddress
}

function sub_68dce878(?) payable {
    return sub_68dce878Address
}

function sub_c97a30a9(?) payable {
    return sub_c97a30a9Address
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

function sub_362ae862(?) payable {
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1da0087cAddress)
    staticcall sub_1da0087cAddress.getReserves() with:
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
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_5e0bdd70(?) payable {
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
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
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
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
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_ae1b3053(?) payable {
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.getReserves() with:
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
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32])
}



}
