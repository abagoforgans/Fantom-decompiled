contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 price;
uint256 timestamp;

function price() payable {
    return price
}

function timestamp() payable {
    return timestamp
}

function _fallback() payable {
    revert
}

function sub_9f01c608(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 'BTC', 3, 'ETH'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    price = ext_call.return_data[0]
    timestamp = ext_call.return_data[32]
}



}
