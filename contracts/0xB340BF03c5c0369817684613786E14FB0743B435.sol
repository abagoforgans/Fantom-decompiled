contract main {




// =====================  Runtime code  =====================


#
#  - sub_3aa99232(?)
#  - liquidateFlashloan(address arg1, address arg2, address arg3, address arg4, address arg5)
#  - checkAccount(address arg1, address arg2, address[] arg3, uint256 arg4, address arg5)
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
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xaf564c3c06f70752ea46ff19ddd4bad78f5e1ea, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
