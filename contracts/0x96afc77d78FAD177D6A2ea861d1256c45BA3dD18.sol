contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 latestRound;
array of uint256 latestAnswer;
array of uint256 latestTimestamp;

function latestAnswer() payable {
    require uint8(stor2) < 256
    return latestAnswer[uint8(stor2)]
}

function latestRound() payable {
    return uint256(latestRound)
}

function latestTimestamp() payable {
    require uint8(stor2) < 256
    return latestTimestamp[uint8(stor2)]
}

function owner() payable {
    return owner
}

function getAnswer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > uint256(latestRound):
        revert with 0, 'future estimate not available'
    if uint256(latestRound) - arg1 >= 256:
        revert with 0, 'not enough history'
    require uint8(arg1) < 256
    return latestAnswer[uint8(arg1)]
}

function getTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > uint256(latestRound):
        revert with 0, 'future estimate not available'
    if uint256(latestRound) - arg1 >= 256:
        revert with 0, 'not enough history'
    require uint8(arg1) < 256
    return latestTimestamp[uint8(arg1)]
}

function sub_b750bdde(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_2a142b0b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'access restricted'
    stor1[address(arg1)] = 1
    emit 0x45994835: address(arg1), block.timestamp
}

function sub_b98ffeb1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'access restricted'
    stor1[address(arg1)] = 0
    emit 0x311f8a5f: address(arg1), block.timestamp
}

function sub_0f7dbf0f(?) payable {
    require calldata.size - 4 >= 96
    if not stor1[msg.sender]:
        revert with 0, 'not authorized'
    if arg1 - uint256(latestRound) > 1:
        revert with 0, 'round skip prohibited'
    if arg1 - uint256(latestRound) < -1:
        revert with 0, 'round skip prohibited'
    if arg1 > uint256(latestRound):
        uint256(latestRound) = arg1
        emit NewRound(block.timestamp, arg1, msg.sender);
    require uint8(arg1) < 256
    latestAnswer[uint8(arg1)] = arg2
    latestTimestamp[uint8(arg1)] = arg3
    emit AnswerUpdated(arg3, arg2, arg1);
}



}
