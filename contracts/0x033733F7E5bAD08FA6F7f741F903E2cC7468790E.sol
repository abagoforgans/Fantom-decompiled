contract main {




// =====================  Runtime code  =====================


uint256 someValue;

function someValue() {
    return someValue
}

function _fallback() payable {
    revert
}

function Addition(uint256 arg1, uint256 arg2) {
    return (arg1 + arg2)
}



}
