contract main {




// =====================  Runtime code  =====================


address sub_d4384dbeAddress;
address sub_8ed8ea7eAddress;

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function sub_d4384dbe(?) payable {
    return sub_d4384dbeAddress
}

function _fallback() payable {
    revert
}

function sub_c2e55ddb(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_d4384dbeAddress)
    staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getTokenPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14]
}



}
