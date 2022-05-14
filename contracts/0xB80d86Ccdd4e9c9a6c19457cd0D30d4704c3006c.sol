contract main {




// =====================  Runtime code  =====================


#
#  - sub_16816262(?)
#  - sub_3aa99232(?)
#
address stor0;

function kill() {
    if stor0 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
