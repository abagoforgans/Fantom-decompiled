contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function proxies(address arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}



}
