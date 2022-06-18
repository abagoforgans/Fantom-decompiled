contract main {




// =====================  Runtime code  =====================


#
#  - sub_3237d719(?)
#  - _fallback()
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address oracleAddress;
address collateralAddress;
address dollarAddress;
address policyAddress;
address shareAddress;
address collateralReserveAddress;
mapping of uint256 redeem_share_balances;
mapping of uint256 redeem_collateral_balances;
uint256 unclaimed_pool_collateral;
uint256 unclaimed_pool_share;
mapping of uint256 last_redeemed;
uint256 sub_3b0dc351;
address routerAddress;
address stor15;
uint8 stor16;
uint256 stor16; offset 8
uint256 stor16;
uint8 sub_e049b24e;
address stor17; offset 8
uint256 stor17;

function policy() {
    return policyAddress
}

function sub_3b0dc351(?) {
    return sub_3b0dc351
}

function collateralReserve() {
    return collateralReserveAddress
}

function dollar() {
    return dollarAddress
}

function redeem_share_balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return redeem_share_balances[arg1]
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function share() {
    return shareAddress
}

function unclaimed_pool_share() {
    return unclaimed_pool_share
}

function redeem_collateral_balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return redeem_collateral_balances[arg1]
}

function collateral() {
    return collateralAddress
}

function last_redeemed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return last_redeemed[arg1]
}

function sub_e049b24e(?) {
    return bool(sub_e049b24e)
}

function router() {
    return routerAddress
}

function unclaimed_pool_collateral() {
    return unclaimed_pool_collateral
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6a7250be(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor17.field_0) = not sub_e049b24e or Mask(248, 8, uint256(stor17.field_0))
}

function sub_f6fc5516(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100000:
        revert with 0, 'ZAP SLIPPAGE TOO HIGH'
    sub_3b0dc351 = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid router'
    routerAddress = arg1
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    oracleAddress = arg1
}

function setPolicy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    policyAddress = arg1
}

function setCollateralReserve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    collateralReserveAddress = arg1
}

