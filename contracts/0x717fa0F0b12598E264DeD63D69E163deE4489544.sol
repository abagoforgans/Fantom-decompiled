contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 sub_9ba8645d;

function sub_9ba8645d(?) {
    return sub_9ba8645d
}

function _fallback() payable {
    revert
}

function sub_62047dd0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor4
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_9c50edf4(?) {
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2b1f7203(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 and msg.value > -1 / stor2:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2 * msg.value:
        revert with 0, 'No FTM Balance in Swapper'
    require ext_code.size(stor0)
    call stor0.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor1, 1758709, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor0)
    call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, stor1, stor2 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_9ba8645d < stor2 * msg.value:
        revert with 'NH{q', 17
    sub_9ba8645d += -1 * stor2 * msg.value
    return 1
}

function sub_bc9ea79b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 and msg.value > -1 / stor2:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2 * msg.value:
        revert with 0, 'No Gold Balance in Swapper'
    require ext_code.size(stor0)
    call stor0.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor1, 1758709, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor0)
    call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor1, arg1, stor2 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_9ba8645d > (-1 * stor2 * msg.value) - 1:
        revert with 'NH{q', 17
    sub_9ba8645d += stor2 * msg.value
    return 1
}



}
