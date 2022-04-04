contract main {




// =====================  Runtime code  =====================


uint256 number;

function retrieve() payable {
    return number
}

function number() payable {
    return number
}

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    number = arg1
}



}
