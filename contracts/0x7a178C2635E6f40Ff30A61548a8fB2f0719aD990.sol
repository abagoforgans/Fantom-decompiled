contract main {




// =====================  Runtime code  =====================


const ORDER_TYPEHASH = 0x7c228c78bd055996a44b5046fb56fa7c28c66bce92d9dc584f742b2cd76a140f


uint256 sub_af5cb55b;
address sub_c0aa88e2Address;
uint256 sub_f730b55d;
uint256 DOMAIN_SEPARATOR;

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_af5cb55b(?) payable {
    return sub_af5cb55b
}

function sub_c0aa88e2(?) payable {
    return sub_c0aa88e2Address
}

function sub_f730b55d(?) payable {
    return sub_f730b55d
}

function _fallback() payable {
    revert
}

function sub_d600f4ff(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == address(arg6)
    require arg7 == arg7
    require arg8 == uint8(arg8)
    require arg9 == arg9
    require arg10 == arg10
    sub_f730b55d = sha3(0x7c228c78bd055996a44b5046fb56fa7c28c66bce92d9dc584f742b2cd76a140f, address(arg1), address(arg2), address(arg3), arg4, arg5, address(arg6), arg7)
    return sub_f730b55d
}

function sub_cb726269(?) payable {
    require calldata.size - 4 >= 352
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == address(arg7)
    require arg8 == arg8
    require arg9 == uint8(arg9)
    require arg10 == arg10
    require arg11 == arg11
    sub_af5cb55b = sha3(0, arg1, sha3(0x7c228c78bd055996a44b5046fb56fa7c28c66bce92d9dc584f742b2cd76a140f, address(arg2), address(arg3), address(arg4), arg5, arg6, address(arg7), arg8))
    signer = erecover(sha3(0, arg1, sha3(0x7c228c78bd055996a44b5046fb56fa7c28c66bce92d9dc584f742b2cd76a140f, address(arg2), address(arg3), address(arg4), arg5, arg6, address(arg7), arg8)), arg9 << 248, arg10, arg11) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c0aa88e2Address = address(signer)
    signer = erecover(sha3(0, arg1, sha3(0x7c228c78bd055996a44b5046fb56fa7c28c66bce92d9dc584f742b2cd76a140f, address(arg2), address(arg3), address(arg4), arg5, arg6, address(arg7), arg8)), arg9 << 248, arg10, arg11) 
    return address(signer)
}



}
