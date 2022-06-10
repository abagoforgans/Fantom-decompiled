contract main {




// =====================  Runtime code  =====================


address adminAddress;
address feeRecipientAddress;
address pendingAdminAddress;
uint256 stor3;
uint256 sub_dfb0886b;
mapping of struct listings;
address stor6;

function pendingAdmin() {
    return pendingAdminAddress
}

function feeRecipient() {
    return feeRecipientAddress
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return listings[arg1].field_0, listings[arg1].field_256
}

function sub_dfb0886b(?) {
    return sub_dfb0886b
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if pendingAdminAddress != msg.sender:
        revert with 0, 'you are not the pending admin'
    adminAddress = pendingAdminAddress
}

function giveOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'admin function only'
    pendingAdminAddress = arg1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'admin function only'
    if arg1 < 0:
        revert with 0, 'wrong value'
    if arg1 > 20:
        revert with 0, 'wrong value'
    stor3 = arg1
}

function list(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    listings[arg1].field_0 = msg.sender
    listings[arg1].field_256 = arg2
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlist(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == listings[arg1].field_0
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_256 = 0
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), listings[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_256 = 0
    if listings[arg1].field_256 != msg.value:
        revert with 0, 'wrong value'
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 > listings[arg1].field_256:
        revert with 'NH{q', 1
    if listings[arg1].field_256 < 0:
        revert with 'NH{q', 17
    if eth.balance(this.address) < listings[arg1].field_256:
        revert with 0, 'Address: insufficient balance'
    call listings[arg1].field_0 with:
       value listings[arg1].field_256 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
}



}
