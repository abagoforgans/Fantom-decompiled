contract main {




// =====================  Runtime code  =====================


uint256 a;

function a() payable {
    return a
}

function _fallback() payable {
    revert
}

function initialize() payable {
    a = 10
}



}
