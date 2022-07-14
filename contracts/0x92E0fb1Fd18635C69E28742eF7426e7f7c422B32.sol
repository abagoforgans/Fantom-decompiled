contract main {




// =====================  Runtime code  =====================


uint256 rewardPerSec;
uint256 startTimestamp;
uint256 bonusEndTimestamp;

function rewardPerSec() payable {
    return rewardPerSec
}

function bonusEndTimestamp() payable {
    return bonusEndTimestamp
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}



}
