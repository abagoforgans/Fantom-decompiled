contract main {




// =====================  Runtime code  =====================


uint256 sub_af5cb55b;
address sub_c0aa88e2Address;

function sub_af5cb55b(?) {
    return sub_af5cb55b
}

function sub_c0aa88e2(?) {
    return sub_c0aa88e2Address
}

function _fallback() payable {
    revert
}

function sub_394d3d38(?) {
    sub_af5cb55b = sha3(0, arg1, Mask(240, 16, arg2) >> 16, mem[258 len 2])
    signer = erecover(sha3(0, arg1, Mask(240, 16, arg2) >> 16, mem[258 len 2]), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c0aa88e2Address = address(signer)
    signer = erecover(sha3(0, arg1, Mask(240, 16, arg2) >> 16, mem[258 len 2]), arg3 << 248, arg4, arg5) 
    return address(signer)
}



}
