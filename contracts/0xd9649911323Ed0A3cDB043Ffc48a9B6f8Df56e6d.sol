contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}



}
