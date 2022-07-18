contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_a64fa056;
mapping of uint256 stor2;

function owner() payable {
    return owner
}

function sub_a64fa056(?) payable {
    return sub_a64fa056
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_55215ee1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a64fa056 = arg1
}

function sub_7c4aba81(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(arg1)]:
        return sub_a64fa056
    return stor2[address(arg1)]
}

function sub_ec62693c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, '_address is required'
    stor2[address(arg1)] = arg2
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
