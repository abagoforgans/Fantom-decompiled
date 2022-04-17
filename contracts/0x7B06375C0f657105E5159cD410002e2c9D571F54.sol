contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function tokenAllowAll(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
