contract main {




// =====================  Runtime code  =====================


uint256 startTime;
uint256 endTime;
uint256 sub_295baf48;
uint256 startRate;
uint256 sub_fc90fdc0;
address sub_8a498eceAddress;
address daoAddress;
uint8 stor7; offset 160
uint128 stor7; offset 160
address devAddress;

function startRate() {
    return startRate
}

function sub_295baf48(?) {
    return sub_295baf48
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

function sub_fc90fdc0(?) {
    return sub_fc90fdc0
}

function _fallback() payable {
    revert
}

function sub_cf94ee96(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    return (10^18 * arg1)
}

function sub_fb60dc18(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^16 > -1 / arg1:
        revert with 'NH{q', 17
    return (10^16 * arg1)
}

function sub_f516ff37(?) {
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime >= 24 * 3600:
        return (block.timestamp - startTime / 24 * 3600)
    else:
        return 0
}

function sub_a703cf67(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if devAddress != msg.sender:
        revert with 0, 'not dev'
    devAddress = address(arg1)
    daoAddress = address(arg2)
}

function sub_7088183b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'not dev'
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

function fetchRate() {
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime < 24 * 3600:
        if False and sub_fc90fdc0 > 0:
            revert with 'NH{q', 17
        if startRate < 0:
            revert with 'NH{q', 17
        return startRate
    if block.timestamp - startTime / 24 * 3600 and sub_fc90fdc0 > -1 / block.timestamp - startTime / 24 * 3600:
        revert with 'NH{q', 17
    if startRate < block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0:
        revert with 'NH{q', 17
    return (startRate - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0))
}

function getRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < startTime:
        revert with 'NH{q', 17
    if arg1 - startTime < 24 * 3600:
        if False and sub_fc90fdc0 > 0:
            revert with 'NH{q', 17
        if startRate < 0:
            revert with 'NH{q', 17
        return startRate
    if arg1 - startTime / 24 * 3600 and sub_fc90fdc0 > -1 / arg1 - startTime / 24 * 3600:
        revert with 'NH{q', 17
    if startRate < arg1 - startTime / 24 * 3600 * sub_fc90fdc0:
        revert with 'NH{q', 17
    return (startRate - (arg1 - startTime / 24 * 3600 * sub_fc90fdc0))
}

function sub_036b9973(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime < 24 * 3600:
        if False and sub_fc90fdc0 > 0:
            revert with 'NH{q', 17
        if startRate < 0:
            revert with 'NH{q', 17
        if arg1 / 10^18 and startRate > -1 / arg1 / 10^18:
            revert with 'NH{q', 17
        return (arg1 / 10^18 * startRate)
    if block.timestamp - startTime / 24 * 3600 and sub_fc90fdc0 > -1 / block.timestamp - startTime / 24 * 3600:
        revert with 'NH{q', 17
    if startRate < block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0:
        revert with 'NH{q', 17
    if arg1 / 10^18 and startRate - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0) > -1 / arg1 / 10^18:
        revert with 'NH{q', 17
    return ((startRate * arg1 / 10^18) - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0 * arg1 / 10^18))
}

function collectDust(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'not dev'
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
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call devAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
}

function sub_320b6f31(?) {
    if devAddress != msg.sender:
        revert with 0, 'not dev'
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

function initialize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if devAddress != msg.sender:
        revert with 0, 'not dev'
    if uint8(stor7.field_160):
        revert with 0, 'the ceremony has already begun'
    startTime = block.timestamp
    if block.timestamp > -1123201:
        revert with 'NH{q', 17
    endTime = block.timestamp + (312 * 24 * 3600)
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    startRate = 10^18 * arg1
    if arg2 and 10^16 > -1 / arg2:
        revert with 'NH{q', 17
    sub_fc90fdc0 = 10^16 * arg2
    require ext_code.size(sub_8a498eceAddress)
    call sub_8a498eceAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_295baf48
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    Mask(96, 0, stor7.field_160) = 1
    emit Initialized(msg.sender, sub_295baf48);
}

function sub_03b4a118(?) payable {
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'summonSouls: insufficient FTM sent'
    if block.timestamp > endTime:
        revert with 0, 'summonSouls: too late'
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime < 24 * 3600:
        if False and sub_fc90fdc0 > 0:
            revert with 'NH{q', 17
        if startRate < 0:
            revert with 'NH{q', 17
        if msg.value / 10^18 and startRate > -1 / msg.value / 10^18:
            revert with 'NH{q', 17
        if sub_295baf48 < msg.value / 10^18 * startRate:
            revert with 'NH{q', 17
        if sub_295baf48 - (msg.value / 10^18 * startRate) < 0:
            revert with 0, 'summonSouls: supply underflow'
        call devAddress with:
           value msg.value / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
        call daoAddress with:
           value msg.value / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
        if sub_295baf48 < msg.value / 10^18 * startRate:
            revert with 'NH{q', 17
        sub_295baf48 += -1 * msg.value / 10^18 * startRate
        require ext_code.size(sub_8a498eceAddress)
        call sub_8a498eceAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value / 10^18 * startRate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x6c6837b5: msg.sender, msg.value / 10^18 * startRate, msg.value
    else:
        if block.timestamp - startTime / 24 * 3600 and sub_fc90fdc0 > -1 / block.timestamp - startTime / 24 * 3600:
            revert with 'NH{q', 17
        if startRate < block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0:
            revert with 'NH{q', 17
        if msg.value / 10^18 and startRate - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0) > -1 / msg.value / 10^18:
            revert with 'NH{q', 17
        if sub_295baf48 < (startRate * msg.value / 10^18) - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0 * msg.value / 10^18):
            revert with 'NH{q', 17
        if sub_295baf48 - (startRate * msg.value / 10^18) + (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0 * msg.value / 10^18) < 0:
            revert with 0, 'summonSouls: supply underflow'
        call devAddress with:
           value msg.value / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
        call daoAddress with:
           value msg.value / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
        if sub_295baf48 < (startRate * msg.value / 10^18) - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0 * msg.value / 10^18):
            revert with 'NH{q', 17
        sub_295baf48 = sub_295baf48 - (startRate * msg.value / 10^18) + (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0 * msg.value / 10^18)
        require ext_code.size(sub_8a498eceAddress)
        call sub_8a498eceAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (startRate * msg.value / 10^18) - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0 * msg.value / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x6c6837b5: msg.sender, (startRate * msg.value / 10^18) - (block.timestamp - startTime / 24 * 3600 * sub_fc90fdc0 * msg.value / 10^18), msg.value
}



}
