contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 assetPrice;
uint256 ethUsdPrice;

function owner() payable {
    return owner
}

function getEthUsdPrice() payable {
    return ethUsdPrice
}

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    return assetPrice[address(arg1)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setEthUsdPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    ethUsdPrice = arg1
    emit EthPriceUpdated(arg1, block.timestamp);
}

function setAssetPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    assetPrice[address(arg1)] = arg2
    emit AssetPriceUpdated(address(arg1), arg2, block.timestamp);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}



}
