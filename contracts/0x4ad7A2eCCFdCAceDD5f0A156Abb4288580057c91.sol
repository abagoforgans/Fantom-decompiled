contract main {




// =====================  Runtime code  =====================


#
#  - sub_9c0a2b16(?)
#
address wFTMAddress;
address sub_f13ffd92Address;
address sub_1f01866fAddress;
address sub_1da0087cAddress;
address sub_c97a30a9Address;
address sub_eeacff2dAddress;
address sub_cbe4c5fbAddress;
address sub_a3d388a6Address;
address sub_f954815bAddress;
address sub_7d79e49cAddress;
address sub_bbbd8adaAddress;
address sub_937ec6b9Address;
address sub_057b5bafAddress;
address sub_964a15a7Address;
address sub_d7305c0dAddress;
address sub_2e71bc01Address;
address chefAddress;
address sub_d768ff69Address;
address booAddress;
address sub_2d2e3a93Address;
address iceAddress;
address wbtcAddress;
address wethAddress;
address sub_825db985Address;
address sub_6b5499f8Address;
address sub_90c83323Address;

function wFTM() payable {
    return wFTMAddress
}

function sub_057b5baf(?) payable {
    return sub_057b5bafAddress
}

function sub_1da0087c(?) payable {
    return sub_1da0087cAddress
}

function sub_1f01866f(?) payable {
    return sub_1f01866fAddress
}

function chef() payable {
    return chefAddress
}

function sub_2d2e3a93(?) payable {
    return sub_2d2e3a93Address
}

function sub_2e71bc01(?) payable {
    return sub_2e71bc01Address
}

function wbtc() payable {
    return wbtcAddress
}

function weth() payable {
    return wethAddress
}

function boo() payable {
    return booAddress
}

function ice() payable {
    return iceAddress
}

function sub_6b5499f8(?) payable {
    return sub_6b5499f8Address
}

function sub_7d79e49c(?) payable {
    return sub_7d79e49cAddress
}

function sub_825db985(?) payable {
    return sub_825db985Address
}

function sub_90c83323(?) payable {
    return sub_90c83323Address
}

function sub_937ec6b9(?) payable {
    return sub_937ec6b9Address
}

function sub_964a15a7(?) payable {
    return sub_964a15a7Address
}

function sub_a3d388a6(?) payable {
    return sub_a3d388a6Address
}

function sub_bbbd8ada(?) payable {
    return sub_bbbd8adaAddress
}

function sub_c97a30a9(?) payable {
    return sub_c97a30a9Address
}

function sub_cbe4c5fb(?) payable {
    return sub_cbe4c5fbAddress
}

function sub_d7305c0d(?) payable {
    return sub_d7305c0dAddress
}

function sub_d768ff69(?) payable {
    return sub_d768ff69Address
}

function sub_eeacff2d(?) payable {
    return sub_eeacff2dAddress
}

function sub_f13ffd92(?) payable {
    return sub_f13ffd92Address
}

function sub_f954815b(?) payable {
    return sub_f954815bAddress
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

function sub_0a53f508(?) payable {
    require ext_code.size(wFTMAddress)
    staticcall wFTMAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function getBnbPrice() payable {
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.getReserves() with:
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

function getSushiPrice() payable {
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.getReserves() with:
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

function sub_3fc1d478(?) payable {
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.getReserves() with:
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
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
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

function sub_8ba991fb(?) payable {
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.getReserves() with:
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
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_218ebdce(?) payable {
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.getReserves() with:
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
    if wFTMAddress == address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0])
}

function sub_a4e41a34(?) payable {
    require ext_code.size(booAddress)
    staticcall booAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_efca6d74(?) payable {
    require ext_code.size(iceAddress)
    staticcall iceAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_6b116e73(?) payable {
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
    require ext_code.size(sub_964a15a7Address)
    staticcall sub_964a15a7Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_964a15a7Address)
    staticcall sub_964a15a7Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_964a15a7Address)
    staticcall sub_964a15a7Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (10^18 * ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (10^18 * ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_4b8ba6ef(?) payable {
    require ext_code.size(sub_d768ff69Address)
    staticcall sub_d768ff69Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_b6ce36b1(?) payable {
    require ext_code.size(sub_2d2e3a93Address)
    staticcall sub_2d2e3a93Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_723861d9(?) payable {
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
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[32] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_77b35efb(?) payable {
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
    require ext_code.size(sub_057b5bafAddress)
    staticcall sub_057b5bafAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_057b5bafAddress)
    staticcall sub_057b5bafAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_057b5bafAddress)
    staticcall sub_057b5bafAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[32] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_dfb086d9(?) payable {
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
    require ext_code.size(sub_937ec6b9Address)
    staticcall sub_937ec6b9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_937ec6b9Address)
    staticcall sub_937ec6b9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_937ec6b9Address)
    staticcall sub_937ec6b9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[32] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_39dbd64a(?) payable {
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
        require ext_code.size(sub_6b5499f8Address)
        staticcall sub_6b5499f8Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, 0xe07363e28a4068bd46e4cd4de3faf36220bb23fa
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_6b5499f8Address)
    staticcall sub_6b5499f8Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, 0xe07363e28a4068bd46e4cd4de3faf36220bb23fa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_f40a8e0d(?) payable {
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
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
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, 0xfee2feb62d879f90fa1a235848e2c304f124c7c2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, 0xfee2feb62d879f90fa1a235848e2c304f124c7c2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18)
}

function sub_3740496f(?) payable {
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
    require ext_code.size(sub_964a15a7Address)
    staticcall sub_964a15a7Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_964a15a7Address)
    staticcall sub_964a15a7Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_964a15a7Address)
    staticcall sub_964a15a7Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 3, 0xc5e4c5abc051d196c930378ba45f482655cdb50a
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_90c83323Address)
    staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 3, 0xc5e4c5abc051d196c930378ba45f482655cdb50a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (10^18 * ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (10^18 * ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_49f064b6(?) payable {
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
    require ext_code.size(sub_937ec6b9Address)
    staticcall sub_937ec6b9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_937ec6b9Address)
    staticcall sub_937ec6b9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_937ec6b9Address)
    staticcall sub_937ec6b9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, 0x77c7d74a3206fc123eafbe9ee5f4f16382b7de0d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[32] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_90c83323Address)
    staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, 0x77c7d74a3206fc123eafbe9ee5f4f16382b7de0d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_89c6b345(?) payable {
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
    require ext_code.size(sub_057b5bafAddress)
    staticcall sub_057b5bafAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_057b5bafAddress)
    staticcall sub_057b5bafAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_057b5bafAddress)
    staticcall sub_057b5bafAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 2, 0x89defdc85a322f15a5e121d0b27b80fdc94eea44
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[32] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_90c83323Address)
    staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 2, 0x89defdc85a322f15a5e121d0b27b80fdc94eea44
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_e2118147(?) payable {
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
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f13ffd92Address)
    staticcall sub_f13ffd92Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 4, 0xae9391846cecf939c5f580c766430b63cee88443
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[32] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(1000000000000 * 10^18 * ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 4, 0xae9391846cecf939c5f580c766430b63cee88443
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (1000000000000 * 10^18 * ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_069e4653(?) payable {
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
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.getReserves() with:
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
        require ext_code.size(sub_2e71bc01Address)
        staticcall sub_2e71bc01Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_2e71bc01Address)
        staticcall sub_2e71bc01Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2e71bc01Address)
        staticcall sub_2e71bc01Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_2e71bc01Address)
    staticcall sub_2e71bc01Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_2e71bc01Address)
    staticcall sub_2e71bc01Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2e71bc01Address)
    staticcall sub_2e71bc01Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_0b72b728(?) payable {
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
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.getReserves() with:
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
        require ext_code.size(sub_bbbd8adaAddress)
        staticcall sub_bbbd8adaAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_bbbd8adaAddress)
        staticcall sub_bbbd8adaAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bbbd8adaAddress)
        staticcall sub_bbbd8adaAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_380a7a56(?) payable {
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
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_4fe15905(?) payable {
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
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_5772e33d(?) payable {
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
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.getReserves() with:
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
        require ext_code.size(sub_f954815bAddress)
        staticcall sub_f954815bAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f954815bAddress)
        staticcall sub_f954815bAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f954815bAddress)
        staticcall sub_f954815bAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_6d581386(?) payable {
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
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
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
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_94d20bd1(?) payable {
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
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.getReserves() with:
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
        require ext_code.size(sub_a3d388a6Address)
        staticcall sub_a3d388a6Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_a3d388a6Address)
        staticcall sub_a3d388a6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3d388a6Address)
        staticcall sub_a3d388a6Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0])
}

