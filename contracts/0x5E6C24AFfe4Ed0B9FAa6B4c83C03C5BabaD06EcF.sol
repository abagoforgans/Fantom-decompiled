contract main {




// =====================  Runtime code  =====================


address owner;
address sub_18944e55Address;
address auctionAddress;
address marketplaceAddress;
address bundleMarketplaceAddress;
address factoryAddress;
address privateFactoryAddress;
address artFactoryAddress;
address privateArtFactoryAddress;
address tokenRegistryAddress;
address priceFeedAddress;

function artFactory() payable {
    return artFactoryAddress
}

function sub_18944e55(?) payable {
    return sub_18944e55Address
}

function privateFactory() payable {
    return privateFactoryAddress
}

function priceFeed() payable {
    return priceFeedAddress
}

function auction() payable {
    return auctionAddress
}

function owner() payable {
    return owner
}

function privateArtFactory() payable {
    return privateArtFactoryAddress
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

function factory() payable {
    return factoryAddress
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

function updateAuction(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    auctionAddress = arg1
}

function updateNFTFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    factoryAddress = arg1
}

function updatePriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    priceFeedAddress = arg1
}

function updateArtFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    artFactoryAddress = arg1
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

function updateNFTFactoryPrivate(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    privateFactoryAddress = arg1
}

function updateBundleMarketplace(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    bundleMarketplaceAddress = arg1
}

function updateArtFactoryPrivate(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    privateArtFactoryAddress = arg1
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

function updateArtion(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not ERC721'
    sub_18944e55Address = arg1
}



}
