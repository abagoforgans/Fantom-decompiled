contract main {




// =====================  Runtime code  =====================


#
#  - batchTransferToken(address arg1, address[] arg2, uint256[] arg3)
#  - batchTransferET(address[] arg1, uint256[] arg2)
#
address owner;
uint16 arrayLimit;

function owner() {
    return owner
}

function arrayLimit() {
    return arrayLimit
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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



}
