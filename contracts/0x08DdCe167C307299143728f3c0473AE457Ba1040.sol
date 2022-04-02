contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
address nftAddress;
uint256 currentPrice;

function nftAddress() {
    return nftAddress
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function currentPrice() {
    return currentPrice
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

function purchaseToken(uint256 arg1) payable {
    require not paused
    require msg.sender
    require this.address != msg.sender
    require msg.value >= currentPrice
    require ext_code.size(nftAddress)
    call nftAddress.0x4f558e79 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
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
        args address(ext_call.return_data[0]), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require address(ext_call.return_data[0])
    require address(ext_call.return_data[0]) != this.address
    require msg.value > 0
    require msg.value <= eth.balance(this.address)
    call address(ext_call.return_data[0]) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sent(msg.value, eth.balance(this.address), address(ext_call.return_data[0]));
    emit Received(arg1, msg.value, eth.balance(this.address), msg.sender);
}



}
