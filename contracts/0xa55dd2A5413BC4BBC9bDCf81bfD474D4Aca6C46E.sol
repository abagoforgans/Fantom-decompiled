contract main {




// =====================  Runtime code  =====================


uint256 count;

function getCount() payable {
    return count
}

function _fallback() payable {
    revert
}

function sub_73ece186(?) payable {
    count--
}

function sub_d0a4d1f0(?) payable {
    count++
}



}
