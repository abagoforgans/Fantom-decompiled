contract main {




// =====================  Runtime code  =====================


uint256 retrieve;

function retrieve() payable {
    return retrieve
}

function _fallback() payable {
    revert
}

function increment() payable {
    if retrieve > -2:
        revert with 'NH{q', 17
    retrieve++
    emit ValueChanged(retrieve);
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    retrieve = arg1
    emit ValueChanged(arg1);
}



}
