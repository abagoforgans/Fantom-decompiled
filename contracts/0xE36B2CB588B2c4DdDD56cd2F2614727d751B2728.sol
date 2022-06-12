contract main {




// =====================  Runtime code  =====================


uint256 consecutiveWins;
uint256 sub_f852be69;
uint256 lastHash;
uint256 coinFlip;
uint256 blockNumber;
uint256 stor5;

function lastHash() payable {
    return lastHash
}

function blockNumber() payable {
    return blockNumber
}

function coinFlip() payable {
    return coinFlip
}

function consecutiveWins() payable {
    return consecutiveWins
}

function sub_f852be69(?) payable {
    return sub_f852be69
}

function _fallback() payable {
    revert
}

function flip(bool arg1) payable {
    require calldata.size - 4 >= 32
    if 1 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    blockNumber = block.number - 1
    sub_f852be69 = block.hash(blockNumber)
    require lastHash != sub_f852be69
    lastHash = sub_f852be69
    if stor5 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor5
    coinFlip = sub_f852be69 / stor5
    if coinFlip == 1:
        if arg1 != 1:
            consecutiveWins = 0
            return 0
    else:
        if arg1 != 0:
            consecutiveWins = 0
            return 0
    consecutiveWins++
    return 1
}



}
