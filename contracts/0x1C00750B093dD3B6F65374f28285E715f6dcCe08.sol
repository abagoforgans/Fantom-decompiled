contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b655af9(?)
#
const version = 101


address owner;
address sub_bdb58e03Address;
address sub_f8caa7e5Address;

function owner() payable {
    return owner
}

function sub_bdb58e03(?) payable {
    return sub_bdb58e03Address
}

function sub_f8caa7e5(?) payable {
    return sub_f8caa7e5Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_a4ad0166(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f8caa7e5Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[24156 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
