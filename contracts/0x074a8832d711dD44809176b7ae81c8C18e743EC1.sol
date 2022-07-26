contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Beep', 0

const decimals = 18

const symbol = 'BEEP', 0


address owner;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address devAddress;
uint8 taxPercent; offset 160
uint256 sub_431c147a;
uint256 sub_3de07520;
uint8 sub_2cb6d078;
uint8 sub_1b1dc652; offset 8
uint8 sub_cdbdc6c8; offset 16
uint8 sub_cae2c5c5; offset 24
uint8 sub_af530ced; offset 32
uint8 sub_22d45a51; offset 40
uint256 stor10;
uint256 sub_a4cb190e;
uint256 sub_0fc176be;

function sub_0fc176be(?) {
    return sub_0fc176be
}

function totalSupply() {
    return totalSupply
}

function sub_1b1dc652(?) {
    return sub_1b1dc652
}

function sub_22d45a51(?) {
    return sub_22d45a51
}

function sub_2cb6d078(?) {
    return sub_2cb6d078
}

function devAddress() {
    return devAddress
}

function sub_3de07520(?) {
    return sub_3de07520
}

function sub_431c147a(?) {
    return sub_431c147a
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function taxPercent() {
    return taxPercent
}

function getOwner() {
    return owner
}

function sub_a4cb190e(?) {
    return sub_a4cb190e
}

function sub_af530ced(?) {
    return sub_af530ced
}

function sub_cae2c5c5(?) {
    return sub_cae2c5c5
}

function sub_cdbdc6c8(?) {
    return sub_cdbdc6c8
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ba08deee(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3de07520 = arg1
}

function sub_f7c6ec33(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_431c147a = arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
}

function sub_240143b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) > 15:
        revert with 0, 'tax cannot be higher than 15%'
    taxPercent = uint8(arg1)
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor1[address(arg1)]) != 1:
        revert with 0, 'account is not excluded from fee'
    stor1[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'account is already excluded from fee'
    stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_c8667238(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = uint8(arg1) or stor10 and -4278190336 or uint8(arg2) << 24 and -1095216725761 or uint8(arg3) << 8 or uint8(arg4) << 32 and -280375481794561 or uint8(arg5) << 16 or uint8(arg6) << 40
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}



}
