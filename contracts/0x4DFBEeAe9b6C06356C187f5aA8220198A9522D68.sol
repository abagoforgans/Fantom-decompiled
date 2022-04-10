contract main {




// =====================  Runtime code  =====================


address testAddress;
uint256 DOMAIN_SEPARATOR;

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function test() {
    return testAddress
}

function _fallback() payable {
    revert
}

function recover(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    signer = erecover(sha3(DOMAIN_SEPARATOR, arg1), arg2, 0, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    testAddress = address(signer)
    return testAddress
}



}
