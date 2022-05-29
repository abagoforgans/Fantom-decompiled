contract main {




// =====================  Runtime code  =====================


uint8 farmingStarted; offset 160
uint8 farmingStopped; offset 168
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
        revert with 0, 'ACW'
    farmingStopped = 1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function startFarming() payable {
    if owner != msg.sender:
        revert with 0, 'ACW'
    if not farmingStarted:
        farmingStarted = 1
        startTimestamp = block.timestamp
        lastTimestamp = block.timestamp
}

function unlockAsset() payable {
    if not farmingStarted:
        revert with 0, 'F1'
    if farmingStopped:
        revert with 0, 'F2'
    if lastTimestamp < startTimestamp:
        revert with 0, 17
    if amount and lastTimestamp - startTimestamp > -1 / amount:
        revert with 0, 17
    if (lastTimestamp * amount) - (startTimestamp * amount) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if block.timestamp < startTimestamp:
        revert with 0, 17
    if amount and block.timestamp - startTimestamp > -1 / amount:
        revert with 0, 17
    if (block.timestamp * amount) - (startTimestamp * amount) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if (10^18 * block.timestamp * amount) - (10^18 * startTimestamp * amount) / period < (10^18 * lastTimestamp * amount) - (10^18 * startTimestamp * amount) / period:
        revert with 0, 17
    lastTimestamp = block.timestamp
    if totalUnlocked > !(((10^18 * block.timestamp * amount) - (10^18 * startTimestamp * amount) / period) - ((10^18 * lastTimestamp * amount) - (10^18 * startTimestamp * amount) / period)):
        revert with 0, 17
    totalUnlocked = totalUnlocked + ((10^18 * block.timestamp * amount) - (10^18 * startTimestamp * amount) / period) - ((10^18 * lastTimestamp * amount) - (10^18 * startTimestamp * amount) / period)
}



}
