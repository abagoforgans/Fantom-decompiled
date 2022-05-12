contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint8 stor1; offset 160
address stor1;
mapping of uint8 stor2;

function owner() payable {
    return address(owner)
}

function checkEnabled() payable {
    return bool(uint8(stor1.field_160))
}

function _fallback() payable {
    revert
}

function disableAccessCheck() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if uint8(stor1.field_160):
        uint8(stor1.field_160) = 0
        emit CheckAccessDisabled()
}

function enableAccessCheck() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if not uint8(stor1.field_160):
        uint8(stor1.field_160) = 1
        emit CheckAccessEnabled()
}

function addAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
        emit AddedAccess(arg1);
}

function removeAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if stor2[address(arg1)]:
        stor2[address(arg1)] = 0
        emit RemovedAccess(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    address(stor1.field_0) = arg1
    emit OwnershipTransferRequested(address(owner), arg1);
}

function acceptOwnership() payable {
    if address(stor1.field_0) != msg.sender:
        revert with 0, 'Must be proposed owner'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    address(stor1.field_0) = 0
    emit OwnershipTransferred(address(owner), msg.sender);
}

function hasAccess(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor2[address(arg1)]:
        mem[ceil32(arg2.length) + 128] = bool(stor2[address(arg1)])
    else:
        mem[ceil32(arg2.length) + 128] = not bool(uint8(stor1.field_160))
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
