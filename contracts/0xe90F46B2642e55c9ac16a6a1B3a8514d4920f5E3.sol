contract main {




// =====================  Runtime code  =====================


const sub_8b567a45(?) = 1


mapping of uint256 priceUSD;

function getPriceUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return priceUSD[address(arg1)]
}

function prices(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return priceUSD[arg1]
}

function _fallback() payable {
    revert
}

function setPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    priceUSD[address(arg1)] = arg2
}



}
