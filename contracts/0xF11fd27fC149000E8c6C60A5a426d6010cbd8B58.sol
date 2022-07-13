contract main {




// =====================  Runtime code  =====================


address inviteAddress;
address stor1;
address stor2;
uint256 sub_01650582;
uint256 sub_3a560335;
uint256 sub_3c3e36cc;
uint256 endTime;
uint256 startTime;
address stor8;
mapping of uint256 sub_cbb3d74d;
mapping of uint256 sub_3b5c00d6;
mapping of uint256 withdrawTime;

function sub_01650582(?) {
    return sub_01650582
}

function endTime() {
    return endTime
}

function sub_3a560335(?) {
    return sub_3a560335
}

function sub_3b5c00d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3b5c00d6[arg1]
}

function sub_3c3e36cc(?) {
    return sub_3c3e36cc
}

function startTime() {
    return startTime
}

function withdrawTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawTime[arg1]
}

function sub_cbb3d74d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cbb3d74d[arg1]
}

function invite() {
    return inviteAddress
}

function _fallback() payable {
  stop
}

function sub_33e6a308(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    sub_01650582 = arg1
}

function sub_3686a7e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    sub_3a560335 = arg1
}

function sub_9efb5293(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    sub_3c3e36cc = arg1
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    endTime = arg1
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    startTime = arg1
}

function sub_daa74c02(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    stor1 = address(arg1)
    stor2 = address(arg2)
}

function sub_af3ba07e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    if sub_cbb3d74d[address(arg2)] < arg1:
        revert with 'NH{q', 17
    sub_cbb3d74d[address(arg2)] -= arg1
    if sub_3b5c00d6[address(arg2)] < arg1:
        revert with 'NH{q', 17
    sub_3b5c00d6[address(arg2)] -= arg1
}

