contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function proxies(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1
}



}
