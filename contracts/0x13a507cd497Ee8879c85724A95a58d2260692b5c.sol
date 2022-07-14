contract main {




// =====================  Runtime code  =====================


mapping of uint256 investors;

function investors(address arg1) {
    require calldata.size - 4 >= 32
    return investors[arg1]
}

function _fallback() payable {
    revert
}

function fund() payable {
    investors[address(msg.sender)] += msg.value
}



}
