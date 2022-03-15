contract main {




// =====================  Runtime code  =====================


mapping of uint256 price;
mapping of uint256 liquidity;
address stor2;

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    return price[address(arg1)]
}

function getLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    return liquidity[address(arg1)]
}

function _fallback() payable {
    revert
}

function setPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == stor2:
        price[address(arg1)] = arg2
}

function setLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == stor2:
        liquidity[address(arg1)] = arg2
}



}
