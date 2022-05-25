contract main {




// =====================  Runtime code  =====================


address stor0;

function hack() payable {
    require ext_code.size(msg.sender)
    call msg.sender.0xe6d25245 with:
         gas gas_remaining wei
        args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(msg.sender)
    call msg.sender.0xe6d25245 with:
         gas gas_remaining wei
        args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
