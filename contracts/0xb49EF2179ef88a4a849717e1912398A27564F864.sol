contract main {




// =====================  Runtime code  =====================


#
#  - sub_3aa99232(?)
#
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function kill() {
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function sub_f2bf71d0(?) {
    require calldata.size - 4 >= 128
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    stor0 = arg1
    stor1 = arg2
    stor2 = arg3
    stor3 = arg4
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        call stor4 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_16816262(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    call arg2.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor3
    require ext_code.size(stor1)
    staticcall stor1.getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revert with 0, 'Test2'
}



}
