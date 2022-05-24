contract main {




// =====================  Runtime code  =====================


#
#  - rescueFund(address arg1, uint256 arg2)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address shareAddress;

function owner() payable {
    return owner
}

function share() payable {
    return shareAddress
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

function setShareAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    shareAddress = arg1
}

function balance() payable {
    require ext_code.size(shareAddress)
    staticcall shareAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function transferDevFundOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(shareAddress)
    call shareAddress.setTreasuryFund(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(shareAddress)
    call shareAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if not arg1:
        revert with 0, 'Invalid address'
    shareAddress = arg1
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function claim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(shareAddress)
    staticcall shareAddress.unclaimedTreasuryFund() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareAddress)
    call shareAddress.claimTreasuryFundRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] and 250 * 3600 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(shareAddress)
    call shareAddress.burn(uint256 arg1) with:
         gas gas_remaining wei
        args (250 * 3600 * ext_call.return_data[0] / 10^6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
