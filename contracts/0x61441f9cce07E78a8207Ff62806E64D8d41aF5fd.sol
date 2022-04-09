contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalUnlocked;
uint256 lastClaimedTimestamp;
uint256 sub_6d1b1af9;
uint256 c;
uint256 a;
uint8 stor6;
uint8 farmingStarted; offset 8
uint256 stor6; offset 8

function a() payable {
    return a
}

function sub_6d1b1af9(?) payable {
    return sub_6d1b1af9
}

function owner() payable {
    return owner
}

function farmingStarted() payable {
    return bool(farmingStarted)
}

function totalUnlocked() payable {
    return totalUnlocked
}

function c() payable {
    return c
}

function lastClaimedTimestamp() payable {
    return lastClaimedTimestamp
}

function _fallback() payable {
    revert
}

function setDeprecated() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint8(stor6.field_0) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function startFarming() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor6.field_8) = 1
    sub_6d1b1af9 = block.timestamp
    lastClaimedTimestamp = sub_6d1b1af9
}

function mintAsset() payable {
    if not farmingStarted:
        revert with 0, 'farming is not started yet'
    if not uint8(stor6.field_0):
        revert with 0, 'This contract is deprecated.'
    if not c:
        revert with 'NH{q', 18
    if lastClaimedTimestamp > -(a / c) - 1:
        revert with 'NH{q', 17
    if lastClaimedTimestamp + (a / c) < sub_6d1b1af9:
        revert with 'NH{q', 17
    if a and 10^18 > -1 / a:
        revert with 'NH{q', 17
    if not lastClaimedTimestamp + (a / c) - sub_6d1b1af9:
        revert with 'NH{q', 18
    if not c:
        revert with 'NH{q', 18
    if block.timestamp > -(a / c) - 1:
        revert with 'NH{q', 17
    if block.timestamp + (a / c) < sub_6d1b1af9:
        revert with 'NH{q', 17
    if a and 10^18 > -1 / a:
        revert with 'NH{q', 17
    if not block.timestamp + (a / c) - sub_6d1b1af9:
        revert with 'NH{q', 18
    if 10^18 * a / lastClaimedTimestamp + (a / c) - sub_6d1b1af9 < 10^18 * a / block.timestamp + (a / c) - sub_6d1b1af9:
        revert with 'NH{q', 17
    lastClaimedTimestamp = block.timestamp
    if totalUnlocked > -(10^18 * a / lastClaimedTimestamp + (a / c) - sub_6d1b1af9) + (10^18 * a / block.timestamp + (a / c) - sub_6d1b1af9) - 1:
        revert with 'NH{q', 17
    totalUnlocked = totalUnlocked + (10^18 * a / lastClaimedTimestamp + (a / c) - sub_6d1b1af9) - (10^18 * a / block.timestamp + (a / c) - sub_6d1b1af9)
}



}
