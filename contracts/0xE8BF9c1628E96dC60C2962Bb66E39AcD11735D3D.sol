contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalUnlocked;
uint256 lastClaimedTimestamp;
uint256 sub_6d1b1af9;
uint256 amount;
uint256 period;
uint8 deprecated;
uint8 farmingStarted; offset 8
uint256 stor6; offset 8

function deprecated() payable {
    return bool(deprecated)
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

function amount() payable {
    return amount
}

function lastClaimedTimestamp() payable {
    return lastClaimedTimestamp
}

function period() payable {
    return period
}

function _fallback() payable {
    revert
}

function setDeprecated() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    deprecated = 1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function startFarming() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if not farmingStarted:
        stor6 = 1
        sub_6d1b1af9 = block.timestamp
        lastClaimedTimestamp = sub_6d1b1af9
}

function unlockAsset() payable {
    if not farmingStarted:
        revert with 0, 'farming is not started yet'
    if deprecated:
        revert with 0, 'This contract is deprecated.'
    if lastClaimedTimestamp < sub_6d1b1af9:
        revert with 'NH{q', 17
    if amount and lastClaimedTimestamp - sub_6d1b1af9 > -1 / amount:
        revert with 'NH{q', 17
    if (lastClaimedTimestamp * amount) - (sub_6d1b1af9 * amount) and 10^18 > -1 / (lastClaimedTimestamp * amount) - (sub_6d1b1af9 * amount):
        revert with 'NH{q', 17
    if not period:
        revert with 'NH{q', 18
    if block.timestamp < sub_6d1b1af9:
        revert with 'NH{q', 17
    if amount and block.timestamp - sub_6d1b1af9 > -1 / amount:
        revert with 'NH{q', 17
    if (block.timestamp * amount) - (sub_6d1b1af9 * amount) and 10^18 > -1 / (block.timestamp * amount) - (sub_6d1b1af9 * amount):
        revert with 'NH{q', 17
    if not period:
        revert with 'NH{q', 18
    if (10^18 * block.timestamp * amount) - (10^18 * sub_6d1b1af9 * amount) / period < (10^18 * lastClaimedTimestamp * amount) - (10^18 * sub_6d1b1af9 * amount) / period:
        revert with 'NH{q', 17
    lastClaimedTimestamp = block.timestamp
    if totalUnlocked > -((10^18 * block.timestamp * amount) - (10^18 * sub_6d1b1af9 * amount) / period) + ((10^18 * lastClaimedTimestamp * amount) - (10^18 * sub_6d1b1af9 * amount) / period) - 1:
        revert with 'NH{q', 17
    totalUnlocked = totalUnlocked + ((10^18 * block.timestamp * amount) - (10^18 * sub_6d1b1af9 * amount) / period) - ((10^18 * lastClaimedTimestamp * amount) - (10^18 * sub_6d1b1af9 * amount) / period)
}



}
