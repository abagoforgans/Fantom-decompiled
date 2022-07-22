contract main {




// =====================  Runtime code  =====================


uint256 X;

function getX() payable {
    return X
}

function _fallback() payable {
    revert
}

function setX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    X = arg1
}



}
