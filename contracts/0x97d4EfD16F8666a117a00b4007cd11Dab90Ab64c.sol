contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getERCapprove(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
