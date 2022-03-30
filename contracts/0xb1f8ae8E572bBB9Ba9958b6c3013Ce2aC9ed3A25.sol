contract main {




// =====================  Runtime code  =====================


uint256 retrieve;
address stor1;

function retrieve() payable {
    return retrieve
}

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'no.'
    retrieve = arg1
}



}
