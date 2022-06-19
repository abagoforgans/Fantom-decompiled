contract main {




// =====================  Runtime code  =====================


mapping of address proxies;

function proxies(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return proxies[arg1]
}

function _fallback() payable {
    revert
}



}
