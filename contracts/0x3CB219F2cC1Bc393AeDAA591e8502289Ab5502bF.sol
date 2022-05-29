contract main {




// =====================  Runtime code  =====================


#
#  - resultAuction(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
mapping of struct auction;
mapping of struct highestBidder;
uint256 minBidIncrement;
uint256 bidWithdrawalLockTime;
uint256 platformFee;
address platformFeeRecipientAddress;
uint8 isPaused; offset 160
uint128 stor157; offset 160
address sub_f3ad65f4Address;

function platformFee() {
    return platformFee
}

function minBidIncrement() {
    return minBidIncrement
}

function auctions(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return auction[arg1][arg2].field_0, 
           auction[arg1][arg2].field_256,
           auction[arg1][arg2].field_512,
           auction[arg1][arg2].field_768,
           auction[arg1][arg2].field_1024,
           bool(auction[arg1][arg2].field_1280)
}

function bidWithdrawalLockTime() {
    return bidWithdrawalLockTime
}

function sub_6b753f36(?) {
    require calldata.size - 4 >= 64
    return highestBidder[arg1][arg2].field_0, highestBidder[arg1][arg2].field_256, highestBidder[arg1][arg2].field_512
}

function getAuction(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return auction[address(arg1)][arg2].field_0, 
           auction[address(arg1)][arg2].field_256,
           auction[address(arg1)][arg2].field_512,
           auction[address(arg1)][arg2].field_768,
           auction[address(arg1)][arg2].field_1024,
           bool(auction[address(arg1)][arg2].field_1280)
}

function owner() {
    return owner
}

function getHighestBidder(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return highestBidder[address(arg1)][arg2].field_0, 
           highestBidder[address(arg1)][arg2].field_256,
           highestBidder[address(arg1)][arg2].field_512
}

function isPaused() {
    return bool(isPaused)
}

function platformFeeRecipient() {
    return platformFeeRecipientAddress
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

function toggleIsPaused() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor157 = Mask(96, 0, not isPaused)
    emit PauseToggled(bool(0 or uint8(not isPaused)));
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updateMinBidIncrement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minBidIncrement = arg1
    emit UpdateMinBidIncrement(arg1);
}

function updateBidWithdrawalLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    bidWithdrawalLockTime = arg1
    emit UpdateBidWithdrawalLockTime(arg1);
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'zero address'
    platformFeeRecipientAddress = arg1
    emit 0xe57e7c1f: arg1
}

function updateAuctionStartTime(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 'sender must be owner'
    if auction[address(arg1)][arg2].field_1024 <= 0:
        revert with 0, 'no auction exists'
    auction[address(arg1)][arg2].field_768 = arg3
    emit UpdateAuctionStartTime(arg3, arg1, arg2);
}

