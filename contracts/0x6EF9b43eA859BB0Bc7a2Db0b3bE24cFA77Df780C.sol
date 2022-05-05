contract main {




// =====================  Runtime code  =====================


#
#  - buyItem(string arg1)
#  - sub_84328e20(?)
#
address owner;
uint256 stor1;
mapping of struct sub_6bd3a64b;
array of struct sub_4c339818;
mapping of address sub_8863792b;
mapping of struct offers;
mapping of struct sub_3e3096b1;
uint256 platformFee;
uint32 stor8;
address sub_3740ebb3Address;
address auctionAddress;

function platformFee() {
    return platformFee
}

function sub_3740ebb3(?) {
    return address(sub_3740ebb3Address)
}

function sub_3e3096b1(?) {
    require calldata.size - 4 >= 64
    return sub_3e3096b1[arg1][arg2].field_0, sub_3e3096b1[arg1][arg2].field_256, sub_3e3096b1[arg1][arg2].field_512
}

function sub_4c339818(?) {
    require calldata.size - 4 >= 64
    return sub_4c339818[arg1][arg2].field_768, sub_4c339818[arg1][arg2].field_1024, sub_4c339818[arg1][arg2].field_1280
}

function sub_6bd3a64b(?) {
    require calldata.size - 4 >= 96
    return sub_6bd3a64b[arg1][arg2][arg3].field_0, 
           sub_6bd3a64b[arg1][arg2][arg3].field_256,
           sub_6bd3a64b[arg1][arg2][arg3].field_512,
           sub_6bd3a64b[arg1][arg2][arg3].field_768
}

function auction() {
    return auctionAddress
}

function sub_8863792b(?) {
    require calldata.size - 4 >= 32
    return sub_8863792b[arg1]
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

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAuction(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    auctionAddress = arg1
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_3740ebb3Address) = arg1
    emit 0xe57e7c1f: arg1
}

function cancelOffer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    offers[address(arg1)][arg2][address(msg.sender)].field_0 = 0
    offers[address(arg1)][arg2][address(msg.sender)].field_256 = 0
    offers[address(arg1)][arg2][address(msg.sender)].field_512 = 0
    offers[address(arg1)][arg2][address(msg.sender)].field_768 = 0
    emit OfferCanceled(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_201d121e(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sub_4c339818[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768 <= 0:
        revert with 0, 'Not listed bundle.'
    sub_4c339818[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768 = arg2
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    emit 0x16d8aece: arg2, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    stor1 = 1
}

function sub_2d63ce27(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    sub_3e3096b1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_0 = 0
    sub_3e3096b1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_256 = 0
    sub_3e3096b1[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512 = 0
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    emit OfferCanceled(msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
}

function updateListing(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 <= 0:
        revert with 0, 'Not listed item.'
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
            revert with 0, 'Not owning the item.'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0:
            revert with 0, 'Not owning the item.'
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = arg3
    emit ItemUpdated(arg2, arg3, msg.sender, arg1);
    stor1 = 1
}

function cancelListing(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 <= 0:
        revert with 0, 'Not listed item.'
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
            revert with 0, 'Not owning the item.'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0:
            revert with 0, 'Not owning the item.'
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
    emit ItemCanceled(arg2, msg.sender, arg1);
    stor1 = 1
}

function validateCancelListing(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if auctionAddress != msg.sender:
        revert with 0, 'Sender must be auction'
    if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 > 0:
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
                revert with 0, 'Not owning the item.'
        else:
            staticcall arg1.supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid NFT address.'
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
                revert with 0, 'Not owning the item.'
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 = 0
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256 = 0
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 = 0
        sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_768 = 0
        emit ItemCanceled(arg2, arg3, arg1);
}

function listItem(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) {
    require calldata.size - 4 >= 192
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
            revert with 0, 'Must be owner of NFT.'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'Must hold enough NFTs.'
    require ext_code.size(arg1)
    staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must be approved before list.'
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
    emit ItemListed(arg2, arg3, arg4, arg5, not arg6, arg6, msg.sender, arg1);
}

function sub_943f2261(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sub_4c339818[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768 <= 0:
        revert with 0, 'Not listed bundle.'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 = 0
    idx = 0
    while sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0 > idx:
        sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 = 0
    idx = 0
    while sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256 > idx:
        sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512 = 0
    idx = 0
    while sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512 > idx:
        sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_768 = 0
    sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_1024 = 0
    sub_4c339818[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_1280 = 0
    sub_8863792b[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32]] = 0
    emit ItemCanceled(Array(len=arg1.length, data=arg1[all]), msg.sender);
    stor1 = 1
}

function sub_259ca365(?) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 <= 0:
        revert with 0, 'Not listed item.'
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
            revert with 0, 'Not owning the item.'
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
            revert with 0, 'Not owning the item.'
    if block.timestamp < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512:
        revert with 0, 'Item is not buyable yet.'
    if not sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256:
        if msg.value < 0:
            revert with 0, 'Not enough amount to buy item.'
    else:
        require sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256
        if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256 != sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if msg.value < sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256 * sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0:
            revert with 0, 'Not enough amount to buy item.'
    if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_768:
        if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_768 != msg.sender:
            revert with 0, 32, 33, 0x65596f7520617265206e6f7420656c696761626c6520746f20627579206974656d, mem[453 len 31]
    if not msg.value:
        call address(sub_3740ebb3Address) with:
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 38, 0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65, mem[458 len 26]
            if 0 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg3 with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 40, 0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65, mem[460 len 24]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 461 len 24]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            38,
                            0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 459 len 26]
            if 0 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg3 with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 461 len 24]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                mem[(2 * ceil32(return_data.size)) + 462 len 24]
    else:
        require msg.value
        if msg.value * platformFee / msg.value != platformFee:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        call address(sub_3740ebb3Address) with:
           value msg.value * platformFee / 1000 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 38, 0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65, mem[458 len 26]
            if msg.value * platformFee / 1000 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg3 with:
               value msg.value - (msg.value * platformFee / 1000) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 40, 0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65, mem[460 len 24]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 461 len 24]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            38,
                            0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 459 len 26]
            if msg.value * platformFee / 1000 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg3 with:
               value msg.value - (msg.value * platformFee / 1000) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 461 len 24]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                mem[(2 * ceil32(return_data.size)) + 462 len 24]
    ('bool', 'ext_call.success')
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
    if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0
    emit ItemSold(arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, msg.value / sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, arg3, msg.sender, arg1);
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_256 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_512 = 0
    sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_768 = 0
    stor1 = 1
}

