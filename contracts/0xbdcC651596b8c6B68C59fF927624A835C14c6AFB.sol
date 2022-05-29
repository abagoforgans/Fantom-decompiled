contract main {




// =====================  Runtime code  =====================


#
#  - sub_884907af(?)
#  - getSigner(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
address stor1;
uint128 stor2; offset 160
address stor2;

function _fallback() payable {
    revert
}

function change_owner(address arg1) {
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    stor1 = arg1
}

function sub_9d6f8d22(?) {
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    address(stor2.field_0) = arg1
}

function splitSignature(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    require arg1.length == 65
    return 0, mem[128], mem[160]
}

function sub_7a6a8a4b(?) {
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function recoverSigner(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg2.length == 65
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_fc4333c3(?) {
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d5866ffa(?) {
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