function updateAuctionReservePrice(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 'sender must be item owner'
    if auction[address(arg1)][arg2].field_1024 <= 0:
        revert with 0, 'no auction exists'
    auction[address(arg1)][arg2].field_512 = arg3
    emit UpdateAuctionReservePrice(auction[address(arg1)][arg2].field_256, arg3, arg1, arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateAuctionEndTime(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 'sender must be owner'
    if auction[address(arg1)][arg2].field_1024 <= 0:
        revert with 0, 'no auction exists'
    if auction[address(arg1)][arg2].field_768 >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe656e642074696d65206d7573742062652067726561746572207468616e2073746172,
                    mem[199 len 29]
    if arg3 <= block.timestamp:
        revert with 0, 'invalid end time'
    auction[address(arg1)][arg2].field_1024 = arg3
    emit UpdateAuctionEndTime(arg3, arg1, arg2);
}

function reclaimERC20(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid address'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function withdrawBid(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    if isPaused:
        revert with 0, 'contract paused'
    if highestBidder[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 'you are not the highest bidder'
    if bidWithdrawalLockTime + highestBidder[address(arg1)][arg2].field_512 < highestBidder[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < bidWithdrawalLockTime + highestBidder[address(arg1)][arg2].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6463616e6e6f7420776974686472617720756e74696c206c6f636b2074696d6520686173207061737365,
                    mem[206 len 22]
    if block.timestamp >= auction[address(arg1)][arg2].field_1024:
        revert with 0, 'past auction end'
    highestBidder[address(arg1)][arg2].field_0 = 0
    highestBidder[address(arg1)][arg2].field_256 = 0
    highestBidder[address(arg1)][arg2].field_512 = 0
    if not auction[address(arg1)][arg2].field_256:
        call msg.sender with:
           value highestBidder[address(arg1)][arg2].field_256 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'failed to refund previous bidder'
    else:
        require ext_code.size(auction[address(arg1)][arg2].field_256)
        call auction[address(arg1)][arg2].field_256.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, highestBidder[address(arg1)][arg2].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'failed to refund previous bidder'
    emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, arg1, arg2, msg.sender);
    emit BidWithdrawn(highestBidder[address(arg1)][arg2].field_256, arg1, arg2, msg.sender);
    stor101 = 1
}

function cancelAuction(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'sender must be owner'
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 'sender must be owner'
    if auction[address(arg1)][arg2].field_1024 <= 0:
        revert with 0, 'no auction exists'
    if auction[address(arg1)][arg2].field_1280:
        revert with 0, 'auction already resulted'
    if highestBidder[address(arg1)][arg2].field_0:
        if not auction[address(arg1)][arg2].field_256:
            call highestBidder[address(arg1)][arg2].field_0 with:
               value highestBidder[address(arg1)][arg2].field_256 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'failed to refund previous bidder'
        else:
            require ext_code.size(auction[address(arg1)][arg2].field_256)
            call auction[address(arg1)][arg2].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, highestBidder[address(arg1)][arg2].field_0, highestBidder[address(arg1)][arg2].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'failed to refund previous bidder'
        emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, arg1, arg2, highestBidder[address(arg1)][arg2].field_0);
        highestBidder[address(arg1)][arg2].field_0 = 0
        highestBidder[address(arg1)][arg2].field_256 = 0
        highestBidder[address(arg1)][arg2].field_512 = 0
    auction[address(arg1)][arg2].field_0 = 0
    auction[address(arg1)][arg2].field_256 = 0
    auction[address(arg1)][arg2].field_512 = 0
    auction[address(arg1)][arg2].field_768 = 0
    auction[address(arg1)][arg2].field_1024 = 0
    auction[address(arg1)][arg2].field_1280 = 0
    emit AuctionCancelled(arg1, arg2);
    stor101 = 1
}

function placeBid(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    if isPaused:
        revert with 0, 'contract paused'
    if ext_code.size(msg.sender):
        revert with 0, 'no contracts permitted'
    if block.timestamp < auction[address(arg1)][arg2].field_768:
        revert with 0, 32, 37, 0x6462696464696e67206f757473696465206f66207468652061756374696f6e2077696e646f, mem[585 len 27]
    if block.timestamp > auction[address(arg1)][arg2].field_1024:
        revert with 0, 32, 37, 0x6462696464696e67206f757473696465206f66207468652061756374696f6e2077696e646f, mem[585 len 27]
    if isPaused:
        revert with 0, 'contract paused'
    if minBidIncrement + highestBidder[address(arg1)][arg2].field_256 < highestBidder[address(arg1)][arg2].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < minBidIncrement + highestBidder[address(arg1)][arg2].field_256:
        revert with 0, 'failed to outbid highest bidder'
    if auction[address(arg1)][arg2].field_256:
        require ext_code.size(auction[address(arg1)][arg2].field_256)
        call auction[address(arg1)][arg2].field_256.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 36, 0x72696e73756666696369656e742062616c616e6365206f72206e6f7420617070726f7665, mem[584 len 28]
    if highestBidder[address(arg1)][arg2].field_0:
        if not auction[address(arg1)][arg2].field_256:
            call highestBidder[address(arg1)][arg2].field_0 with:
               value highestBidder[address(arg1)][arg2].field_256 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'failed to refund previous bidder'
        else:
            require ext_code.size(auction[address(arg1)][arg2].field_256)
            call auction[address(arg1)][arg2].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, highestBidder[address(arg1)][arg2].field_0, highestBidder[address(arg1)][arg2].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'failed to refund previous bidder'
        emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, arg1, arg2, highestBidder[address(arg1)][arg2].field_0);
    highestBidder[address(arg1)][arg2].field_0 = msg.sender
    highestBidder[address(arg1)][arg2].field_256 = arg3
    highestBidder[address(arg1)][arg2].field_512 = block.timestamp
    emit BidPlaced(arg3, arg1, arg2, msg.sender);
    stor101 = 1
}

function placeBid(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    if isPaused:
        revert with 0, 'contract paused'
    if ext_code.size(msg.sender):
        revert with 0, 'no contracts permitted'
    if block.timestamp < auction[address(arg1)][arg2].field_768:
        revert with 0, 32, 37, 0x6462696464696e67206f757473696465206f66207468652061756374696f6e2077696e646f, mem[585 len 27]
    if block.timestamp > auction[address(arg1)][arg2].field_1024:
        revert with 0, 32, 37, 0x6462696464696e67206f757473696465206f66207468652061756374696f6e2077696e646f, mem[585 len 27]
    if auction[address(arg1)][arg2].field_256:
        revert with 0, 'invalid pay token'
    if isPaused:
        revert with 0, 'contract paused'
    if minBidIncrement + highestBidder[address(arg1)][arg2].field_256 < highestBidder[address(arg1)][arg2].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value < minBidIncrement + highestBidder[address(arg1)][arg2].field_256:
        revert with 0, 'failed to outbid highest bidder'
    if auction[address(arg1)][arg2].field_256:
        require ext_code.size(auction[address(arg1)][arg2].field_256)
        call auction[address(arg1)][arg2].field_256.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 36, 0x72696e73756666696369656e742062616c616e6365206f72206e6f7420617070726f7665, mem[584 len 28]
    if highestBidder[address(arg1)][arg2].field_0:
        if not auction[address(arg1)][arg2].field_256:
            call highestBidder[address(arg1)][arg2].field_0 with:
               value highestBidder[address(arg1)][arg2].field_256 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'failed to refund previous bidder'
        else:
            require ext_code.size(auction[address(arg1)][arg2].field_256)
            call auction[address(arg1)][arg2].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, highestBidder[address(arg1)][arg2].field_0, highestBidder[address(arg1)][arg2].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'failed to refund previous bidder'
        emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, arg1, arg2, highestBidder[address(arg1)][arg2].field_0);
    highestBidder[address(arg1)][arg2].field_0 = msg.sender
    highestBidder[address(arg1)][arg2].field_256 = msg.value
    highestBidder[address(arg1)][arg2].field_512 = block.timestamp
    emit BidPlaced(msg.value, arg1, arg2, msg.sender);
    stor101 = 1
}

