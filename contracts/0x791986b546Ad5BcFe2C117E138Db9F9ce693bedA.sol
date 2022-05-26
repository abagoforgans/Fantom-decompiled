contract main {




// =====================  Runtime code  =====================


address sub_8a498eceAddress;
address daoAddress;
address devAddress;
uint256 sub_295baf48;
uint256 openPrice;
uint256 closePrice;
uint256 lastPrice;
uint256 startTime;
uint256 endTime;
uint8 stor9;

function lastPrice() {
    return lastPrice
}

function sub_295baf48(?) {
    return sub_295baf48
}

function openPrice() {
    return openPrice
}

function endTime() {
    return endTime
}

function dao() {
    return daoAddress
}

function startTime() {
    return startTime
}

function sub_8a498ece(?) {
    return sub_8a498eceAddress
}

function dev() {
    return devAddress
}

function closePrice() {
    return closePrice
}

function _fallback() payable {
    revert
}

function sub_162531ad(?) {
    if endTime < block.timestamp:
        revert with 'NH{q', 17
    if endTime - block.timestamp <= 0:
        return 0
    if endTime < block.timestamp:
        revert with 'NH{q', 17
    return (endTime - block.timestamp)
}

function newDAO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'must be dev or dao'
    daoAddress = arg1
    emit NewDAO(daoAddress);
}

function sub_a47cad72(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if devAddress != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'must be dev or dao'
    devAddress = address(arg1)
    emit 0x5936329b: devAddress
}

function sub_20fb629d(?) {
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime and 25 * 10^11 > -1 / block.timestamp - startTime:
        revert with 'NH{q', 17
    if openPrice > (-25 * 10^11 * block.timestamp) + (25 * 10^11 * startTime) - 1:
        revert with 'NH{q', 17
    return (openPrice + (25 * 10^11 * block.timestamp) - (25 * 10^11 * startTime))
}

function sub_32c2ddd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < startTime:
        revert with 'NH{q', 17
    if arg1 - startTime and 25 * 10^11 > -1 / arg1 - startTime:
        revert with 'NH{q', 17
    if openPrice > (-25 * 10^11 * arg1) + (25 * 10^11 * startTime) - 1:
        revert with 'NH{q', 17
    return (openPrice + (25 * 10^11 * arg1) - (25 * 10^11 * startTime))
}

function sub_c22e6e7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    if block.timestamp + arg1 < startTime:
        revert with 'NH{q', 17
    if block.timestamp + arg1 - startTime and 25 * 10^11 > -1 / block.timestamp + arg1 - startTime:
        revert with 'NH{q', 17
    if openPrice > (-25 * 10^11 * block.timestamp) + (-25 * 10^11 * arg1) + (25 * 10^11 * startTime) - 1:
        revert with 'NH{q', 17
    return (openPrice + (25 * 10^11 * block.timestamp) + (25 * 10^11 * arg1) - (25 * 10^11 * startTime))
}

function calculateCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime and 25 * 10^11 > -1 / block.timestamp - startTime:
        revert with 'NH{q', 17
    if openPrice > (-25 * 10^11 * block.timestamp) + (25 * 10^11 * startTime) - 1:
        revert with 'NH{q', 17
    if arg1 / 10^18 and openPrice + (25 * 10^11 * block.timestamp) - (25 * 10^11 * startTime) > -1 / arg1 / 10^18:
        revert with 'NH{q', 17
    return ((openPrice * arg1 / 10^18) + (25 * 10^11 * block.timestamp * arg1 / 10^18) - (25 * 10^11 * startTime * arg1 / 10^18))
}

function sub_7088183b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'must be dev or dao'
    if arg1 <= 0:
        revert with 0, 'cannot resupply 0'
    require ext_code.size(sub_8a498eceAddress)
    call sub_8a498eceAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_295baf48 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_295baf48 += arg1
}

function initialize() {
    if devAddress != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'must be dev or dao'
    if stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'initialize: the ceremony has already begun'
    sub_8a498eceAddress = 0x81dd37687c74df8f957a370a9a4435d873f5e5a9
    sub_295baf48 = 10000 * 10^18
    require ext_code.size(sub_8a498eceAddress)
    call sub_8a498eceAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_295baf48
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    startTime = block.timestamp
    if block.timestamp > -1209601:
        revert with 'NH{q', 17
    endTime = block.timestamp + (336 * 24 * 3600)
    stor9 = 1
    emit 0x6b40d9ac: sub_8a498eceAddress, sub_295baf48, block.timestamp, endTime
}

function sub_f84d8a1a(?) {
    if devAddress != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'must be dev or dao'
    require ext_code.size(sub_8a498eceAddress)
    staticcall sub_8a498eceAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'cannot withdraw 0'
    require ext_code.size(sub_8a498eceAddress)
    call sub_8a498eceAddress.0xa9059cbb with:
         gas gas_remaining wei
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_295baf48 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    sub_295baf48 -= ext_call.return_data[0]
    emit 0xa87a6094: ext_call.return_data[0]
}

function collect(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if devAddress != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'must be dev or dao'
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function summon(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_295baf48 <= 0:
        revert with 0, 'ceremony is soldout'
    if not stor9:
        revert with 0, 'the ceremony has not begun'
    if startTime > block.timestamp:
        revert with 0, 'the ceremony has not begun'
    if block.timestamp > endTime:
        revert with 0, 'the ceremony has ended'
    if arg1 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'summon: unable to swap below 1* 1e18'
    if sub_295baf48 < arg1:
        revert with 'NH{q', 17
    if sub_295baf48 - arg1 < 0:
        revert with 0, 'summon: underflow'
    if msg.value <= 0:
        revert with 0, 'summon: cannot send 0'
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime and 25 * 10^11 > -1 / block.timestamp - startTime:
        revert with 'NH{q', 17
    if openPrice > (-25 * 10^11 * block.timestamp) + (25 * 10^11 * startTime) - 1:
        revert with 'NH{q', 17
    if openPrice > -openPrice + (-25 * 10^11 * block.timestamp) + (25 * 10^11 * startTime) - 1:
        revert with 'NH{q', 17
    lastPrice = (2 * openPrice) + (25 * 10^11 * block.timestamp) - (25 * 10^11 * startTime)
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime and 25 * 10^11 > -1 / block.timestamp - startTime:
        revert with 'NH{q', 17
    if openPrice > (-25 * 10^11 * block.timestamp) + (25 * 10^11 * startTime) - 1:
        revert with 'NH{q', 17
    if arg1 / 10^18 and openPrice + (25 * 10^11 * block.timestamp) - (25 * 10^11 * startTime) > -1 / arg1 / 10^18:
        revert with 'NH{q', 17
    if closePrice and arg1 > -1 / closePrice:
        revert with 'NH{q', 17
    if msg.value < (openPrice * arg1 / 10^18) + (25 * 10^11 * block.timestamp * arg1 / 10^18) - (25 * 10^11 * startTime * arg1 / 10^18):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'summon: payment value outside bounds'
    if msg.value > closePrice * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'summon: payment value outside bounds'
    call devAddress with:
       value msg.value / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
    call daoAddress with:
       value msg.value / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
    require ext_code.size(sub_8a498eceAddress)
    call sub_8a498eceAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_295baf48 < arg1:
        revert with 'NH{q', 17
    sub_295baf48 -= arg1
    emit TokensPurchased(arg1, msg.value, msg.sender);
}



}
