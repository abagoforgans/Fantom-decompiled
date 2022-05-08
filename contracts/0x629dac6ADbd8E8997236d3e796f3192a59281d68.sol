contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_cff50af5(?) payable {
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
