contract main {




// =====================  Runtime code  =====================


uint8 farmingStarted; offset 160
uint8 farmingStopped; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 startTimestamp;
uint256 lastTimestamp;
uint256 totalUnlocked;
uint256 amount;
uint256 period;

function farmingStopped() payable {
    return bool(farmingStopped)
}

function lastTimestamp() payable {
    return lastTimestamp
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

function startTimestamp() payable {
    return startTimestamp
}

function period() payable {
    return period
}

function _fallback() payable {
    revert
}

function stopFarming() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(88, 0, stor0.field_168) = 1
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
        Mask(96, 0, stor0.field_160) = 1
        startTimestamp = block.timestamp
        lastTimestamp = startTimestamp
}

function unlockAsset() payable {
    if not farmingStarted:
        revert with 0, 'farming is not started yet'
    if farmingStopped:
        revert with 0, 'farming has been stopped.'
    if lastTimestamp < startTimestamp:
        revert with 'NH{q', 17
    if amount and lastTimestamp - startTimestamp > -1 / amount:
        revert with 'NH{q', 17
    if (lastTimestamp * amount) - (startTimestamp * amount) and 10^18 > -1 / (lastTimestamp * amount) - (startTimestamp * amount):
        revert with 'NH{q', 17
    if not period:
        revert with 'NH{q', 18
    if block.timestamp < startTimestamp:
        revert with 'NH{q', 17
    if amount and block.timestamp - startTimestamp > -1 / amount:
        revert with 'NH{q', 17
    if (block.timestamp * amount) - (startTimestamp * amount) and 10^18 > -1 / (block.timestamp * amount) - (startTimestamp * amount):
        revert with 'NH{q', 17
    if not period:
        revert with 'NH{q', 18
    if (10^18 * block.timestamp * amount) - (10^18 * startTimestamp * amount) / period < (10^18 * lastTimestamp * amount) - (10^18 * startTimestamp * amount) / period:
        revert with 'NH{q', 17
    lastTimestamp = block.timestamp
    if totalUnlocked > -((10^18 * block.timestamp * amount) - (10^18 * startTimestamp * amount) / period) + ((10^18 * lastTimestamp * amount) - (10^18 * startTimestamp * amount) / period) - 1:
        revert with 'NH{q', 17
    totalUnlocked = totalUnlocked + ((10^18 * block.timestamp * amount) - (10^18 * startTimestamp * amount) / period) - ((10^18 * lastTimestamp * amount) - (10^18 * startTimestamp * amount) / period)
}



}
