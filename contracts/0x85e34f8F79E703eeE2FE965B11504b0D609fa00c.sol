contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    if stor1 == arg1:
        call msg.sender with:
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
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_12a85a69(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if 1 == arg3:
        require ext_code.size(address(arg1))
        call address(arg1).withdraw(uint256 arg1, address arg2, address arg3) with:
             gas gas_remaining wei
            args arg2, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if 2 == arg3:
        require ext_code.size(address(arg1))
        call address(arg1).withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if 3 == arg3:
        require ext_code.size(address(arg1))
        call address(arg1).withdrawWETH(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
