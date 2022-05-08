contract main {




// =====================  Runtime code  =====================


address stor1;
address stor3;

function _fallback() payable {
    revert
}

function sub_cff50af5(?) payable {
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getTokensOut() payable {
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 5 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
