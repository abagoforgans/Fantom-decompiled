contract main {




// =====================  Runtime code  =====================


uint256 val;

function val() payable {
    return val
}

function _fallback() payable {
    revert
}

function setValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    val = arg1
}



}
