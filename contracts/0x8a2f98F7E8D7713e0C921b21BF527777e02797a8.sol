contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getEthToTokenInputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function getTokenToEthOutputPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function ethToTokenSwapInput(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return 0
}



}
