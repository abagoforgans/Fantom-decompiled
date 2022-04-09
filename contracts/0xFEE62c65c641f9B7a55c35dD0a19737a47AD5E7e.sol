contract main {




// =====================  Runtime code  =====================


address owner;
address sub_4310b9cfAddress;
address sub_95f9104eAddress;
uint8 sub_1c119ebe; offset 160
uint128 stor3; offset 160
address receiverAddress;
uint256 sub_f19ad3b4;

function sub_1c119ebe(?) payable {
    return bool(sub_1c119ebe)
}

function sub_4310b9cf(?) payable {
    return sub_4310b9cfAddress
}

function owner() payable {
    return owner
}

function sub_95f9104e(?) payable {
    return sub_95f9104eAddress
}

function sub_f19ad3b4(?) payable {
    return sub_f19ad3b4
}

function receiver() payable {
    return receiverAddress
}

function _fallback() payable {
    revert
}

function sub_46416aec(?) payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3 = Mask(96, 0, not bool(sub_1c119ebe))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function setReceiver(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    receiverAddress = arg1
    sub_95f9104eAddress = arg2
    stor3 = 1
}

function transferTokens(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer'
}

function sendFunds() payable {
    if not sub_1c119ebe:
        revert with 0, 'unable to send'
    require ext_code.size(sub_4310b9cfAddress)
    staticcall sub_4310b9cfAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_f19ad3b4:
        revert with 'NH{q', 17
    require ext_code.size(sub_95f9104eAddress)
    call sub_95f9104eAddress.0xa9059cbb with:
         gas gas_remaining wei
        args receiverAddress, ext_call.return_data[0] - sub_f19ad3b4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer'
    if sub_f19ad3b4 > -ext_call.return_data[0] + sub_f19ad3b4 - 1:
        revert with 'NH{q', 17
    sub_f19ad3b4 = ext_call.return_data[0]
}



}