function sub_54fdac2f(?) payable {
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
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.getReserves() with:
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
        require ext_code.size(sub_7d79e49cAddress)
        staticcall sub_7d79e49cAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_7d79e49cAddress)
        staticcall sub_7d79e49cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7d79e49cAddress)
        staticcall sub_7d79e49cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return ((ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18) / ext_call.return_data[0])
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return ((ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18) / ext_call.return_data[0])
}

function sub_bad7485e(?) payable {
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
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.getReserves() with:
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
    if wFTMAddress == address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_d7305c0dAddress)
        staticcall sub_d7305c0dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_d7305c0dAddress)
        staticcall sub_d7305c0dAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d7305c0dAddress)
        staticcall sub_d7305c0dAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return (2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return (2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_d7305c0dAddress)
    staticcall sub_d7305c0dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_d7305c0dAddress)
    staticcall sub_d7305c0dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d7305c0dAddress)
    staticcall sub_d7305c0dAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return (2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return (2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_d9be4508(?) payable {
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
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.getReserves() with:
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
    if wFTMAddress == address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_cbe4c5fbAddress)
        staticcall sub_cbe4c5fbAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_cbe4c5fbAddress)
        staticcall sub_cbe4c5fbAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_cbe4c5fbAddress)
        staticcall sub_cbe4c5fbAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return (2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0])
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return (2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0])
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return (2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[32] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return (2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_a1ff3d58(?) payable {
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_23df80bb(?) payable {
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
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.getReserves() with:
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
        require ext_code.size(sub_bbbd8adaAddress)
        staticcall sub_bbbd8adaAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_bbbd8adaAddress)
        staticcall sub_bbbd8adaAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bbbd8adaAddress)
        staticcall sub_bbbd8adaAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_825db985Address)
            staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 8, 0x71360a0ffad8e0fa0c2ce8a2c81c145c3bd9932e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 8, 0x71360a0ffad8e0fa0c2ce8a2c81c145c3bd9932e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bbbd8adaAddress)
    staticcall sub_bbbd8adaAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 8, 0x71360a0ffad8e0fa0c2ce8a2c81c145c3bd9932e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 8, 0x71360a0ffad8e0fa0c2ce8a2c81c145c3bd9932e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_48e2d66f(?) payable {
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
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.getReserves() with:
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
        require ext_code.size(sub_2e71bc01Address)
        staticcall sub_2e71bc01Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_2e71bc01Address)
        staticcall sub_2e71bc01Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2e71bc01Address)
        staticcall sub_2e71bc01Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_90c83323Address)
            staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 5, 0xd21308d247aa9ea6798a53fbd01a894b99077845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 5, 0xd21308d247aa9ea6798a53fbd01a894b99077845
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_2e71bc01Address)
    staticcall sub_2e71bc01Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_2e71bc01Address)
    staticcall sub_2e71bc01Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2e71bc01Address)
    staticcall sub_2e71bc01Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 5, 0xd21308d247aa9ea6798a53fbd01a894b99077845
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_90c83323Address)
    staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 5, 0xd21308d247aa9ea6798a53fbd01a894b99077845
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_959f7300(?) payable {
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
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.getReserves() with:
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
        require ext_code.size(sub_a3d388a6Address)
        staticcall sub_a3d388a6Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_a3d388a6Address)
        staticcall sub_a3d388a6Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3d388a6Address)
        staticcall sub_a3d388a6Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_825db985Address)
            staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 3, 0x2322f85dd0af3db5cb95e3ed4e75a5ed68a8a7fd
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 3, 0x2322f85dd0af3db5cb95e3ed4e75a5ed68a8a7fd
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3d388a6Address)
    staticcall sub_a3d388a6Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 3, 0x2322f85dd0af3db5cb95e3ed4e75a5ed68a8a7fd
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 3, 0x2322f85dd0af3db5cb95e3ed4e75a5ed68a8a7fd
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_d4950067(?) payable {
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
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1f01866fAddress)
        staticcall sub_1f01866fAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_90c83323Address)
            staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, 0x8c984de219f28cf0f84c411fe27ab406162eb51e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, 0x8c984de219f28cf0f84c411fe27ab406162eb51e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1f01866fAddress)
    staticcall sub_1f01866fAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, 0x8c984de219f28cf0f84c411fe27ab406162eb51e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_90c83323Address)
    staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, 0x8c984de219f28cf0f84c411fe27ab406162eb51e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_eba67395(?) payable {
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
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
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
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_825db985Address)
            staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, 0xe397773980b8f90b4d7902b9dc7017e2869dc59a
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, 0xe397773980b8f90b4d7902b9dc7017e2869dc59a
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, 0xe397773980b8f90b4d7902b9dc7017e2869dc59a
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, 0xe397773980b8f90b4d7902b9dc7017e2869dc59a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_5cc9bcb6(?) payable {
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
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.getReserves() with:
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
        require ext_code.size(sub_f954815bAddress)
        staticcall sub_f954815bAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_f954815bAddress)
        staticcall sub_f954815bAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f954815bAddress)
        staticcall sub_f954815bAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_825db985Address)
            staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 21, 0x6a51b21268daff0d54182057568b66491e99edaf
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 21, 0x6a51b21268daff0d54182057568b66491e99edaf
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f954815bAddress)
    staticcall sub_f954815bAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 21, 0x6a51b21268daff0d54182057568b66491e99edaf
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 21, 0x6a51b21268daff0d54182057568b66491e99edaf
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18)
}

