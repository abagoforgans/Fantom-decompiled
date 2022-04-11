contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address sub_96effb75Address;

function owner() payable {
    return owner
}

function sub_96effb75(?) payable {
    return sub_96effb75Address
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    owner = arg1
    emit TransferredOwnership(owner, address(arg1), block.timestamp);
}

function addPlatformAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    stor1[address(arg1)] = 1
    emit AddedPlatformAddress(address(arg1), block.timestamp);
}

function allowTransferToStaking(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Owner only'
    if not arg1:
        revert with 0, 'Invalid address'
    if arg2 <= 0:
        revert with 0, 'Invalid Amount'
    require ext_code.size(sub_96effb75Address)
    call sub_96effb75Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
