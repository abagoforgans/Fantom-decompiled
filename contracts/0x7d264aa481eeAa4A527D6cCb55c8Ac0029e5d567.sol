contract main {




// =====================  Runtime code  =====================


uint256 count;

function getCount() payable {
    return count
}

function _fallback() payable {
    revert
}

function incrementCount() payable {
    if count == -1:
        revert with 'NH{q', 17
    count++
}



}
