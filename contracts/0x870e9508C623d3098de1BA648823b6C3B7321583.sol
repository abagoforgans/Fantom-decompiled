contract main {




// =====================  Runtime code  =====================


uint256 a;
uint256 b;

function a() payable {
    return a
}

function b() payable {
    return b
}

function _fallback() payable {
    revert
}

function initialize() payable {
    a = 10
}

function initialize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    b = arg1
}



}
