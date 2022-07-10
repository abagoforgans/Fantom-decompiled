contract main {




// =====================  Runtime code  =====================


#
#  - acceptOffer(address arg1, uint256 arg2, address arg3)
#
address owner;
uint256 stor1;
mapping of struct sub_6bd3a64b;
mapping of struct offers;
address sub_f3ad65f4Address;

function sub_6bd3a64b(?) {
    require calldata.size - 4 >= 96
    return sub_6bd3a64b[arg1][arg2][arg3].field_0, 
           sub_6bd3a64b[arg1][arg2][arg3].field_256,
           sub_6bd3a64b[arg1][arg2][arg3].field_512,
           sub_6bd3a64b[arg1][arg2][arg3].field_768
}

function owner() {
    return owner
}

function offers(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    return offers[arg1][arg2][arg3].field_0, 
           offers[arg1][arg2][arg3].field_256,
           offers[arg1][arg2][arg3].field_512,
           offers[arg1][arg2][arg3].field_768
}

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAddressRegistry(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3ad65f4Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelOffer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not offers[address(arg1)][arg2][address(msg.sender)].field_256:
        revert with 0, 'offer not exists or expired'
    if offers[address(arg1)][arg2][address(msg.sender)].field_768 <= block.timestamp:
        revert with 0, 'offer not exists or expired'
    offers[address(arg1)][arg2][address(msg.sender)].field_0 = 0
    offers[address(arg1)][arg2][address(msg.sender)].field_256 = 0
    offers[address(arg1)][arg2][address(msg.sender)].field_512 = 0
    offers[address(arg1)][arg2][address(msg.sender)].field_768 = 0
    emit OfferCanceled(arg2, msg.sender, arg1);
}

function getPrice(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.priceFeed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1:
        staticcall address(ext_call.return_data[0]).0x41976e09 with:
                gas gas_remaining wei
               args arg1
    else:
        staticcall address(ext_call.return_data[0]).wBNB() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x41976e09 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[63 len 1] < 18:
        return (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[32] + 18))
    require 10^uint8(ext_call.return_data[32] - 18)
    return (ext_call.return_data[0] / 10^uint8(ext_call.return_data[32] - 18))
}

function cancelListing(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0:
        revert with 0, 'not listed item'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'not owning item'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid nft address'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0:
            revert with 0, 'not owning item'
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
    emit ItemCanceled(arg2, msg.sender, arg1);
    stor1 = 1
}

function sub_42cbb4b8(?) {
    require calldata.size - 4 >= 192
    if offers[address(arg1)][arg2][address(msg.sender)].field_256:
        if offers[address(arg1)][arg2][address(msg.sender)].field_768 > block.timestamp:
            revert with 0, 'offer already created'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid nft address'
    if arg6 <= block.timestamp:
        revert with 0, 'invalid expiration'
    if arg3:
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.tokenRegistry() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.tokenRegistry() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).enabled(address arg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid pay token'
    offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
    offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
    offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
    offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
    emit OfferCreated(arg2, arg4, address(arg3), arg5, arg6, msg.sender, arg1);
}

function validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.bundleMarketplace() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7773656e646572206d7573742062652062756e646c65206d61726b6574706c6163,
                    mem[197 len 31]
    if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if ext_call.return_data[0]:
            staticcall arg1.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg3:
                revert with 0, 'not owning item'
        else:
            staticcall arg1.supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'invalid nft address'
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
                revert with 0, 'not owning item'
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 = 0
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256 = 0
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 = 0
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_768 = 0
        emit ItemCanceled(arg2, arg3, arg1);
    offers[address(arg1)][arg2][address(arg4)].field_0 = 0
    offers[address(arg1)][arg2][address(arg4)].field_256 = 0
    offers[address(arg1)][arg2][address(arg4)].field_512 = 0
    offers[address(arg1)][arg2][address(arg4)].field_768 = 0
    emit OfferCanceled(arg2, arg4, arg1);
}

function updateListing(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0:
        revert with 0, 'not listed item'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'not owning item'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid nft address'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0:
            revert with 0, 'not owning item'
    if arg3:
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.tokenRegistry() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.tokenRegistry() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).enabled(address arg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid pay token'
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = arg3
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = arg4
    emit ItemUpdated(arg2, address(arg3), arg4, msg.sender, arg1);
    stor1 = 1
}

function listItem(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0:
        revert with 0, 'already listed'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'not owning item'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid nft address'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'must hold enough nfts'
    require ext_code.size(arg1)
    staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'item not approved'
    if arg4:
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.tokenRegistry() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.tokenRegistry() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).enabled(address arg1) with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid pay token'
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
    emit ItemListed(arg2, arg3, address(arg4), arg5, arg6, msg.sender, arg1);
}

