contract main {




// =====================  Runtime code  =====================


address sub_2a1b004fAddress;
uint256 rate;

function sub_2a1b004f(?) payable {
    return sub_2a1b004fAddress
}

function rate() payable {
    return rate
}

function _fallback() payable {
    revert
}

function sub_69032fbe(?) payable {
    require ext_code.size(sub_2a1b004fAddress)
    staticcall sub_2a1b004fAddress.exchangeRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_08ffcca4(?) payable {
    require ext_code.size(sub_2a1b004fAddress)
    staticcall sub_2a1b004fAddress.exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    rate = ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