function sub_f6319f9e(?) payable {
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
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.getReserves() with:
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
        require ext_code.size(sub_7d79e49cAddress)
        staticcall sub_7d79e49cAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_7d79e49cAddress)
        staticcall sub_7d79e49cAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7d79e49cAddress)
        staticcall sub_7d79e49cAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_825db985Address)
            staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 6, 0x67d51c7e39f861f9412056e2567dc33d066ca76
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 6, 0x67d51c7e39f861f9412056e2567dc33d066ca76
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7d79e49cAddress)
    staticcall sub_7d79e49cAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 6, 0x67d51c7e39f861f9412056e2567dc33d066ca76
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 6, 0x67d51c7e39f861f9412056e2567dc33d066ca76
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18) / ext_call.return_data[0] / 10^18)
}

function sub_120df70e(?) payable {
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
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.getReserves() with:
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
    if wFTMAddress == address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_d7305c0dAddress)
        staticcall sub_d7305c0dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_d7305c0dAddress)
        staticcall sub_d7305c0dAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d7305c0dAddress)
        staticcall sub_d7305c0dAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(sub_90c83323Address)
            staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 4, 0xd067b8891da97e6260c77e51f16040aca69509c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 4, 0xd067b8891da97e6260c77e51f16040aca69509c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_d7305c0dAddress)
    staticcall sub_d7305c0dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_d7305c0dAddress)
    staticcall sub_d7305c0dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d7305c0dAddress)
    staticcall sub_d7305c0dAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(sub_90c83323Address)
        staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 4, 0xd067b8891da97e6260c77e51f16040aca69509c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(sub_90c83323Address)
    staticcall sub_90c83323Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 4, 0xd067b8891da97e6260c77e51f16040aca69509c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
}

