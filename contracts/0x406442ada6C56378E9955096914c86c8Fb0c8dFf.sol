contract main {




// =====================  Runtime code  =====================


mapping of struct userInfo;
uint256 pendingReward;
uint256 startTimestamp;
uint256 bonusEndTimestamp;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function rewardPerSec() payable {
    return pendingReward
}

function bonusEndTimestamp() payable {
    return bonusEndTimestamp
}

function startTimestamp() payable {
    return startTimestamp
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return pendingReward
}

function _fallback() payable {
    revert
}



}
