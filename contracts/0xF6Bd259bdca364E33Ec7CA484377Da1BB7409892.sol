contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_543fd9f3(?) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'only owner can call'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function checkAllowance(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
