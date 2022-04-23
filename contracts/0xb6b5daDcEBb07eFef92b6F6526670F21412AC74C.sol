contract main {




// =====================  Runtime code  =====================


address _owner;

function owner() payable {
    return _owner
}

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}



}
