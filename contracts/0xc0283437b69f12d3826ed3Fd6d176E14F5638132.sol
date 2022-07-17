contract main {




// =====================  Runtime code  =====================


address feeToSetterAddress;
mapping of address sub_957f6406;

function feeToSetter() payable {
    return feeToSetterAddress
}

function sub_957f6406(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require sub_957f6406[address(arg1)]
    return sub_957f6406[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_9a015841(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg9 == bool(arg9)
    create contract with 0 wei
                    code: code.data[815 len 4129], address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8, bool(arg9)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_957f6406[msg.sender] = address(create.new_address)
    emit 0xa6634495: address(create.new_address), address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6
    return 0
}



}
