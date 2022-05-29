contract main {




// =====================  Runtime code  =====================


address sub_13763b4fAddress;

function sub_13763b4f(?) {
    return sub_13763b4fAddress
}

function _fallback() payable {
    revert
}

function sub_ce6c1788(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(sub_13763b4fAddress)
    call sub_13763b4fAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_13763b4fAddress)
    call sub_13763b4fAddress.0x16875c11 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb6a90509: arg2, msg.sender, arg3
}

function bid(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(sub_13763b4fAddress)
    call sub_13763b4fAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_13763b4fAddress)
    call sub_13763b4fAddress.0x16875c11 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb6a90509: arg2, msg.sender, arg3
}



}
