contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getEthSignedMessageHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function recover(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}



}
