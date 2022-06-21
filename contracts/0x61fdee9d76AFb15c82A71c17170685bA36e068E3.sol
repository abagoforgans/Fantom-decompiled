contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
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
    require msg.sender == stor3
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

function sub_1dc153ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require ext_call.return_data[0] > arg2
    if sub_9ba8645d > -arg2 - 1:
        revert with 'NH{q', 17
    sub_9ba8645d += arg2
    require ext_code.size(stor0)
    call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor1, arg1, stor2 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_86dc340c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2 and msg.value > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 * msg.value != msg.value:
        revert with 0, 'Please check your balance'
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] > arg2
    if sub_9ba8645d < arg2:
        revert with 'NH{q', 17
    sub_9ba8645d -= arg2
    require ext_code.size(stor0)
    call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
