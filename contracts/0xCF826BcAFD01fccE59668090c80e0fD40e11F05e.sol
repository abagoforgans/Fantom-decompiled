contract main {




// =====================  Runtime code  =====================


#
#  - sub_dce5e7c8(?)
#
address owner;
address sub_7e8c95abAddress;
address sub_2ffdbc81Address;
address sub_a094600eAddress;
uint256 creationFee;
uint256 sub_9ee8e198;
address devAddr;
address sub_0777bc02Address;

function sub_0777bc02(?) {
    return sub_0777bc02Address
}

function sub_2ffdbc81(?) {
    return sub_2ffdbc81Address
}

function sub_7e8c95ab(?) {
    return sub_7e8c95abAddress
}

function owner() {
    return owner
}

function sub_9ee8e198(?) {
    return sub_9ee8e198
}

function sub_a094600e(?) {
    return sub_a094600eAddress
}

function devAddr() {
    return devAddr
}

function creationFee() {
    return creationFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[23457 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        creationFee = 0
    else:
        require arg1
        if 750 * arg1 / arg1 != 750:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[23495 len 33], mem[197 len 31]
        creationFee = 750 * arg1 / 1000
    if creationFee > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9ee8e198 = arg1 - creationFee
    emit FeesUpdated(creationFee, sub_9ee8e198);
}



}
