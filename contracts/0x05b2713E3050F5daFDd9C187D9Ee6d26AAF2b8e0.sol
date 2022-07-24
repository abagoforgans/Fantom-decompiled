contract main {




// =====================  Runtime code  =====================


#
#  - swapBack(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - swap(uint256 arg1, uint256 arg2)
#
address owner;
mapping of uint8 stor2;
mapping of uint256 processedFees;
uint256 bridgeFee;
uint8 stor5;
address stor5; offset 8
address stor6;
address stor7;

function getBridgeStatus(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[arg2][arg1])
}

function _isBridgingPaused() {
    return bool(uint8(stor5.field_0))
}

function getProcessedFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    return processedFees[arg1]
}

function getBridgeFee() {
    return bridgeFee
}

function owner() {
    return owner
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

function setProcessedFess(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    processedFees[arg1] = arg2
}

function setBridgeFeesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
}

function setSystem(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
    return 1
}

function updateCatoshiContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor5.field_8) = arg1
}

function updateBridgingStaus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor5.field_0) = uint8(arg1)
}

function setBridgeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invalid Percentage'
    bridgeFee = arg1
    return 1
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

function feeCalculation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        if arg1 < 0:
            revert with 0, 17
        return arg1
    if arg1 and bridgeFee > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * bridgeFee / arg1 != bridgeFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg1 < arg1 * bridgeFee / 1000:
        revert with 0, 17
    return (arg1 - (arg1 * bridgeFee / 1000))
}



}
