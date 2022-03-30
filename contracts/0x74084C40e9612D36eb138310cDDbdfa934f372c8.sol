contract main {




// =====================  Runtime code  =====================


uint256 count;

function count() payable {
    return count
}

function getCount() payable {
    return count
}

function _fallback() payable {
    revert
}

function increment() payable {
    count++
}



}
