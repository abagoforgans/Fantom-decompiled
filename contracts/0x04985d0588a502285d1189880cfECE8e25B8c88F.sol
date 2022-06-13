contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
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

function sub_855ee2f7(?) payable {
    require calldata.size - 4 >= 192
    if arg1 >= arg2:
        return 0
    if arg2 < arg1:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    if arg2 - arg1 / arg4 and arg2 - arg1 / arg4 > -1 / arg2 - arg1 / arg4:
        revert with 0, 17
    if arg2 - arg1 / arg4 * arg2 - arg1 / arg4 / 10^18 and arg3 > -1 / arg2 - arg1 / arg4 * arg2 - arg1 / arg4 / 10^18:
        revert with 0, 17
    if arg2 - arg1 / arg4 * arg2 - arg1 / arg4 / 10^18 * arg3 / 10^18 > !arg5:
        revert with 0, 17
    if (arg2 - arg1 / arg4 * arg2 - arg1 / arg4 / 10^18 * arg3 / 10^18) + arg5 <= arg6:
        return uint16((arg2 - arg1 / arg4 * arg2 - arg1 / arg4 / 10^18 * arg3 / 10^18) + arg5)
    return uint16(arg6)
}



}
