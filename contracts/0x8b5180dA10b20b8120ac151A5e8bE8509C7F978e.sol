contract main {




// =====================  Runtime code  =====================


#
#  - sub_9cb37627(?)
#  - getPrice(address arg1, address arg2)
#
function _fallback() payable {
    revert
}

function getBorrowBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    call arg1.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
