contract main {




// =====================  Runtime code  =====================


address oracleAddress;

function oracle() payable {
    return oracleAddress
}

function _fallback() payable {
    revert
}

function getETHPrice() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4554480000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 192 <= test266151307())
    return ext_call.return_data[0]
}

function getBTCPrice() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4254430000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 192 <= test266151307())
    return ext_call.return_data[0]
}

function sub_5d25639f(?) payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 192 <= test266151307())
    return ext_call.return_data[0]
}



}
