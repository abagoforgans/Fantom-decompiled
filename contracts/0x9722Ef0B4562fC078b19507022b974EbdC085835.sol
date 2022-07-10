contract main {




// =====================  Runtime code  =====================


address owner;
address bearAddress;
address marketplaceAddress;
address bundleMarketplaceAddress;
address tokenRegistryAddress;
address priceFeedAddress;

function bear() payable {
    return bearAddress
}

function priceFeed() payable {
    return priceFeedAddress
}

function owner() payable {
    return owner
}

function tokenRegistry() payable {
    return tokenRegistryAddress
}

function bundleMarketplace() payable {
    return bundleMarketplaceAddress
}

function marketplace() payable {
    return marketplaceAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updatePriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    priceFeedAddress = arg1
}

function updateMarketplace(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    marketplaceAddress = arg1
}

function updateTokenRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    tokenRegistryAddress = arg1
}

function updateBundleMarketplace(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    bundleMarketplaceAddress = arg1
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
