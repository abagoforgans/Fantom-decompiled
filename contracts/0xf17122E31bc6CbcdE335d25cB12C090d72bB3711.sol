contract main {




// =====================  Runtime code  =====================


address testTokenAddress;

function testToken() payable {
    return testTokenAddress
}

function _fallback() payable {
    revert
}



}
