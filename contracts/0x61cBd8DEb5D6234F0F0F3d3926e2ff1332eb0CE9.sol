contract main {




// =====================  Runtime code  =====================


address stor0;

function d(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}



}
