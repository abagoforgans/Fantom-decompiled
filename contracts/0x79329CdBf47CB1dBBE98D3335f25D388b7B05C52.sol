contract main {




// =====================  Runtime code  =====================


address oracleAddress;
uint32 sub_6e000475; offset 224
uint256 viewPrice;

function T() payable {
    return sub_6e000475
}

function sub_6e000475(?) payable {
    return sub_6e000475
}

function oracle() payable {
    return oracleAddress
}

function price() payable {
    return viewPrice
}

function viewPrice() payable {
    return viewPrice
}

function _fallback() payable {
    revert
}

function getResults(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    call oracleAddress.getResult(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[4 len 28]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    sub_6e000475 = ext_call.return_data[60 len 4]
    viewPrice = ext_call.return_data[4 len 28]
    return 1
}



}
