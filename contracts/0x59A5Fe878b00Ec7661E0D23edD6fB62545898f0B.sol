contract main {




// =====================  Runtime code  =====================


uint256 latestAnswer;
uint256 latestTimestamp;
uint256 decimals;
address stor3;

function decimals() payable {
    return decimals
}

function latestAnswer() payable {
    return latestAnswer
}

function latestTimestamp() payable {
    return latestTimestamp
}

function _fallback() payable {
    revert
}

function latestRoundData() payable {
    return 0, latestAnswer, 0, latestTimestamp, 0
}

function setPrice(int256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'Unit Protocol: UNAUTHORIZED'
    latestAnswer = arg1
    latestTimestamp = block.timestamp
    emit AnswerUpdated(block.timestamp, arg1, block.timestamp);
}



}
