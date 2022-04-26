contract main {




// =====================  Runtime code  =====================


uint256 currentTime;

function getCurrentTime() payable {
    return currentTime
}

function _fallback() payable {
    revert
}

function setCurrentTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    currentTime = arg1
}



}
