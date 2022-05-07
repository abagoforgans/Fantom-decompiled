contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function checkHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}



}
