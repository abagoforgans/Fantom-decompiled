contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address sub_bb6b539fAddress;
uint256 endBlock;

function endBlock() payable {
    return endBlock
}

function started() payable {
    return bool(stor1)
}

function owner() payable {
    return owner
}

function sub_bb6b539f(?) payable {
    return sub_bb6b539fAddress
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
    if stor1:
        revert with 0, 'Timer is already started'
    if 744 * 24 * 3600 > !block.number:
        revert with 0, 17
    endBlock = block.number + (744 * 24 * 3600)
    stor1 = 1
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

function withdrawLPs() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor1) != 1:
        revert with 0, 'Timer has not been started'
    if block.number < endBlock:
        revert with 0, 'Locked, can not withdraw'
    require ext_code.size(sub_bb6b539fAddress)
    staticcall sub_bb6b539fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bb6b539fAddress)
    call sub_bb6b539fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
