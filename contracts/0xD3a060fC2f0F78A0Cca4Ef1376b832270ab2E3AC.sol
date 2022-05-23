contract main {




// =====================  Runtime code  =====================


address owner;
address sub_75bae98aAddress;
uint8 stor2; offset 160
address sub_04ee2701Address;
uint256 stor3;

function sub_04ee2701(?) payable {
    return sub_04ee2701Address
}

function started() payable {
    return bool(stor2)
}

function sub_75bae98a(?) payable {
    return sub_75bae98aAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function startTimer() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Timer is already started'
    if 744 * 24 * 3600 > !block.number:
        revert with 0, 17
    stor3 = block.number + (744 * 24 * 3600)
    stor2 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getRewards() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_75bae98aAddress)
    staticcall sub_75bae98aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_75bae98aAddress)
    call sub_75bae98aAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b73ca4c0(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor2) != 1:
        revert with 0, 'Timer has not been started'
    if block.number < stor3:
        revert with 0, 'Locked, can not withdraw'
    require ext_code.size(sub_04ee2701Address)
    staticcall sub_04ee2701Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_04ee2701Address)
    call sub_04ee2701Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
