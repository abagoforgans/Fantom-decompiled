contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function retrieve() payable {
    return (stor0 + 5)
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor0 = arg1
}



}
