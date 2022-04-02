contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
address sub_5d33a1f4Address;
address nftAddress;
uint256 currentPrice;
mapping of uint256 sub_dcd6a95d;

function nftAddress() {
    return nftAddress
}

function paused() {
    return bool(paused)
}

function sub_5d33a1f4(?) {
    return sub_5d33a1f4Address
}

function owner() {
    return owner
}

function currentPrice() {
    return currentPrice
}

function sub_dcd6a95d(?) {
    return sub_dcd6a95d[stor3][arg1]
}

function destroy() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require paused
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setCurrentPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    currentPrice = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c66fe110(?) {
    require ext_code.size(sub_5d33a1f4Address)
    call sub_5d33a1f4Address.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sendTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg2 > 0
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sent(arg2, eth.balance(this.address), arg1);
}

function setPriceForToken(uint256 arg1, uint256 arg2) {
    require ext_code.size(nftAddress)
    call nftAddress.0x6352211e with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not the owner of token'
    sub_dcd6a95d[stor3][arg2] = arg1
}

function sub_a7a7c637(?) {
    require msg.sender == owner
    require ext_code.size(sub_5d33a1f4Address)
    call sub_5d33a1f4Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5d33a1f4Address)
    call sub_5d33a1f4Address.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function purchaseToken(uint256 arg1) {
    require not paused
    require msg.sender
    require this.address != msg.sender
    require ext_code.size(nftAddress)
    call nftAddress.0x4f558e79 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_5d33a1f4Address)
    call sub_5d33a1f4Address.allowance(address rg1, address rg2) with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_dcd6a95d[stor3][arg1]:
        revert with 0, 'Allowance is below price'
    require ext_code.size(nftAddress)
    call nftAddress.getApproved(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Seller didnt approve us to sell'
    require ext_code.size(nftAddress)
    call nftAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5d33a1f4Address)
    call sub_5d33a1f4Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), sub_dcd6a95d[stor3][arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftAddress)
    call nftAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Received(arg1, msg.value, eth.balance(this.address), msg.sender);
}



}