function sub_24bb47bd(?) payable {
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
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.getReserves() with:
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
    if wFTMAddress == address(ext_call.return_data[0]):
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_cbe4c5fbAddress)
        staticcall sub_cbe4c5fbAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_cbe4c5fbAddress)
        staticcall sub_cbe4c5fbAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_cbe4c5fbAddress)
        staticcall sub_cbe4c5fbAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(sub_825db985Address)
            staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 2, 0x3ea14059b6bf9bed6b3043fb04c4a9e8abd39b48
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] / 10^18)
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 2, 0x3ea14059b6bf9bed6b3043fb04c4a9e8abd39b48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^10) / ext_call.return_data[0] / 10^18)
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[32] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_cbe4c5fbAddress)
    staticcall sub_cbe4c5fbAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(sub_825db985Address)
        staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 2, 0x3ea14059b6bf9bed6b3043fb04c4a9e8abd39b48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 2 * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[32] and 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(sub_825db985Address)
    staticcall sub_825db985Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 2, 0x3ea14059b6bf9bed6b3043fb04c4a9e8abd39b48
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * 2 * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 10^10 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18)
}

function getPrice() payable {
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
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
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
                    require ext_code.size(sub_eeacff2dAddress)
                    staticcall sub_eeacff2dAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_eeacff2dAddress)
                    staticcall sub_eeacff2dAddress.getReserves() with:
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
                            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
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
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
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
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
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
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
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
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
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
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
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
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
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
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
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
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
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
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
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
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
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
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
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
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
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
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
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
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
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
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                    return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
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
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
                return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
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
            return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
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
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
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
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
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
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
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
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
                return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                       1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
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
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
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
            return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
                   1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
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
        return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
               1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0], 
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32],
           1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]
}

