contract main {




// =====================  Runtime code  =====================


uint256 time;

function time() payable {
    return time
}

function _fallback() payable {
    revert
}

function getDate() payable {
    time = block.timestamp
}



}
