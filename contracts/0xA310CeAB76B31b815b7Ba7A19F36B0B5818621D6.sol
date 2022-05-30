contract main {




// =====================  Runtime code  =====================


#
#  - sub_2999dd15(?)
#  - sub_3aa99232(?)
#  - sub_c58fb18a(?)
#  - _fallback()
#
function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        call 0x0af564c3c06f70752ea46ff19ddd4bad78f5e1ea with:
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
            args 0xaf564c3c06f70752ea46ff19ddd4bad78f5e1ea, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
