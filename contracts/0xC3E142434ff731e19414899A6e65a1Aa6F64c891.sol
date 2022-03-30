contract main {




// =====================  Runtime code  =====================


#
#  - requestEthereumChange(address arg1, string arg2)
#  - requestEthereumPrice(address arg1, string arg2)
#  - requestEthereumLastMarket(address arg1, string arg2)
#
address chainlinkTokenAddress;
mapping of address stor5;
address owner;
uint256 currentPrice;
uint256 changeDay;
uint256 lastMarket;

function getChainlinkToken() {
    return chainlinkTokenAddress
}

function changeDay() {
    return changeDay
}

function owner() {
    return owner
}

function currentPrice() {
    return currentPrice
}

function lastMarket() {
    return lastMarket
}

function _fallback() payable {
    revert
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

function fulfillEthereumChange(bytes32 arg1, int256 arg2) {
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestEthereumChangeFulfilled(arg1, arg2);
    changeDay = arg2
}

function fulfillEthereumLastMarket(bytes32 arg1, bytes32 arg2) {
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestEthereumLastMarket(arg1, arg2);
    lastMarket = arg2
}

function fulfillEthereumPrice(bytes32 arg1, uint256 arg2) {
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit RequestEthereumPriceFulfilled(arg1, arg2);
    currentPrice = arg2
}

function cancelRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) {
    require msg.sender == owner
    stor5[arg1] = 0
    emit ChainlinkCancelled(arg1);
    require ext_code.size(stor5[arg1])
    call stor5[arg1].0x6ee4d553 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, Mask(32, 224, arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawLink() {
    require msg.sender == owner
    require ext_code.size(chainlinkTokenAddress)
    call chainlinkTokenAddress.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chainlinkTokenAddress)
    call chainlinkTokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}



}
