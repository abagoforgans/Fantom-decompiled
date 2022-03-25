contract main {




// =====================  Runtime code  =====================


mapping of struct sub_a1d32c06;

function sub_a1d32c06(?) payable {
    return sub_a1d32c06[address(msg.sender)].field_0, sub_a1d32c06[address(msg.sender)].field_256
}

function sub_b5fd282a(?) payable {
    require calldata.size - 4 >= 32
    return sub_a1d32c06[arg1].field_0, sub_a1d32c06[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_8356593b(?) payable {
    require calldata.size - 4 >= 64
    sub_a1d32c06[address(msg.sender)].field_0 = arg1
    sub_a1d32c06[address(msg.sender)].field_256 = arg2
}



}