function createAuction(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if isPaused:
        revert with 0, 'contract paused'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x646e6f74206f776e657220616e64206f7220636f6e7472616374206e6f7420617070726f7665,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x646e6f74206f776e657220616e64206f7220636f6e7472616374206e6f7420617070726f7665,
                    mem[202 len 26]
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
        call address(ext_call.return_data[0]).0x98afdfe3 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'invalid pay token'
    if auction[address(arg1)][arg2].field_1024:
        revert with 0, 'auction already started'
    if arg6 <= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe656e642074696d65206d7573742062652067726561746572207468616e2073746172,
                    mem[199 len 29]
    if arg6 <= block.timestamp:
        revert with 0, 'invalid end time'
    auction[address(arg1)][arg2].field_0 = msg.sender
    auction[address(arg1)][arg2].field_256 = arg3
    auction[address(arg1)][arg2].field_512 = arg4
    auction[address(arg1)][arg2].field_768 = arg5
    auction[address(arg1)][arg2].field_1024 = arg6
    auction[address(arg1)][arg2].field_1280 = 0
    emit AuctionCreated(arg3, arg1, arg2);
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x46616e746f6d41756374696f6e3a20496e76616c696420506c6174666f726d2046656520526563697069656e00,
                    mem[209 len 19]
    platformFeeRecipientAddress = arg1
    emit 0x237706cf 
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
