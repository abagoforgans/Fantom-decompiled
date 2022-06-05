contract main {




// =====================  Runtime code  =====================


address cEtherAddress;

function cEther() {
    return cEtherAddress
}

function _fallback() payable {
    revert
}

function repayBehalfExplicit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if msg.value <= ext_call.return_data[0]:
        call arg2.repayBorrowBehalf(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call arg2.repayBorrowBehalf(address arg1) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}

function repayBehalf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(cEtherAddress)
    call cEtherAddress.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cEtherAddress)
    if msg.value <= ext_call.return_data[0]:
        call cEtherAddress.repayBorrowBehalf(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call cEtherAddress.repayBorrowBehalf(address arg1) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}



}
