contract main {




// =====================  Runtime code  =====================


#
#  - sub_9885e73c(?)
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
uint256 sub_3b0dc351;
address routerAddress;
uint8 stor11;
uint256 stor11; offset 8
uint8 stor12;
address stor12; offset 8
uint256 stor12;
uint256 sub_0afac7e3;
uint256 sub_e7835f81;
uint256 sub_4f15d820;
uint8 sub_3e24037d;
uint256 stor16;

function policy() {
    return policyAddress
}

function sub_0afac7e3(?) {
    return sub_0afac7e3
}

function sub_3b0dc351(?) {
    return sub_3b0dc351
}

function sub_3e24037d(?) {
    return bool(uint8(sub_3e24037d))
}

function collateralReserve() {
    return collateralReserveAddress
}

function sub_4f15d820(?) {
    return sub_4f15d820
}

function dollar() {
    return dollarAddress
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

function collateral() {
    return collateralAddress
}

function sub_e049b24e(?) {
    return bool(uint8(stor12.field_0))
}

function sub_e7835f81(?) {
    return sub_e7835f81
}

function router() {
    return routerAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_bcd54452(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_0afac7e3 = arg1
}

function sub_5fe33516(?) {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    uint256(stor16) = not uint8(sub_3e24037d) or Mask(248, 8, uint256(stor16))
}

function sub_6a7250be(?) {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    uint256(stor12.field_0) = not uint8(stor12.field_0) or Mask(248, 8, uint256(stor12.field_0))
}

function sub_12396b43(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 300:
        revert with 0, 'too much'
    sub_e7835f81 = arg1
}

function sub_a538659d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 300:
        revert with 0, 'too much'
    sub_4f15d820 = arg1
}

function sub_f6fc5516(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 100000:
        revert with 0, 'ZAP SLIPPAGE TOO HIGH'
    sub_3b0dc351 = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'Invalid router'
    routerAddress = arg1
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'Invalid address'
    oracleAddress = arg1
}

function setPolicy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'Invalid address'
    policyAddress = arg1
}

function setCollateralReserve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    collateralReserveAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_0ae2dbd8(?) {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xe926649b with:
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

function sub_14362530(?) {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xd34410ba with:
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
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
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
    uint8(stor11.field_0) = uint8(-ext_call.return_data[31 len 1] + 18)
    Mask(248, 0, stor11.field_8) = 0
    collateralReserveAddress = arg5
    policyAddress = arg6
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not address(stor12.field_8):
        revert with 0, 'Invalid router'
    routerAddress = address(stor12.field_8)
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}



}
