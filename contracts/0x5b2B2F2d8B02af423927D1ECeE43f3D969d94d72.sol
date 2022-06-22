contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowance;

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}



}
