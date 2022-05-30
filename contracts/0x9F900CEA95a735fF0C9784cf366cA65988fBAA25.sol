contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint256 amount;

function owner() payable {
    return owner
}

function sub_91394882(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require address(arg1)
    return amount
}

function amount() payable {
    return amount
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

function sub_f0d20a68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require address(arg1)
    if not amount:
        revert with 'NH{q', 17
    amount--
    stor0 = 1
    return amount
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
