contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function burn(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
}



}
