contract main {




// =====================  Runtime code  =====================


#
#  - sub_259ca365(?)
#  - acceptOffer(address arg1, uint256 arg2, address arg3)
#  - buyItem(address arg1, uint256 arg2, address arg3, address arg4)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
mapping of address sub_78746d0d;
mapping of uint16 sub_e1e549c4;
mapping of struct sub_6bd3a64b;
mapping of struct offers;
uint16 platformFee;
address sub_3740ebb3Address; offset 16
mapping of struct sub_57b275b4;
address sub_f3ad65f4Address;

function platformFee() {
    return platformFee
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
}

function sub_57b275b4(?) {
    require calldata.size - 4 >= 32
    return sub_57b275b4[arg1].field_0, sub_57b275b4[arg1].field_0, sub_57b275b4[arg1].field_256
}

function sub_6bd3a64b(?) {
    require calldata.size - 4 >= 96
    return sub_6bd3a64b[arg1][arg2][arg3].field_0, 
           sub_6bd3a64b[arg1][arg2][arg3].field_256,
           sub_6bd3a64b[arg1][arg2][arg3].field_512,
           sub_6bd3a64b[arg1][arg2][arg3].field_768
}

function sub_78746d0d(?) {
    require calldata.size - 4 >= 64
    return sub_78746d0d[arg1][arg2]
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

function sub_e1e549c4(?) {
    require calldata.size - 4 >= 64
    return sub_e1e549c4[arg1][arg2]
}

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAddressRegistry(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_f3ad65f4Address = arg1
}

function updatePlatformFee(uint16 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_3740ebb3Address = arg1
    emit 0xe57e7c1f: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
    staticcall sub_f3ad65f4Address.0x741bef1a with:
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
        staticcall address(ext_call.return_data[0]).wFTM() with:
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

function registerCollectionRoyalty(address arg1, address arg2, uint16 arg3, address arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'invalid creator address'
    if arg3 > 10000:
        revert with 0, 'invalid royalty'
    if arg3:
        if not arg4:
            revert with 0, 'invalid fee recipient address'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0x18944e55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0, 'invalid nft address'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exists(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'invalid nft address'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0x735db939 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exists(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'invalid nft address'
    if sub_57b275b4[address(arg1)].field_16:
        revert with 0, 'royalty already set'
    sub_57b275b4[address(arg1)].field_0 = arg3
    sub_57b275b4[address(arg1)].field_16 = arg2
    sub_57b275b4[address(arg1)].field_256 = arg4
}

function cancelListing(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
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
    stor101 = 1
}

function registerRoyalty(address arg1, uint256 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > 10000:
        revert with 0, 'invalid royalty'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0x18944e55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.0xc45a0155 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).exists(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_f3ad65f4Address)
            staticcall sub_f3ad65f4Address.0x735db939 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).exists(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'invalid nft address'
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owning item'
    if sub_78746d0d[address(arg1)][arg2]:
        revert with 0, 'royalty already set'
    sub_78746d0d[address(arg1)][arg2] = msg.sender
    sub_e1e549c4[address(arg1)][arg2] = arg3
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
        staticcall sub_f3ad65f4Address.0x9d23c4c7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.0x9d23c4c7 with:
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
    staticcall sub_f3ad65f4Address.0x9e1f5b28 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7273656e646572206d7573742062652062756e646c65206d61726b6574706c6163,
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
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
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
        staticcall sub_f3ad65f4Address.0x9d23c4c7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.0x9d23c4c7 with:
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
    stor101 = 1
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
        staticcall sub_f3ad65f4Address.0x9d23c4c7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'invalid pay token'
        require ext_code.size(sub_f3ad65f4Address)
        staticcall sub_f3ad65f4Address.0x9d23c4c7 with:
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

function sub_f39e69a4(?) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        platformFee = arg2
        sub_3740ebb3Address = arg1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            platformFee = arg2
            sub_3740ebb3Address = arg1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            platformFee = arg2
            sub_3740ebb3Address = arg1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}



}
