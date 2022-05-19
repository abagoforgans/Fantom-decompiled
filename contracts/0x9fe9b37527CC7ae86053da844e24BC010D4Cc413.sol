contract main {




// =====================  Runtime code  =====================


uint256 maximum;
uint256 collected;
uint8 stor2; offset 160
uint128 stor2; offset 160
address collectionAddress;
address stor3;

function maximum() {
    return maximum
}

function collectionAddress() {
    return collectionAddress
}

function collected() {
    return collected
}

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == stor3
    Mask(96, 0, stor2.field_160) = 1
}

function unpause() {
    require msg.sender == stor3
    Mask(96, 0, stor2.field_160) = 0
}

function getRemainder() {
    if uint8(stor2.field_160):
        revert with 0, 'contract is paused'
    if maximum < collected:
        revert with 'NH{q', 17
    return (maximum - collected)
}

function setMaximum(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor3
    if uint8(stor2.field_160):
        revert with 0, 'contract is paused'
    maximum = arg1
}

function setCollectionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor3
    if uint8(stor2.field_160):
        revert with 0, 'contract is paused'
    collectionAddress = arg1
}

function deposit() payable {
    if uint8(stor2.field_160):
        revert with 0, 'contract is paused'
    if maximum < collected:
        revert with 'NH{q', 17
    if msg.value > maximum - collected:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'value is larger than the remainder'
    if collected > -msg.value - 1:
        revert with 'NH{q', 17
    collected += msg.value
    call collectionAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