function sub_548f8939(?) {
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_bfa3e19b(?) {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getCollateralBalance() {
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function globalCollateralBalance() {
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < unclaimed_pool_collateral:
        revert with 0, 17
    return (ext_call.return_data[0] - unclaimed_pool_collateral)
}

function sub_508f657d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.sender:
        revert with 0, 'Invalid reserve address'
    require ext_code.size(collateralReserveAddress)
    call collateralReserveAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args collateralAddress, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor15)
    call stor15.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}

function sub_99bcc775(?) {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x43be1230 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    if not ext_call.return_data[63 len 1]:
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (10^6 * ext_call.return_data[0])
    if bool(bool(ext_call.return_data[63 len 1] < 78)) or bool(bool(ext_call.return_data[63 len 1] < 32)):
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[63 len 1]:
            revert with 0, 18
        return (10^6 * ext_call.return_data[0] / 10^ext_call.return_data[63 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[63 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (10^6 * ext_call.return_data[0] / s * t)
}

function getDollarPrice() {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xe61574b0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    if not ext_call.return_data[63 len 1]:
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (10^6 * ext_call.return_data[0])
    if bool(bool(ext_call.return_data[63 len 1] < 78)) or bool(bool(ext_call.return_data[63 len 1] < 32)):
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[63 len 1]:
            revert with 0, 18
        return (10^6 * ext_call.return_data[0] / 10^ext_call.return_data[63 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[63 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (10^6 * ext_call.return_data[0] / s * t)
}

function getCollateralPrice() {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x12eb1119 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    if not ext_call.return_data[63 len 1]:
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (10^6 * ext_call.return_data[0])
    if bool(bool(ext_call.return_data[63 len 1] < 78)) or bool(bool(ext_call.return_data[63 len 1] < 32)):
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[63 len 1]:
            revert with 0, 18
        return (10^6 * ext_call.return_data[0] / 10^ext_call.return_data[63 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[63 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (10^6 * ext_call.return_data[0] / s * t)
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = arg1
    dollarAddress = arg2
    shareAddress = arg3
    collateralAddress = arg4
    require ext_code.size(arg4)
    staticcall arg4.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    uint8(stor16.field_0) = uint8(-ext_call.return_data[31 len 1] + 18)
    Mask(248, 0, stor16.field_8) = 0
    collateralReserveAddress = arg5
    policyAddress = arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(stor17.field_8):
        revert with 0, 'Invalid router'
    routerAddress = address(stor17.field_8)
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function globalCollateralValue() {
    if not uint256(stor16.field_0):
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.0x12eb1119 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        if not ext_call.return_data[63 len 1]:
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args collateralReserveAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < unclaimed_pool_collateral:
                revert with 0, 17
            if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
                revert with 0, 17
            if (10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0]) and 1 > -1 / (10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0]):
                revert with 0, 17
            return ((10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0]) / 10^6)
        if bool(bool(ext_call.return_data[63 len 1] < 78)) or bool(bool(ext_call.return_data[63 len 1] < 32)):
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^ext_call.return_data[63 len 1]:
                revert with 0, 18
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args collateralReserveAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < unclaimed_pool_collateral:
                revert with 0, 17
            if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
                revert with 0, 17
            if (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) and 1 > -1 / (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])):
                revert with 0, 17
            return ((ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) / 10^6)
        s = 10
        t = 1
        idx = ext_call.return_data[63 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < unclaimed_pool_collateral:
            revert with 0, 17
        if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
            revert with 0, 17
        if (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / s * t) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / s * t) and 1 > -1 / (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / s * t) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / s * t):
            revert with 0, 17
        return ((ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / s * t) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / s * t) / 10^6)
    if bool(bool(uint256(stor16.field_0) < 78)) or bool(bool(uint256(stor16.field_0) < 32)):
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.0x12eb1119 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        if not ext_call.return_data[63 len 1]:
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args collateralReserveAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < unclaimed_pool_collateral:
                revert with 0, 17
            if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
                revert with 0, 17
            if (10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0]) and 10^uint256(stor16.field_0) > -1 / (10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0]):
                revert with 0, 17
            return ((10^6 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint256(stor16.field_0)) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0] * 10^uint256(stor16.field_0)) / 10^6)
        if bool(bool(ext_call.return_data[63 len 1] < 78)) or bool(bool(ext_call.return_data[63 len 1] < 32)):
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^ext_call.return_data[63 len 1]:
                revert with 0, 18
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args collateralReserveAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < unclaimed_pool_collateral:
                revert with 0, 17
            if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
                revert with 0, 17
            if (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) and 10^uint256(stor16.field_0) > -1 / (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])):
                revert with 0, 17
            return ((ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) * 10^uint256(stor16.field_0)) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) * 10^uint256(stor16.field_0)) / 10^6)
        s = 10
        t = 1
        idx = ext_call.return_data[63 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < unclaimed_pool_collateral:
            revert with 0, 17
        if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
            revert with 0, 17
        if (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / s * t) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / s * t) and 10^uint256(stor16.field_0) > -1 / (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / s * t) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / s * t):
            revert with 0, 17
        return ((ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / s * t * 10^uint256(stor16.field_0)) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / s * t * 10^uint256(stor16.field_0)) / 10^6)
    s = 10
    t = 1
    idx = uint256(stor16.field_0)
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x12eb1119 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    if not ext_call.return_data[63 len 1]:
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < unclaimed_pool_collateral:
            revert with 0, 17
        if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
            revert with 0, 17
        if (10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0]) and s * t > -1 / (10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0]):
            revert with 0, 17
        return ((10^6 * ext_call.return_data[0] * ext_call.return_data[0] * s * t) - (10^6 * unclaimed_pool_collateral * ext_call.return_data[0] * s * t) / 10^6)
    if bool(bool(ext_call.return_data[63 len 1] < 78)) or bool(bool(ext_call.return_data[63 len 1] < 32)):
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[63 len 1]:
            revert with 0, 18
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < unclaimed_pool_collateral:
            revert with 0, 17
        if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
            revert with 0, 17
        if (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) and s * t > -1 / (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])):
            revert with 0, 17
        return ((ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) * s * t) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]) * s * t) / 10^6)
    u = 10
    v = 1
    idx = ext_call.return_data[63 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < unclaimed_pool_collateral:
        revert with 0, 17
    if ext_call.return_data[0] - unclaimed_pool_collateral and 10^6 * ext_call.return_data[0] / u * v > -1 / ext_call.return_data[0] - unclaimed_pool_collateral:
        revert with 0, 17
    if (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / u * v) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / u * v) and s * t > -1 / (ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / u * v) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / u * v):
        revert with 0, 17
    return ((ext_call.return_data[0] * 10^6 * ext_call.return_data[0] / u * v * s * t) - (unclaimed_pool_collateral * 10^6 * ext_call.return_data[0] / u * v * s * t) / 10^6)
}



}