function sub_40986928(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    if sub_cbb3d74d[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_cbb3d74d[address(arg2)] += arg1
    if sub_3b5c00d6[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_3b5c00d6[address(arg2)] += arg1
}

function sub_02a5499f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor8 != msg.sender:
        revert with 0, 'you are not the owner'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor8, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_21bc758a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp >= endTime:
        revert with 0, 'not time'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and sub_3c3e36cc > -1 / arg1:
        revert with 'NH{q', 17
    if sub_cbb3d74d[address(msg.sender)] > (-1 * arg1 * sub_3c3e36cc) - 1:
        revert with 'NH{q', 17
    sub_cbb3d74d[address(msg.sender)] += arg1 * sub_3c3e36cc
    if sub_3b5c00d6[address(msg.sender)] > (-1 * arg1 * sub_3c3e36cc) - 1:
        revert with 'NH{q', 17
    sub_3b5c00d6[address(msg.sender)] += arg1 * sub_3c3e36cc
    require ext_code.size(inviteAddress)
    staticcall inviteAddress.inviteUpper2(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not ext_call.return_data[12 len 20]:
        if ext_call.return_data[44 len 20]:
            if arg1 and sub_3c3e36cc > -1 / arg1:
                revert with 'NH{q', 17
            if arg1 * sub_3c3e36cc and sub_3a560335 > -1 / arg1 * sub_3c3e36cc:
                revert with 'NH{q', 17
            if sub_cbb3d74d[ext_call.return_data[44 len 20]] > -(arg1 * sub_3c3e36cc * sub_3a560335 / 100) - 1:
                revert with 'NH{q', 17
            sub_cbb3d74d[ext_call.return_data[44 len 20]] += arg1 * sub_3c3e36cc * sub_3a560335 / 100
            if sub_3b5c00d6[address(ext_call.return_data[32])] > -(arg1 * sub_3c3e36cc * sub_3a560335 / 100) - 1:
                revert with 'NH{q', 17
            sub_3b5c00d6[address(ext_call.return_data[32])] += arg1 * sub_3c3e36cc * sub_3a560335 / 100
    else:
        if arg1 and sub_3c3e36cc > -1 / arg1:
            revert with 'NH{q', 17
        if arg1 * sub_3c3e36cc and sub_01650582 > -1 / arg1 * sub_3c3e36cc:
            revert with 'NH{q', 17
        if sub_cbb3d74d[ext_call.return_data[12 len 20]] > -(arg1 * sub_3c3e36cc * sub_01650582 / 100) - 1:
            revert with 'NH{q', 17
        sub_cbb3d74d[ext_call.return_data[12 len 20]] += arg1 * sub_3c3e36cc * sub_01650582 / 100
        if sub_3b5c00d6[address(ext_call.return_data[0])] > -(arg1 * sub_3c3e36cc * sub_01650582 / 100) - 1:
            revert with 'NH{q', 17
        sub_3b5c00d6[address(ext_call.return_data[0])] += arg1 * sub_3c3e36cc * sub_01650582 / 100
        if ext_call.return_data[44 len 20]:
            if arg1 and sub_3c3e36cc > -1 / arg1:
                revert with 'NH{q', 17
            if arg1 * sub_3c3e36cc and sub_3a560335 > -1 / arg1 * sub_3c3e36cc:
                revert with 'NH{q', 17
            if sub_cbb3d74d[address(ext_call.return_data[32])] > -(arg1 * sub_3c3e36cc * sub_3a560335 / 100) - 1:
                revert with 'NH{q', 17
            sub_cbb3d74d[address(ext_call.return_data[32])] += arg1 * sub_3c3e36cc * sub_3a560335 / 100
            if sub_3b5c00d6[address(ext_call.return_data[32])] > -(arg1 * sub_3c3e36cc * sub_3a560335 / 100) - 1:
                revert with 'NH{q', 17
            sub_3b5c00d6[address(ext_call.return_data[32])] += arg1 * sub_3c3e36cc * sub_3a560335 / 100
}

function userWithDraw() payable {
    if block.timestamp <= endTime:
        revert with 0, 'not time'
    if not withdrawTime[address(msg.sender)]:
        if block.timestamp < 452896 * 3600:
            revert with 'NH{q', 17
        if block.timestamp - (452896 * 3600) / 24 * 3600 < 0:
            revert with 'NH{q', 17
        if block.timestamp - (452896 * 3600) / 24 * 3600 <= 0:
            revert with 0, 'not a new day'
    else:
        if withdrawTime[address(msg.sender)] < 452896 * 3600:
            revert with 'NH{q', 17
        if block.timestamp < 452896 * 3600:
            revert with 'NH{q', 17
        if block.timestamp - (452896 * 3600) / 24 * 3600 < withdrawTime[address(msg.sender)] - (452896 * 3600) / 24 * 3600:
            revert with 'NH{q', 17
        if (block.timestamp - (452896 * 3600) / 24 * 3600) - (withdrawTime[address(msg.sender)] - (452896 * 3600) / 24 * 3600) <= 0:
            revert with 0, 'not a new day'
    if sub_cbb3d74d[address(msg.sender)] <= 0:
        revert with 0, 'no coin'
    if withdrawTime[address(msg.sender)]:
        if block.timestamp < withdrawTime[address(msg.sender)]:
            revert with 'NH{q', 17
        if sub_3b5c00d6[address(msg.sender)] and block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 > -1 / sub_3b5c00d6[address(msg.sender)]:
            revert with 'NH{q', 17
        if sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 and 1 > -1 / sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600:
            revert with 'NH{q', 17
        if sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 / 100 > sub_cbb3d74d[address(msg.sender)]:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_cbb3d74d[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            withdrawTime[address(msg.sender)] = block.timestamp
            if sub_cbb3d74d[address(msg.sender)] < sub_cbb3d74d[address(msg.sender)]:
                revert with 'NH{q', 17
            sub_cbb3d74d[address(msg.sender)] = 0
        else:
            if block.timestamp < withdrawTime[address(msg.sender)]:
                revert with 'NH{q', 17
            if sub_3b5c00d6[address(msg.sender)] and block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 > -1 / sub_3b5c00d6[address(msg.sender)]:
                revert with 'NH{q', 17
            if sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 and 1 > -1 / sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600:
                revert with 'NH{q', 17
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            withdrawTime[address(msg.sender)] = block.timestamp
            if sub_cbb3d74d[address(msg.sender)] < sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 / 100:
                revert with 'NH{q', 17
            sub_cbb3d74d[address(msg.sender)] -= sub_3b5c00d6[address(msg.sender)] * block.timestamp - withdrawTime[address(msg.sender)] / 24 * 3600 / 100
    else:
        if block.timestamp < startTime:
            revert with 'NH{q', 17
        if sub_3b5c00d6[address(msg.sender)] and block.timestamp - startTime / 24 * 3600 > -1 / sub_3b5c00d6[address(msg.sender)]:
            revert with 'NH{q', 17
        if sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600 and 1 > -1 / sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600:
            revert with 'NH{q', 17
        if sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600 / 100 > sub_cbb3d74d[address(msg.sender)]:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_cbb3d74d[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            withdrawTime[address(msg.sender)] = block.timestamp
            if sub_cbb3d74d[address(msg.sender)] < sub_cbb3d74d[address(msg.sender)]:
                revert with 'NH{q', 17
            sub_cbb3d74d[address(msg.sender)] = 0
        else:
            if block.timestamp < startTime:
                revert with 'NH{q', 17
            if sub_3b5c00d6[address(msg.sender)] and block.timestamp - startTime / 24 * 3600 > -1 / sub_3b5c00d6[address(msg.sender)]:
                revert with 'NH{q', 17
            if sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600 and 1 > -1 / sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600:
                revert with 'NH{q', 17
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            withdrawTime[address(msg.sender)] = block.timestamp
            if sub_cbb3d74d[address(msg.sender)] < sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600 / 100:
                revert with 'NH{q', 17
            sub_cbb3d74d[address(msg.sender)] -= sub_3b5c00d6[address(msg.sender)] * block.timestamp - startTime / 24 * 3600 / 100
}



}
