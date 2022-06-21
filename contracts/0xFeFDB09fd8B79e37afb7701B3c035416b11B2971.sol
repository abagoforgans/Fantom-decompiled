contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function sub_1dc153ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and 10^18 > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'No Gold Balance in Swapper'
    require ext_code.size(stor0)
    call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor1, arg1, 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