function sub_259ca365(?) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
        revert with 0, 'not listed item'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg3:
            revert with 0, 'not owning item'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid nft address'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
            revert with 0, 'not owning item'
    if block.timestamp < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_768:
        revert with 0, 'item not buyable'
    if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256:
        revert with 0, 'invalid pay token'
    if not sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512:
        if msg.value < 0:
            revert with 0, 'insufficient balance to buy'
    else:
        if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 != sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if msg.value < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512:
            revert with 0, 'insufficient balance to buy'
    if not sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512:
        call arg3 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'owner transfer failed'
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if not ext_call.return_data[0]:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(arg3), msg.sender, arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, 160, 0
        else:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg3), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.bundleMarketplace() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).validateItemSold(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.priceFeed() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).wBNB() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x41976e09 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[63 len 1] < 18:
            if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, 0, ext_call.return_data[0] * 10^uint8(-ext_call.return_data[32] + 18), 0 / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, arg3, msg.sender, arg1);
        else:
            require 10^uint8(ext_call.return_data[32] - 18)
            if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, 0, ext_call.return_data[0] / 10^uint8(ext_call.return_data[32] - 18), 0 / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, arg3, msg.sender, arg1);
    else:
        if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 != sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1221 len 31]
        call arg3 with:
           value sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'owner transfer failed'
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if not ext_call.return_data[0]:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(arg3), msg.sender, arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, 160, 0
        else:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg3), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.bundleMarketplace() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).validateItemSold(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.priceFeed() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).wBNB() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x41976e09 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[63 len 1] < 18:
            if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, 0, ext_call.return_data[0] * 10^uint8(-ext_call.return_data[32] + 18), sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, arg3, msg.sender, arg1);
        else:
            require 10^uint8(ext_call.return_data[32] - 18)
            if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, 0, ext_call.return_data[0] / 10^uint8(ext_call.return_data[32] - 18), sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, arg3, msg.sender, arg1);
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_768 = 0
    stor1 = 1
}

function buyItem(address arg1, uint256 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0:
        revert with 0, 'not listed item'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg4:
            revert with 0, 'not owning item'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid nft address'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg4), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0:
            revert with 0, 'not owning item'
    if block.timestamp < sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_768:
        revert with 0, 'item not buyable'
    if sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_256 != arg3:
        revert with 0, 'invalid pay token'
    if not sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512:
        if not arg3:
            call arg4 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'owner transfer failed'
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1422 len 26]
            if not ext_code.size(arg3):
                revert with 0, 'Address: call to non-contract'
            mem[1316 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg4), 0
            mem[1440 len 4] = 0
            call arg3 with:
                 gas gas_remaining wei
                args 0, mem[1412 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
            else:
                mem[1348 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[1348]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1427 len 22]
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if not ext_call.return_data[0]:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(arg4), msg.sender, arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, 160, 0
        else:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg4), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.bundleMarketplace() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).validateItemSold(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.priceFeed() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if arg3:
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args arg3
        else:
            staticcall address(ext_call.return_data[0]).wBNB() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[63 len 1] < 18:
            if sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, address(arg3), ext_call.return_data[0] * 10^uint8(-ext_call.return_data[32] + 18), 0 / sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, arg4, msg.sender, arg1);
        else:
            require 10^uint8(ext_call.return_data[32] - 18)
            if sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, address(arg3), ext_call.return_data[0] / 10^uint8(ext_call.return_data[32] - 18), 0 / sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, arg4, msg.sender, arg1);
    else:
        if sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512 / sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512 != sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1221 len 31]
        if not arg3:
            call arg4 with:
               value sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'owner transfer failed'
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1422 len 26]
            if not ext_code.size(arg3):
                revert with 0, 'Address: call to non-contract'
            mem[1316 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg4), Mask(224, 32, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512) >> 32
            mem[1440 len 4] = 0
            call arg3 with:
                 gas gas_remaining wei
                args Mask(224, 32, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512) << 480, mem[1412 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
            else:
                mem[1348 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[1348]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1427 len 22]
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if not ext_call.return_data[0]:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(arg4), msg.sender, arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, 160, 0
        else:
            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg4), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.bundleMarketplace() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).validateItemSold(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.priceFeed() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if arg3:
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args arg3
        else:
            staticcall address(ext_call.return_data[0]).wBNB() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[63 len 1] < 18:
            if sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, address(arg3), ext_call.return_data[0] * 10^uint8(-ext_call.return_data[32] + 18), sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512 / sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, arg4, msg.sender, arg1);
        else:
            require 10^uint8(ext_call.return_data[32] - 18)
            if sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0
            emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, address(arg3), ext_call.return_data[0] / 10^uint8(ext_call.return_data[32] - 18), sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 * sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512 / sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0, arg4, msg.sender, arg1);
    sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_0 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_256 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_512 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg4)].field_768 = 0
    stor1 = 1
}



}
