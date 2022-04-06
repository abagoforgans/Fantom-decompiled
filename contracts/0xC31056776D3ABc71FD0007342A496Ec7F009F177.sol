contract main {




// =====================  Runtime code  =====================


#
#  - sub_0f7ed512(?)
#  - sub_6ce01085(?)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Sender not authorized.'
    stor1 = arg1
}

function sub_e48ad60d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'Sender not authorized.'
    stor0 = address(arg1)
}



}
