contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function change(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0 = arg1
}



}
