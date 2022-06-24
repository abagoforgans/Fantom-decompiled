contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function recover(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}



}
