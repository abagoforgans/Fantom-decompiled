contract main {




// =====================  Runtime code  =====================


address wFTMAddress;
address sub_f13ffd92Address;
address sub_68dce878Address;
address sub_1f01866fAddress;
address sub_1da0087cAddress;
address sub_c97a30a9Address;
address chefAddress;
address sub_d768ff69Address;
address booAddress;
address sub_2d2e3a93Address;
address iceAddress;

function wFTM() payable {
    return wFTMAddress
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

function boo() payable {
    return booAddress
}

function ice() payable {
    return iceAddress
}

function sub_68dce878(?) payable {
    return sub_68dce878Address
}

function sub_c97a30a9(?) payable {
    return sub_c97a30a9Address
}

function sub_d768ff69(?) payable {
    return sub_d768ff69Address
}

function sub_f13ffd92(?) payable {
    return sub_f13ffd92Address
}

function a() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_5b4c7d06(?) payable {
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
        return ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0]
}

function sub_355cae50(?) payable {
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
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] / ext_call.return_data[0])
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_7713ac7a(?) payable {
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
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] / ext_call.return_data[0])
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_7f791673(?) payable {
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
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] / ext_call.return_data[0])
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[32])
}

function sub_f75a2c10(?) payable {
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
    if wFTMAddress != address(ext_call.return_data[0]):
        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] / ext_call.return_data[0])
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[32])
}



}
