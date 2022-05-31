contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_101115e1;
uint256 sub_fae04702;
uint256 sub_ea92e501;
uint256 sub_6a0b2754;
uint256 sub_07a3a257;
uint256 sub_00d043f4;
uint256 sub_a7aa7d64;

function sub_00d043f4(?) payable {
    return sub_00d043f4
}

function sub_07a3a257(?) payable {
    return sub_07a3a257
}

function sub_101115e1(?) payable {
    return sub_101115e1
}

function sub_6a0b2754(?) payable {
    return sub_6a0b2754
}

function owner() payable {
    return owner
}

function sub_a7aa7d64(?) payable {
    return sub_a7aa7d64
}

function sub_ea92e501(?) payable {
    return sub_ea92e501
}

function sub_fae04702(?) payable {
    return sub_fae04702
}

function _fallback() payable {
    revert
}

function sub_23db4bbc(?) payable {
    return sub_00d043f4, 6
}

function sub_12eb1119(?) payable {
    return sub_ea92e501, 18
}

function sub_1b35a4a6(?) payable {
    return sub_a7aa7d64, 18
}

function sub_2dd67f24(?) payable {
    return sub_07a3a257, 18
}

function sub_aa09d9bf(?) payable {
    return sub_6a0b2754, 18
}

function sub_b1c0c6e8(?) payable {
    return sub_fae04702, 18
}

function sub_edc808a3(?) payable {
    return sub_101115e1, 18
}

function sub_1cfe84c1(?) payable {
    require calldata.size - 4 >= 32
    sub_07a3a257 = arg1
}

function sub_23a7c591(?) payable {
    require calldata.size - 4 >= 32
    sub_00d043f4 = arg1
}

function sub_54003c81(?) payable {
    require calldata.size - 4 >= 32
    sub_fae04702 = arg1
}

function sub_6f8e7c38(?) payable {
    require calldata.size - 4 >= 32
    sub_a7aa7d64 = arg1
}

function sub_739f1d45(?) payable {
    require calldata.size - 4 >= 32
    sub_101115e1 = arg1
}

function sub_d5579ce7(?) payable {
    require calldata.size - 4 >= 32
    sub_6a0b2754 = arg1
}

function sub_eee5a96d(?) payable {
    require calldata.size - 4 >= 32
    sub_ea92e501 = arg1
}

function sub_e61574b0(?) payable {
    if sub_00d043f4 and sub_6a0b2754 > -1 / sub_00d043f4:
        revert with 0, 17
    return sub_00d043f4 * sub_6a0b2754 / 10^6, 18
}

function sub_43be1230(?) payable {
    if sub_fae04702 and sub_ea92e501 > -1 / sub_fae04702:
        revert with 0, 17
    return sub_fae04702 * sub_ea92e501 / 10^18, 18
}

function sub_ac5c4b11(?) payable {
    if sub_101115e1 and sub_ea92e501 > -1 / sub_101115e1:
        revert with 0, 17
    return sub_101115e1 * sub_ea92e501 / 10^18, 18
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getPriceInUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'need to token address '
    return sub_ea92e501, 18
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



}
