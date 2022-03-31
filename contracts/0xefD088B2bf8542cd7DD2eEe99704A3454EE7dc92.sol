contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    emit Transfer(address(arg1), address(arg2), arg3);
}



}
