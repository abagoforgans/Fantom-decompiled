contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function check(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp > arg1)
}



}
