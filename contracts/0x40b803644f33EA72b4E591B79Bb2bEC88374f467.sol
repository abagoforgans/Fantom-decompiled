contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function inventory(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stor0[arg1].field_0
    return stor0[arg1][arg2].field_0, stor0[arg1][arg2].field_256
}

function sub_c99f1256(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor0[address(msg.sender)].field_0
    require arg2 < stor0[address(msg.sender)].field_0
    return stor0[address(msg.sender)][arg1].field_0, stor0[address(msg.sender)][arg2].field_256
}

function sub_8356593b(?) payable {
    require calldata.size - 4 >= 64
    stor0[address(msg.sender)].field_0++
    stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0 = arg1
    stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_256 = arg2
}



}