function getTvl() payable {
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c97a30a9Address)
        staticcall sub_c97a30a9Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if wFTMAddress != address(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(wFTMAddress)
            staticcall wFTMAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_d768ff69Address)
            staticcall sub_d768ff69Address.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(booAddress)
                staticcall booAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(sub_2d2e3a93Address)
                    staticcall sub_2d2e3a93Address.0x70a08231 with:
                            gas gas_remaining wei
                           args chefAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_eeacff2dAddress)
                    staticcall sub_eeacff2dAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_eeacff2dAddress)
                    staticcall sub_eeacff2dAddress.getReserves() with:
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
                        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(iceAddress)
                        staticcall iceAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args chefAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
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
                            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(iceAddress)
                    staticcall iceAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args chefAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(iceAddress)
                    staticcall iceAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args chefAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(booAddress)
            staticcall booAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(iceAddress)
                    staticcall iceAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args chefAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_2d2e3a93Address)
            staticcall sub_2d2e3a93Address.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(wFTMAddress)
        staticcall wFTMAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(sub_d768ff69Address)
        staticcall sub_d768ff69Address.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(booAddress)
            staticcall booAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(iceAddress)
                    staticcall iceAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args chefAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_2d2e3a93Address)
            staticcall sub_2d2e3a93Address.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(booAddress)
        staticcall booAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_2d2e3a93Address)
            staticcall sub_2d2e3a93Address.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(sub_2d2e3a93Address)
        staticcall sub_2d2e3a93Address.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(iceAddress)
        staticcall iceAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0]) / ext_call.return_data[0] / 10^18, 
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c97a30a9Address)
    staticcall sub_c97a30a9Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] and (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(wFTMAddress)
        staticcall wFTMAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(sub_d768ff69Address)
        staticcall sub_d768ff69Address.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(booAddress)
            staticcall booAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_eeacff2dAddress)
                staticcall sub_eeacff2dAddress.getReserves() with:
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(iceAddress)
                    staticcall iceAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args chefAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_2d2e3a93Address)
            staticcall sub_2d2e3a93Address.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(booAddress)
        staticcall booAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_2d2e3a93Address)
            staticcall sub_2d2e3a93Address.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(sub_2d2e3a93Address)
        staticcall sub_2d2e3a93Address.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(iceAddress)
        staticcall iceAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0] * (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
    if ext_call.return_data[32] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > !(ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] and (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(wFTMAddress)
    staticcall wFTMAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(sub_d768ff69Address)
    staticcall sub_d768ff69Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(booAddress)
        staticcall booAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_2d2e3a93Address)
            staticcall sub_2d2e3a93Address.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_eeacff2dAddress)
            staticcall sub_eeacff2dAddress.getReserves() with:
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(iceAddress)
                staticcall iceAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args chefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
                if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(sub_2d2e3a93Address)
        staticcall sub_2d2e3a93Address.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(iceAddress)
        staticcall iceAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(booAddress)
    staticcall booAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(sub_2d2e3a93Address)
        staticcall sub_2d2e3a93Address.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_eeacff2dAddress)
        staticcall sub_eeacff2dAddress.getReserves() with:
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(iceAddress)
            staticcall iceAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args chefAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
            if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(iceAddress)
        staticcall iceAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(sub_2d2e3a93Address)
    staticcall sub_2d2e3a93Address.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_eeacff2dAddress)
    staticcall sub_eeacff2dAddress.getReserves() with:
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(iceAddress)
        staticcall iceAddress.0x70a08231 with:
                gas gas_remaining wei
               args chefAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
        if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(iceAddress)
    staticcall iceAddress.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
               ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[0] / 10^18
    if 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] and ext_call.return_data[0] > -1 / 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return ext_call.return_data[0] * (ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) + (ext_call.return_data[32] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] / 10^18, 
           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18,
           ext_call.return_data[0] * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] / 10^18
}



}