function sub_2e792905(?) {
    require calldata.size - 4 >= 224
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[ceil32(('cd', 4).length) + 160 len floor32(('cd', 4).length)] = call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    mem[ceil32(('cd', 4).length) + floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 192 len ('cd', 4).length % 32] = mem[floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 160 len ('cd', 4).length % 32]
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 4).length
    _128 = sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Arrays must have same length.'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'Arrays must have same length.'
    if not sub_8863792b[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]]:
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 36).length
            if ext_call.return_data[0]:
                require idx < ('cd', 68).length
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[68] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != msg.sender:
                    revert with 0, 'Must be owner of NFT.'
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                        gas gas_remaining wei
                       args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Invalid NFT address.'
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 68).length
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, cd[((32 * idx) + cd[68] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[((32 * idx) + cd[100] + 36)]:
                    revert with 0, 'Must hold enough NFTs.'
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 164] = msg.sender
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 196] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Must be approved before list.'
            require idx < ('cd', 36).length
            sub_4c339818[address(msg.sender)][_128].field_0++
            sub_4c339818[address(msg.sender)][_128][sub_4c339818[address(msg.sender)][_128].field_0].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            sub_4c339818[address(msg.sender)][_128].field_256++
            stor[('array', 1, ('map', ('var', '_128'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4c339818', 3)))) + sub_4c339818[address(msg.sender)][_128].field_256].field_0 = cd[((32 * idx) + cd[68] + 36)]
            require idx < ('cd', 100).length
            sub_4c339818[address(msg.sender)][_128].field_512++
            mem[0] = sha3(_128, sha3(address(msg.sender), 3)) + 2
            stor[('array', 2, ('map', ('var', '_128'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4c339818', 3)))) + sub_4c339818[address(msg.sender)][_128].field_512].field_0 = cd[((32 * idx) + cd[100] + 36)]
            idx = idx + 1
            continue 
        sub_4c339818[address(msg.sender)][_128].field_768 = cd[132]
        sub_4c339818[address(msg.sender)][_128].field_1024 = cd[164]
        sub_4c339818[address(msg.sender)][_128].field_1280 = address(cd[196])
        mem[('cd', 4).length + ceil32(('cd', 4).length) + 160 len floor32(('cd', 4).length)] = call.data[cd[4] + 36 len floor32(('cd', 4).length)]
        mem[(2 * floor32(('cd', 4).length)) + ceil32(('cd', 4).length) + 192 len ('cd', 4).length % 32] = mem[floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 160 len ('cd', 4).length % 32]
        _345 = sha3(call.data[cd[4] + 36 len floor32(('cd', 4).length)], mem[('cd', 4).length + ceil32(('cd', 4).length) + floor32(('cd', 4).length) + 160 len ('cd', 4).length % 32])
        mem[('cd', 4).length + ceil32(('cd', 4).length) + 416 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[('cd', 4).length + ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 416] = 0
        mem[('cd', 4).length + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + 416] = ('cd', 68).length
        emit 0x1c9cb75f: Array(len=('cd', 36).length, data=mem[('cd', 4).length + ceil32(('cd', 4).length) + 416 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)], ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)]), floor32(('cd', 36).length) + 256, floor32(('cd', 36).length) + floor32(('cd', 68).length) + 288, cd[132], cd[164], not address(cd[196]), address(cd[196]), msg.sender, _345
    else:
        if sub_8863792b[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]] != msg.sender:
            revert with 0, 'Bundle is already listed.'
        if sub_4c339818[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_768:
            revert with 0, 'Bundle is already listed.'
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 36).length
            if ext_call.return_data[0]:
                require idx < ('cd', 68).length
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[68] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != msg.sender:
                    revert with 0, 'Must be owner of NFT.'
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                        gas gas_remaining wei
                       args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Invalid NFT address.'
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 68).length
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, cd[((32 * idx) + cd[68] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[((32 * idx) + cd[100] + 36)]:
                    revert with 0, 'Must hold enough NFTs.'
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 164] = msg.sender
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 196] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Must be approved before list.'
            require idx < ('cd', 36).length
            sub_4c339818[address(msg.sender)][_128].field_0++
            sub_4c339818[address(msg.sender)][_128][sub_4c339818[address(msg.sender)][_128].field_0].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            sub_4c339818[address(msg.sender)][_128].field_256++
            stor[('array', 1, ('map', ('var', '_128'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4c339818', 3)))) + sub_4c339818[address(msg.sender)][_128].field_256].field_0 = cd[((32 * idx) + cd[68] + 36)]
            require idx < ('cd', 100).length
            sub_4c339818[address(msg.sender)][_128].field_512++
            mem[0] = sha3(_128, sha3(address(msg.sender), 3)) + 2
            stor[('array', 2, ('map', ('var', '_128'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4c339818', 3)))) + sub_4c339818[address(msg.sender)][_128].field_512].field_0 = cd[((32 * idx) + cd[100] + 36)]
            idx = idx + 1
            continue 
        sub_4c339818[address(msg.sender)][_128].field_768 = cd[132]
        sub_4c339818[address(msg.sender)][_128].field_1024 = cd[164]
        sub_4c339818[address(msg.sender)][_128].field_1280 = address(cd[196])
        mem[('cd', 4).length + ceil32(('cd', 4).length) + 160 len floor32(('cd', 4).length)] = call.data[cd[4] + 36 len floor32(('cd', 4).length)]
        mem[(2 * floor32(('cd', 4).length)) + ceil32(('cd', 4).length) + 192 len ('cd', 4).length % 32] = mem[floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 160 len ('cd', 4).length % 32]
        _350 = sha3(call.data[cd[4] + 36 len floor32(('cd', 4).length)], mem[('cd', 4).length + ceil32(('cd', 4).length) + floor32(('cd', 4).length) + 160 len ('cd', 4).length % 32])
        mem[('cd', 4).length + ceil32(('cd', 4).length) + 416 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[('cd', 4).length + ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 416] = 0
        mem[('cd', 4).length + ceil32(('cd', 4).length) + floor32(('cd', 36).length) + 416] = ('cd', 68).length
        emit 0x1c9cb75f: Array(len=('cd', 36).length, data=mem[('cd', 4).length + ceil32(('cd', 4).length) + 416 len floor32(('cd', 36).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)], ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)]), floor32(('cd', 36).length) + 256, floor32(('cd', 36).length) + floor32(('cd', 68).length) + 288, cd[132], cd[164], not address(cd[196]), address(cd[196]), msg.sender, _350
}

function sub_e831eebf(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    _610 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if not sub_8863792b[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]:
        revert with 0, 'Invalid Bundle ID.'
    if arg4 <= block.timestamp:
        revert with 0, 'Invalid expiration'
    mem[arg1.length + ceil32(arg1.length) + 160] = 68
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[arg1.length + ceil32(arg1.length) + 430 len 26]
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[arg1.length + ceil32(arg1.length) + 324 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
    mem[arg1.length + ceil32(arg1.length) + 388 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0) << 256, mem[arg1.length + ceil32(arg1.length) + 388 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length > 0:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length > 0:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[arg1.length + ceil32(arg1.length) + 434 len 22]
        require ext_code.size(arg2)
        staticcall arg2.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[arg1.length + ceil32(arg1.length) + 446 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[arg1.length + ceil32(arg1.length) + 594 len 26]
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[arg1.length + ceil32(arg1.length) + 488 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg2 with:
             gas gas_remaining wei
            args -1, mem[arg1.length + ceil32(arg1.length) + 424 len 28], mem[arg1.length + ceil32(arg1.length) + 552 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg1.length > 0:
                    revert with arg1[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length > 0:
                require arg1.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[arg1.length + ceil32(arg1.length) + 598 len 22]
            idx = 0
            while idx < sub_4c339818[stor4[_610]][_610].field_0:
                require idx < sub_4c339818[stor4[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(sub_8863792b[_610], 3)) + 1
                mem[arg1.length + ceil32(arg1.length) + 488] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + 492] = sub_4c339818[stor4[_610]][_610][idx].field_0
                mem[arg1.length + ceil32(arg1.length) + 524] = sub_4c339818[stor4[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args sub_4c339818[stor4[_610]][_610][idx].field_0, sub_4c339818[stor4[_610]][_610][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            sub_3e3096b1[_610][address(msg.sender)].field_0 = arg2
            sub_3e3096b1[_610][address(msg.sender)].field_256 = arg3
            sub_3e3096b1[_610][address(msg.sender)].field_512 = arg4
            mem[arg1.length + ceil32(arg1.length) + 584 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 616 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address(arg2), arg3, arg4, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 584 len arg1.length % 32]));
        else:
            mem[arg1.length + ceil32(arg1.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[arg1.length + ceil32(arg1.length) + 520]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 599 len 22]
            idx = 0
            while idx < sub_4c339818[stor4[_610]][_610].field_0:
                require idx < sub_4c339818[stor4[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(sub_8863792b[_610], 3)) + 1
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = sub_4c339818[stor4[_610]][_610][idx].field_0
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = sub_4c339818[stor4[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args sub_4c339818[stor4[_610]][_610][idx].field_0, sub_4c339818[stor4[_610]][_610][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            sub_3e3096b1[_610][address(msg.sender)].field_0 = arg2
            sub_3e3096b1[_610][address(msg.sender)].field_256 = arg3
            sub_3e3096b1[_610][address(msg.sender)].field_512 = arg4
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 585 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 617 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address(arg2), arg3, arg4, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 585 len arg1.length % 32]));
    else:
        mem[arg1.length + ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[arg1.length + ceil32(arg1.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 435 len 22]
        require ext_code.size(arg2)
        staticcall arg2.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 447 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 595 len 26]
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 581 len 4] = 0
        call arg2 with:
             gas gas_remaining wei
            args -1, mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 425 len 28], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 553 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg1.length > 0:
                    revert with arg1[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length > 0:
                require arg1.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 599 len 22]
            idx = 0
            while idx < sub_4c339818[stor4[_610]][_610].field_0:
                require idx < sub_4c339818[stor4[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(sub_8863792b[_610], 3)) + 1
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = sub_4c339818[stor4[_610]][_610][idx].field_0
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = sub_4c339818[stor4[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args sub_4c339818[stor4[_610]][_610][idx].field_0, sub_4c339818[stor4[_610]][_610][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            sub_3e3096b1[_610][address(msg.sender)].field_0 = arg2
            sub_3e3096b1[_610][address(msg.sender)].field_256 = arg3
            sub_3e3096b1[_610][address(msg.sender)].field_512 = arg4
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 585 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 617 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address(arg2), arg3, arg4, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 585 len arg1.length % 32]));
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 521]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            idx = 0
            while idx < sub_4c339818[stor4[_610]][_610].field_0:
                require idx < sub_4c339818[stor4[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(sub_8863792b[_610], 3)) + 1
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 490] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 494] = sub_4c339818[stor4[_610]][_610][idx].field_0
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 526] = sub_4c339818[stor4[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args sub_4c339818[stor4[_610]][_610][idx].field_0, sub_4c339818[stor4[_610]][_610][idx + 1].field_0, mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            sub_3e3096b1[_610][address(msg.sender)].field_0 = arg2
            sub_3e3096b1[_610][address(msg.sender)].field_256 = arg3
            sub_3e3096b1[_610][address(msg.sender)].field_512 = arg4
            mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 586 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 618 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address arg1, string arg2, address arg3, uint256 arg4, uint256 arg5):
                              address(arg2),
                              arg3,
                              arg4,
                              mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                              msg.sender,
                              sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + floor32(arg1.length) + 586 len arg1.length % 32]),
}

function sub_42cbb4b8(?) {
    require calldata.size - 4 >= 192
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg6 <= block.timestamp:
            revert with 0, 'Invalid expiration'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg3) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
        call arg3 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(arg3)
            staticcall arg3.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[382 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(arg3) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[488 len 0] = 0
            call arg3 with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(auctionAddress)
            call auctionAddress.0x4ffccb85 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
            offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
            offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
            offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
            emit OfferCreated(arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg1);
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(arg3)
            staticcall arg3.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(arg3) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call arg3 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
                offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
                offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
                offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
                emit OfferCreated(arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg1);
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(arg1), arg2, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
                offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
                offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
                offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
                emit OfferCreated(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7):
                                  arg2,
                                  address(arg3),
                                  arg4,
                                  arg5,
                                  arg6,
                                  mem[(2 * ceil32(return_data.size)) + 714 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                  msg.sender,
                                  arg1,
    else:
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        if arg6 <= block.timestamp:
            revert with 0, 'Invalid expiration'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg3) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
        call arg3 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(arg3)
            staticcall arg3.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[382 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(arg3) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call arg3 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(auctionAddress)
            call auctionAddress.0x4ffccb85 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
            offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
            offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
            offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
            emit OfferCreated(arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg1);
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                require ext_code.size(arg3)
                staticcall arg3.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(arg3) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call arg3 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(auctionAddress)
                    call auctionAddress.0x4ffccb85 with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
                    offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
                    offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
                    offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
                    emit OfferCreated(arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg1);
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(auctionAddress)
                    call auctionAddress.0x4ffccb85 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
                    offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
                    offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
                    offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
                    emit OfferCreated(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7):
                                      arg2,
                                      address(arg3),
                                      arg4,
                                      arg5,
                                      arg6,
                                      mem[(2 * ceil32(return_data.size)) + 714 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
                                      arg1,
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(arg3)
                staticcall arg3.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(arg3) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call arg3 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                offers[address(arg1)][arg2][address(msg.sender)].field_0 = arg3
                offers[address(arg1)][arg2][address(msg.sender)].field_256 = arg4
                offers[address(arg1)][arg2][address(msg.sender)].field_512 = arg5
                offers[address(arg1)][arg2][address(msg.sender)].field_768 = arg6
                emit OfferCreated(arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg1);
}

function acceptOffer(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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
            revert with 0, 'Not owning the item.'
        if offers[address(arg1)][arg2][address(arg3)].field_512 <= 0:
            revert with 0, 'Offer doesn't exist.'
        if offers[address(arg1)][arg2][address(arg3)].field_256 <= 0:
            revert with 0, 'Offer doesn't exist.'
        if not offers[address(arg1)][arg2][address(arg3)].field_512:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
            if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
            mem[672 len 4] = 0
            call offers[address(arg1)][arg2][address(arg3)].field_0 with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args 0, mem[644 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[744 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, 0
                mem[868 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[840 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[776]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 855 len 22]
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
                        args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                else:
                    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                emit OfferCanceled(arg2, arg3, arg1);
            else:
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 851 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, 0
                mem[ceil32(return_data.size) + 869 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 841 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
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
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                    emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                    emit OfferCanceled(arg2, arg3, arg1);
                else:
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(arg1)
                    staticcall arg1.supportsInterface(bytes4 arg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                        emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                      arg2,
                                      offers[address(arg1)][arg2][address(arg3)].field_256,
                                      offers[address(arg1)][arg2][address(arg3)].field_512,
                                      mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
                                      arg3,
                                      arg1,
                        emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                           arg2,
                                           mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                           arg3,
                                           arg1,
                    else:
                        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                        emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                      arg2,
                                      offers[address(arg1)][arg2][address(arg3)].field_256,
                                      offers[address(arg1)][arg2][address(arg3)].field_512,
                                      mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
                                      arg3,
                                      arg1,
                        emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                           arg2,
                                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                           arg3,
                                           arg1,
        else:
            require offers[address(arg1)][arg2][address(arg3)].field_512
            if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 / offers[address(arg1)][arg2][address(arg3)].field_512 != offers[address(arg1)][arg2][address(arg3)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
                mem[672 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args 0, mem[644 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if 0 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[744 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) >> 32
                    mem[868 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) << 480, mem[840 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[776]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 855 len 22]
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
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                    emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                    emit OfferCanceled(arg2, arg3, arg1);
                else:
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if 0 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) >> 32
                        mem[ceil32(return_data.size) + 869 len 4] = 0
                        call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) << 480, mem[ceil32(return_data.size) + 841 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
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
                                    args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                            else:
                                call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg3), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                            emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                            emit OfferCanceled(arg2, arg3, arg1);
                        else:
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(arg1)
                            staticcall arg1.supportsInterface(bytes4 arg1) with:
                                    gas gas_remaining wei
                                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not ext_call.return_data[0]:
                                call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                                emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                              arg2,
                                              offers[address(arg1)][arg2][address(arg3)].field_256,
                                              offers[address(arg1)][arg2][address(arg3)].field_512,
                                              mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg3,
                                              arg1,
                                emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                                   arg2,
                                                   mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                   arg3,
                                                   arg1,
                            else:
                                call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg3), arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                                emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                              arg2,
                                              offers[address(arg1)][arg2][address(arg3)].field_256,
                                              offers[address(arg1)][arg2][address(arg3)].field_512,
                                              mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg3,
                                              arg1,
                                emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                                   arg2,
                                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                   arg3,
                                                   arg1,
                    else:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                        if 0 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) >> 32
                        mem[ceil32(return_data.size) + 869 len 4] = 0
                        mem[ceil32(return_data.size) + 841 len 0] = 0
                        call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) << 480, mem[ceil32(return_data.size) + 841 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
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
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                        emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                        emit OfferCanceled(arg2, arg3, arg1);
            else:
                require offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256
                if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 != platformFee:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, address(sub_3740ebb3Address), Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000) >> 32
                mem[672 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000) << 480, mem[644 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[744 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                    mem[868 len 4] = 0
                    mem[840 len 0] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) << 480, mem[840 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[776]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 855 len 22]
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
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                    emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                    emit OfferCanceled(arg2, arg3, arg1);
                else:
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) << 480, mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
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
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                        emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                        emit OfferCanceled(arg2, arg3, arg1);
                    else:
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(arg1)
                        staticcall arg1.supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                            emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
                        else:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                            emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
    else:
        staticcall arg1.supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < offers[address(arg1)][arg2][address(arg3)].field_256:
            revert with 0, 'Not owning the item.'
        if offers[address(arg1)][arg2][address(arg3)].field_512 <= 0:
            revert with 0, 'Offer doesn't exist.'
        if offers[address(arg1)][arg2][address(arg3)].field_256 <= 0:
            revert with 0, 'Offer doesn't exist.'
        if not offers[address(arg1)][arg2][address(arg3)].field_512:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
            if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
            mem[672 len 4] = 0
            call offers[address(arg1)][arg2][address(arg3)].field_0 with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args 0, mem[644 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[744 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, 0
                mem[868 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[840 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[776]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 855 len 22]
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
                        args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                else:
                    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                emit OfferCanceled(arg2, arg3, arg1);
            else:
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, 0
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
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
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                        emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                        emit OfferCanceled(arg2, arg3, arg1);
                    else:
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(arg1)
                        staticcall arg1.supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                            emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
                        else:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                            emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
                else:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, 0
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    mem[ceil32(return_data.size) + 841 len 0] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(736, -512, transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, 0) << 512, mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
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
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                    emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                    emit OfferCanceled(arg2, arg3, arg1);
        else:
            require offers[address(arg1)][arg2][address(arg3)].field_512
            if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 / offers[address(arg1)][arg2][address(arg3)].field_512 != offers[address(arg1)][arg2][address(arg3)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
                mem[672 len 4] = 0
                mem[644 len 0] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(736, -512, transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0) << 512, mem[644 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if 0 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[744 len 96] = 0, address(arg3), msg.sender, Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) >> 32
                    mem[868 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256, mem[680 len 60], mem[840 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[776]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 855 len 22]
                else:
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if 0 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 851 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 96] = 0, address(arg3), msg.sender, Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) >> 32
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256, mem[ceil32(return_data.size) + 681 len 60], mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len 22]
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
                        args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                else:
                    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                emit OfferCanceled(arg2, arg3, arg1);
            else:
                require offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256
                if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 != platformFee:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, address(sub_3740ebb3Address), Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000) >> 32
                mem[672 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000) << 480, mem[644 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                    if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[744 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                    mem[868 len 4] = 0
                    mem[840 len 0] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) << 480, mem[840 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[776]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 855 len 22]
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
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                    sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                    offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                    emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                    emit OfferCanceled(arg2, arg3, arg1);
                else:
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                        mem[ceil32(return_data.size) + 869 len 4] = 0
                        call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) << 480, mem[ceil32(return_data.size) + 841 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
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
                                    args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                            else:
                                call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg3), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                            sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                            offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                            emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                            emit OfferCanceled(arg2, arg3, arg1);
                        else:
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(arg1)
                            staticcall arg1.supportsInterface(bytes4 arg1) with:
                                    gas gas_remaining wei
                                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not ext_call.return_data[0]:
                                call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                                emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                              arg2,
                                              offers[address(arg1)][arg2][address(arg3)].field_256,
                                              offers[address(arg1)][arg2][address(arg3)].field_512,
                                              mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg3,
                                              arg1,
                                emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                                   arg2,
                                                   mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                   arg3,
                                                   arg1,
                            else:
                                call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg3), arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                                sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                                offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                                emit ItemSold(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                                              arg2,
                                              offers[address(arg1)][arg2][address(arg3)].field_256,
                                              offers[address(arg1)][arg2][address(arg3)].field_512,
                                              mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg3,
                                              arg1,
                                emit OfferCanceled(address arg1, address arg2, uint256 arg3):
                                                   arg2,
                                                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                   arg3,
                                                   arg1,
                    else:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                        if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000 > offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 851 len 26]
                        if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                        mem[ceil32(return_data.size) + 869 len 4] = 0
                        mem[ceil32(return_data.size) + 841 len 0] = 0
                        call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) << 480, mem[ceil32(return_data.size) + 841 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
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
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_256 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_512 = 0
                        sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_768 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_0 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_256 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_512 = 0
                        offers[address(arg1)][arg2][address(arg3)].field_768 = 0
                        emit ItemSold(arg2, offers[address(arg1)][arg2][address(arg3)].field_256, offers[address(arg1)][arg2][address(arg3)].field_512, msg.sender, arg3, arg1);
                        emit OfferCanceled(arg2, arg3, arg1);
    stor1 = 1
}



}
