contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct sub_6bd3a64b;
mapping of struct offers;
uint256 platformFee;
uint32 stor5;
address sub_3740ebb3Address;
address auctionAddress;

function platformFee() {
    return platformFee
}

function sub_3740ebb3(?) {
    return address(sub_3740ebb3Address)
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

function updateListing(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_6bd3a64b[address(arg1)][arg2][address(msg.sender)].field_0 <= 0:
        revert with 0, 'Not listed item.'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not owning the item.'
    else:
        staticcall arg1.supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
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
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not owning the item.'
    else:
        staticcall arg1.supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
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
        staticcall arg1.supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if ext_call.return_data[0]:
            staticcall arg1.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg3:
                revert with 0, 'Not owning the item.'
        else:
            staticcall arg1.supportsInterface(bytes4 rg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid NFT address.'
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
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
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Must be owner of NFT.'
    else:
        staticcall arg1.supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'Must hold enough NFTs.'
    require ext_code.size(arg1)
    staticcall arg1.isApprovedForAll(address rg1, address rg2) with:
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

function sub_259ca365(?) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0 <= 0:
        revert with 0, 'Not listed item.'
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg3:
            revert with 0, 'Not owning the item.'
    else:
        staticcall arg1.supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
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
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if not ext_call.return_data[0]:
        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(arg3), msg.sender, arg2, sub_6bd3a64b[address(arg1)][arg2][address(arg3)].field_0, 160, 0
    else:
        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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

function sub_42cbb4b8(?) {
    require calldata.size - 4 >= 192
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
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
        mem[260 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
        call arg3 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
            if not approve(address rg1, uint256 rg2), address(this.address) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(arg3)
            staticcall arg3.0xdd62ed3e with:
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
            mem[424 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[488 len 0] = 0
            call arg3 with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
                if not approve(address rg1, uint256 rg2), address(this.address) << 64:
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
            staticcall arg3.0xdd62ed3e with:
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
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call arg3 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
                if not approve(address rg1, uint256 rg2), address(this.address) << 64:
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
                emit OfferCreated(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7):
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
        staticcall arg1.supportsInterface(bytes4 rg1) with:
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
        mem[260 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
        call arg3 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
            if not approve(address rg1, uint256 rg2), address(this.address) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(arg3)
            staticcall arg3.0xdd62ed3e with:
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
            mem[424 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call arg3 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
                if not approve(address rg1, uint256 rg2), address(this.address) << 64:
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
            staticcall arg3.0xdd62ed3e with:
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
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call arg3 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(this.address) << 64, 0, 0
                if not approve(address rg1, uint256 rg2), address(this.address) << 64:
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
                emit OfferCreated(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7):
                                  arg2,
                                  address(arg3),
                                  arg4,
                                  arg5,
                                  arg6,
                                  mem[(2 * ceil32(return_data.size)) + 714 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                  msg.sender,
                                  arg1,
}

function acceptOffer(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        staticcall arg1.ownerOf(uint256 rg1) with:
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
            mem[548 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
            mem[672 len 4] = 0
            call offers[address(arg1)][arg2][address(arg3)].field_0 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[644 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[744 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, 0
                mem[868 len 4] = 0
                mem[840 len 0] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(736, -512, unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, 0) << 512, mem[840 len 4]
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
                staticcall arg1.supportsInterface(bytes4 rg1) with:
                        gas gas_remaining wei
                       args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if not ext_call.return_data[0]:
                    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                else:
                    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                mem[ceil32(return_data.size) + 745 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, 0
                mem[ceil32(return_data.size) + 869 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 841 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    require ext_code.size(arg1)
                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      arg2,
                                      offers[address(arg1)][arg2][address(arg3)].field_256,
                                      offers[address(arg1)][arg2][address(arg3)].field_512,
                                      mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
                                      arg3,
                                      arg1,
                        emit OfferCanceled(address rg1, address rg2, uint256 rg3):
                                           arg2,
                                           mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                           arg3,
                                           arg1,
                    else:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                        emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      arg2,
                                      offers[address(arg1)][arg2][address(arg3)].field_256,
                                      offers[address(arg1)][arg2][address(arg3)].field_512,
                                      mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
                                      arg3,
                                      arg1,
                        emit OfferCanceled(address rg1, address rg2, uint256 rg3):
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
                mem[548 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
                mem[672 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor5)
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
                    mem[744 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) >> 32
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
                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                    mem[ceil32(return_data.size) + 745 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) >> 32
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) << 480, mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        require ext_code.size(arg1)
                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address rg1, address rg2, uint256 rg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
                        else:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                            emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address rg1, address rg2, uint256 rg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
            else:
                require offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256
                if offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 != platformFee:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000) >> 32
                mem[672 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor5)
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
                    mem[744 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                    mem[868 len 4] = 0
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
                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                        mem[ceil32(return_data.size) + 745 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                        mem[ceil32(return_data.size) + 869 len 4] = 0
                        call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) << 480, mem[ceil32(return_data.size) + 841 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            require ext_code.size(arg1)
                            staticcall arg1.supportsInterface(bytes4 rg1) with:
                                    gas gas_remaining wei
                                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not ext_call.return_data[0]:
                                call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                            else:
                                call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                            staticcall arg1.supportsInterface(bytes4 rg1) with:
                                    gas gas_remaining wei
                                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            if not ext_call.return_data[0]:
                                call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                                emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              arg2,
                                              offers[address(arg1)][arg2][address(arg3)].field_256,
                                              offers[address(arg1)][arg2][address(arg3)].field_512,
                                              mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg3,
                                              arg1,
                                emit OfferCanceled(address rg1, address rg2, uint256 rg3):
                                                   arg2,
                                                   mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                   arg3,
                                                   arg1,
                            else:
                                call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                                emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              arg2,
                                              offers[address(arg1)][arg2][address(arg3)].field_256,
                                              offers[address(arg1)][arg2][address(arg3)].field_512,
                                              mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg3,
                                              arg1,
                                emit OfferCanceled(address rg1, address rg2, uint256 rg3):
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
                        mem[ceil32(return_data.size) + 745 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
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
                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
        staticcall arg1.supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid NFT address.'
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
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
            mem[548 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
            mem[672 len 4] = 0
            mem[644 len 0] = 0
            call offers[address(arg1)][arg2][address(arg3)].field_0 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(736, -512, unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0) << 512, mem[644 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[850 len 26]
                if ext_code.size(offers[address(arg1)][arg2][address(arg3)].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[744 len 96] = 0, address(arg3), msg.sender, 0
                mem[868 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[680 len 60], mem[840 len 4]
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
                staticcall arg1.supportsInterface(bytes4 rg1) with:
                        gas gas_remaining wei
                       args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if not ext_call.return_data[0]:
                    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                else:
                    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                    mem[ceil32(return_data.size) + 745 len 96] = 0, address(arg3), msg.sender, 0
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 681 len 60], mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        require ext_code.size(arg1)
                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                    else:
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(arg1)
                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                        else:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                            emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
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
                    mem[ceil32(return_data.size) + 745 len 96] = 0, address(arg3), msg.sender, 0
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 681 len 60], mem[ceil32(return_data.size) + 841 len 4]
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
                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                mem[548 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0
                mem[672 len 4] = 0
                mem[644 len 0] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(736, -512, unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), 0) << 512, mem[644 len 4]
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
                staticcall arg1.supportsInterface(bytes4 rg1) with:
                        gas gas_remaining wei
                       args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if not ext_call.return_data[0]:
                    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                else:
                    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                mem[548 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, address(sub_3740ebb3Address), Mask(224, 32, offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000) >> 32
                mem[672 len 4] = 0
                call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                   funct uint32(stor5)
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
                    mem[744 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                    mem[868 len 4] = 0
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
                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                            gas gas_remaining wei
                           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    if not ext_call.return_data[0]:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                    else:
                        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                    mem[ceil32(return_data.size) + 745 len 96] = unknown_0x23b872dd(?????), address(arg3) << 64, 0, msg.sender, Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) >> 32
                    mem[ceil32(return_data.size) + 869 len 4] = 0
                    call offers[address(arg1)][arg2][address(arg3)].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256) - (offers[address(arg1)][arg2][address(arg3)].field_512 * offers[address(arg1)][arg2][address(arg3)].field_256 * platformFee / 1000)) << 480, mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        require ext_code.size(arg1)
                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg3), arg2, offers[address(arg1)][arg2][address(arg3)].field_256, 160, 0
                        else:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        if not ext_call.return_data[0]:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address rg1, address rg2, uint256 rg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
                        else:
                            call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
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
                            emit ItemSold(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                          arg2,
                                          offers[address(arg1)][arg2][address(arg3)].field_256,
                                          offers[address(arg1)][arg2][address(arg3)].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg3,
                                          arg1,
                            emit OfferCanceled(address rg1, address rg2, uint256 rg3):
                                               arg2,
                                               mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               arg3,
                                               arg1,
    stor1 = 1
}



}
