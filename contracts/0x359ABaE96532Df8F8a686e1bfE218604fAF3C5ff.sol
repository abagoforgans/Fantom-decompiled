contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
address nftAddress;

function nftAddress() {
    return nftAddress
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function destroy() {
    require msg.sender == owner
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
    require ext_code.size(nftAddress)
    call nftAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0xc2136c0409679c7af249cbd7af1bc17da2f08142, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Redeemed(msg.sender);
}



}
