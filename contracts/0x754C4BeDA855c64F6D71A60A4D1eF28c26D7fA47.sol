contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
mapping of struct auction;
mapping of struct highestBidder;
uint256 minBidIncrement;
uint256 bidWithdrawalLockTime;
uint256 platformFee;
address platformFeeRecipientAddress;
uint8 isPaused; offset 160
uint128 stor8; offset 160
address marketplaceAddress;

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
           bool(auction[arg1][arg2].field_1024)
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
           bool(auction[address(arg1)][arg2].field_1024)
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

function marketplace() {
    return marketplaceAddress
}

function isPaused() {
    return bool(isPaused)
}

function platformFeeRecipient() {
    return platformFeeRecipientAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMarketplace(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    marketplaceAddress = arg1
}

function toggleIsPaused() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor8 = Mask(96, 0, not isPaused)
    emit PauseToggled(bool(0 or uint8(not isPaused)));
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updateMinBidIncrement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    minBidIncrement = arg1
    emit UpdateMinBidIncrement(arg1);
}

function updateBidWithdrawalLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    bidWithdrawalLockTime = arg1
    emit UpdateBidWithdrawalLockTime(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7446616e746f6d41756374696f6e2e757064617465506c6174666f726d466565526563697069656e743a205a65726f20616464726573,
                    mem[218 len 10]
    platformFeeRecipientAddress = arg1
    emit 0xe57e7c1f: arg1
}

function reclaimERC20(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid address'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function updateAuctionStartTime(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x46616e746f6d41756374696f6e2e75706461746541756374696f6e537461727454696d653a2053656e646572206d757374206265206974656d206f776e6500,
                    mem[227 len 1]
    if auction[address(arg1)][arg2].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6446616e746f6d41756374696f6e2e75706461746541756374696f6e537461727454696d653a204e6f2041756374696f6e206578697374,
                    mem[219 len 9]
    auction[address(arg1)][arg2].field_512 = arg3
    emit UpdateAuctionStartTime(arg3, arg1, arg2);
}

function updateAuctionReservePrice(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x2e46616e746f6d41756374696f6e2e75706461746541756374696f6e5265736572766550726963653a2053656e646572206d757374206265206974656d206f776e65,
                    mem[230 len 30]
    if auction[address(arg1)][arg2].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x7246616e746f6d41756374696f6e2e75706461746541756374696f6e5265736572766550726963653a204e6f2041756374696f6e206578697374,
                    mem[222 len 6]
    auction[address(arg1)][arg2].field_256 = arg3
    emit UpdateAuctionReservePrice(arg3, arg1, arg2);
}

function updateAuctionEndTime(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x6446616e746f6d41756374696f6e2e75706461746541756374696f6e456e6454696d653a2053656e646572206d757374206265206974656d206f776e65,
                    mem[225 len 3]
    if auction[address(arg1)][arg2].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6446616e746f6d41756374696f6e2e75706461746541756374696f6e456e6454696d653a204e6f2041756374696f6e206578697374,
                    mem[217 len 11]
    if auction[address(arg1)][arg2].field_512 >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x7246616e746f6d41756374696f6e2e75706461746541756374696f6e456e6454696d653a20456e642074696d65206d7573742062652067726561746572207468616e2073746172,
                    mem[235 len 25]
    if arg3 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x7246616e746f6d41756374696f6e2e75706461746541756374696f6e456e6454696d653a20456e642074696d65207061737365642e204e6f626f64792063616e206269,
                    mem[231 len 29]
    auction[address(arg1)][arg2].field_768 = arg3
    emit UpdateAuctionEndTime(arg3, arg1, arg2);
}

function sub_4ffccb85(?) {
    require calldata.size - 4 >= 64
    if marketplaceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7453656e646572206d757374206265206d61726b6574706c61636520636f6e74726163,
                    mem[199 len 29]
    if auction[address(arg1)][arg2].field_768:
        if not auction[address(arg1)][arg2].field_1024:
            if highestBidder[address(arg1)][arg2].field_0:
                call highestBidder[address(arg1)][arg2].field_0 with:
                   value highestBidder[address(arg1)][arg2].field_256 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    68,
                                    0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                                    mem[552 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    68,
                                    0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                                    mem[ceil32(return_data.size) + 553 len 28]
                ('bool', 'ext_call.success')
                emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, highestBidder[address(arg1)][arg2].field_0);
                highestBidder[address(arg1)][arg2].field_0 = 0
                highestBidder[address(arg1)][arg2].field_256 = 0
                highestBidder[address(arg1)][arg2].field_512 = 0
            auction[address(arg1)][arg2].field_0 = 0
            auction[address(arg1)][arg2].field_256 = 0
            auction[address(arg1)][arg2].field_512 = 0
            auction[address(arg1)][arg2].field_768 = 0
            auction[address(arg1)][arg2].field_1024 = 0
            emit AuctionCancelled(arg1, arg2);
}

function withdrawBid(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if isPaused:
        revert with 0, 'Function is currently paused'
    if highestBidder[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6446616e746f6d41756374696f6e2e77697468647261774269643a20596f7520617265206e6f74207468652068696768657374206269646465,
                    mem[221 len 7]
    if bidWithdrawalLockTime + highestBidder[address(arg1)][arg2].field_512 < highestBidder[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < bidWithdrawalLockTime + highestBidder[address(arg1)][arg2].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x7246616e746f6d41756374696f6e2e77697468647261774269643a2043616e6e6f7420776974686472617720756e74696c206c6f636b2074696d6520686173207061737365,
                    mem[233 len 27]
    if block.timestamp >= auction[address(arg1)][arg2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7346616e746f6d41756374696f6e2e77697468647261774269643a20506173742061756374696f6e20656e,
                    mem[207 len 21]
    highestBidder[address(arg1)][arg2].field_0 = 0
    highestBidder[address(arg1)][arg2].field_256 = 0
    highestBidder[address(arg1)][arg2].field_512 = 0
    call msg.sender with:
       value highestBidder[address(arg1)][arg2].field_256 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        68,
                        0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                        mem[232 len 28]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        68,
                        0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                        mem[ceil32(return_data.size) + 233 len 28]
    ('bool', 'ext_call.success')
    emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, msg.sender);
    emit BidWithdrawn(highestBidder[address(arg1)][arg2].field_256, arg1, arg2, msg.sender);
    stor0 = 1
}

function createAuction(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if isPaused:
        revert with 0, 'Function is currently paused'
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x7346616e746f6d41756374696f6e2e63726561746541756374696f6e3a204e6f74206f776e657220616e64206f7220636f6e7472616374206e6f7420617070726f7665,
                    mem[231 len 29]
    require ext_code.size(arg1)
    staticcall arg1.isApprovedForAll(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x7346616e746f6d41756374696f6e2e63726561746541756374696f6e3a204e6f74206f776e657220616e64206f7220636f6e7472616374206e6f7420617070726f7665,
                    mem[231 len 29]
    if auction[address(arg1)][arg2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7346616e746f6d41756374696f6e2e63726561746541756374696f6e3a2043616e6e6f742072656c6973,
                    mem[206 len 22]
    if arg5 <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x6446616e746f6d41756374696f6e2e63726561746541756374696f6e3a20456e642074696d65206d7573742062652067726561746572207468616e2073746172
    if arg5 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x7246616e746f6d41756374696f6e2e63726561746541756374696f6e3a20456e642074696d65207061737365642e204e6f626f64792063616e20626964,
                    mem[225 len 3]
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.validateCancelListing(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    auction[address(arg1)][arg2].field_0 = msg.sender
    auction[address(arg1)][arg2].field_256 = arg3
    auction[address(arg1)][arg2].field_512 = arg4
    auction[address(arg1)][arg2].field_768 = arg5
    auction[address(arg1)][arg2].field_1024 = 0
    emit AuctionCreated(arg1, arg2);
}

function cancelAuction(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    54,
                    0x6446616e746f6d41756374696f6e2e63616e63656c41756374696f6e3a2053656e646572206d757374206265206974656d206f776e65,
                    mem[538 len 10]
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 
                    32,
                    54,
                    0x6446616e746f6d41756374696f6e2e63616e63656c41756374696f6e3a2053656e646572206d757374206265206974656d206f776e65,
                    mem[538 len 10]
    if auction[address(arg1)][arg2].field_768 <= 0:
        revert with 0, 
                    32,
                    51,
                    0x7246616e746f6d41756374696f6e2e63616e63656c41756374696f6e3a2041756374696f6e20646f6573206e6f742065786973,
                    mem[535 len 13]
    if auction[address(arg1)][arg2].field_1024:
        revert with 0, 
                    32,
                    53,
                    0x7746616e746f6d41756374696f6e2e63616e63656c41756374696f6e3a2061756374696f6e20616c726561647920726573756c7465,
                    mem[537 len 11]
    if highestBidder[address(arg1)][arg2].field_0:
        call highestBidder[address(arg1)][arg2].field_0 with:
           value highestBidder[address(arg1)][arg2].field_256 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            68,
                            0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                            mem[552 len 28]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            68,
                            0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                            mem[ceil32(return_data.size) + 553 len 28]
        ('bool', 'ext_call.success')
        emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, highestBidder[address(arg1)][arg2].field_0);
        highestBidder[address(arg1)][arg2].field_0 = 0
        highestBidder[address(arg1)][arg2].field_256 = 0
        highestBidder[address(arg1)][arg2].field_512 = 0
    auction[address(arg1)][arg2].field_0 = 0
    auction[address(arg1)][arg2].field_256 = 0
    auction[address(arg1)][arg2].field_512 = 0
    auction[address(arg1)][arg2].field_768 = 0
    auction[address(arg1)][arg2].field_1024 = 0
    emit AuctionCancelled(arg1, arg2);
    stor0 = 1
}

function placeBid(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if isPaused:
        revert with 0, 'Function is currently paused'
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6546616e746f6d41756374696f6e2e706c6163654269643a204e6f20636f6e747261637473207065726d69747465,
                    mem[210 len 18]
    if block.timestamp < auction[address(arg1)][arg2].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x6446616e746f6d41756374696f6e2e706c6163654269643a2042696464696e67206f757473696465206f66207468652061756374696f6e2077696e646f,
                    mem[225 len 3]
    if block.timestamp > auction[address(arg1)][arg2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x6446616e746f6d41756374696f6e2e706c6163654269643a2042696464696e67206f757473696465206f66207468652061756374696f6e2077696e646f,
                    mem[225 len 3]
    if minBidIncrement + highestBidder[address(arg1)][arg2].field_256 < highestBidder[address(arg1)][arg2].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value < minBidIncrement + highestBidder[address(arg1)][arg2].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x7746616e746f6d41756374696f6e2e706c6163654269643a204661696c656420746f206f75746269642068696768657374206269646465,
                    mem[219 len 9]
    if highestBidder[address(arg1)][arg2].field_0:
        call highestBidder[address(arg1)][arg2].field_0 with:
           value highestBidder[address(arg1)][arg2].field_256 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            68,
                            0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                            mem[232 len 28]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            68,
                            0x6446616e746f6d41756374696f6e2e5f726566756e64486967686573744269646465723a206661696c656420746f20726566756e642070726576696f7573206269646465,
                            mem[ceil32(return_data.size) + 233 len 28]
        ('bool', 'ext_call.success')
        emit BidRefunded(highestBidder[address(arg1)][arg2].field_256, highestBidder[address(arg1)][arg2].field_0);
    highestBidder[address(arg1)][arg2].field_0 = msg.sender
    highestBidder[address(arg1)][arg2].field_256 = msg.value
    highestBidder[address(arg1)][arg2].field_512 = block.timestamp
    emit BidPlaced(msg.value, arg1, arg2, msg.sender);
    stor0 = 1
}

function resultAuction(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a2053656e646572206d757374206265206974656d206f776e65,
                    mem[218 len 10]
    if auction[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a2053656e646572206d757374206265206974656d206f776e65,
                    mem[218 len 10]
    if auction[address(arg1)][arg2].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a2041756374696f6e20646f6573206e6f742065786973,
                    mem[215 len 13]
    if block.timestamp <= auction[address(arg1)][arg2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7346616e746f6d41756374696f6e2e726573756c7441756374696f6e3a205468652061756374696f6e20686173206e6f7420656e6465,
                    mem[218 len 10]
    if auction[address(arg1)][arg2].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7246616e746f6d41756374696f6e2e726573756c7441756374696f6e3a2061756374696f6e20616c726561647920726573756c7465,
                    mem[217 len 11]
    require ext_code.size(arg1)
    staticcall arg1.isApprovedForAll(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x7246616e746f6d41756374696f6e2e726573756c7441756374696f6e3a2061756374696f6e206e6f7420617070726f7665,
                    mem[213 len 15]
    if highestBidder[address(arg1)][arg2].field_256 < auction[address(arg1)][arg2].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a2072657365727665206e6f7420726561636865,
                    mem[212 len 16]
    if not highestBidder[address(arg1)][arg2].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7346616e746f6d41756374696f6e2e726573756c7441756374696f6e3a206e6f206f70656e20626964,
                    mem[205 len 23]
    auction[address(arg1)][arg2].field_1024 = 1
    highestBidder[address(arg1)][arg2].field_0 = 0
    highestBidder[address(arg1)][arg2].field_256 = 0
    highestBidder[address(arg1)][arg2].field_512 = 0
    if highestBidder[address(arg1)][arg2].field_256 <= auction[address(arg1)][arg2].field_256:
        call auction[address(arg1)][arg2].field_0 with:
           value highestBidder[address(arg1)][arg2].field_256 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            69,
                            0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                            mem[233 len 27]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            69,
                            0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                            mem[ceil32(return_data.size) + 234 len 27]
    else:
        if auction[address(arg1)][arg2].field_256 > highestBidder[address(arg1)][arg2].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        if not highestBidder[address(arg1)][arg2].field_256 - auction[address(arg1)][arg2].field_256:
            call platformFeeRecipientAddress with:
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x7246616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420706c6174666f726d206665,
                                mem[220 len 8]
                if 0 > highestBidder[address(arg1)][arg2].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                call auction[address(arg1)][arg2].field_0 with:
                   value highestBidder[address(arg1)][arg2].field_256 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[233 len 27]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[ceil32(return_data.size) + 234 len 27]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                56,
                                0x7246616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420706c6174666f726d206665,
                                mem[ceil32(return_data.size) + 221 len 8]
                if 0 > highestBidder[address(arg1)][arg2].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                call auction[address(arg1)][arg2].field_0 with:
                   value highestBidder[address(arg1)][arg2].field_256 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[ceil32(return_data.size) + 234 len 27]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[(2 * ceil32(return_data.size)) + 235 len 27]
        else:
            if (highestBidder[address(arg1)][arg2].field_256 * platformFee) - (auction[address(arg1)][arg2].field_256 * platformFee) / highestBidder[address(arg1)][arg2].field_256 - auction[address(arg1)][arg2].field_256 != platformFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            call platformFeeRecipientAddress with:
               value (highestBidder[address(arg1)][arg2].field_256 * platformFee) - (auction[address(arg1)][arg2].field_256 * platformFee) / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x7246616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420706c6174666f726d206665,
                                mem[220 len 8]
                if (highestBidder[address(arg1)][arg2].field_256 * platformFee) - (auction[address(arg1)][arg2].field_256 * platformFee) / 1000 > highestBidder[address(arg1)][arg2].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                call auction[address(arg1)][arg2].field_0 with:
                   value highestBidder[address(arg1)][arg2].field_256 - ((highestBidder[address(arg1)][arg2].field_256 * platformFee) - (auction[address(arg1)][arg2].field_256 * platformFee) / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[233 len 27]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[ceil32(return_data.size) + 234 len 27]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                56,
                                0x7246616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420706c6174666f726d206665,
                                mem[ceil32(return_data.size) + 221 len 8]
                if (highestBidder[address(arg1)][arg2].field_256 * platformFee) - (auction[address(arg1)][arg2].field_256 * platformFee) / 1000 > highestBidder[address(arg1)][arg2].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                call auction[address(arg1)][arg2].field_0 with:
                   value highestBidder[address(arg1)][arg2].field_256 - ((highestBidder[address(arg1)][arg2].field_256 * platformFee) - (auction[address(arg1)][arg2].field_256 * platformFee) / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[ceil32(return_data.size) + 234 len 27]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    69,
                                    0x6446616e746f6d41756374696f6e2e726573756c7441756374696f6e3a204661696c656420746f2073656e6420746865206f776e657220746865697220726f79616c746965,
                                    mem[(2 * ceil32(return_data.size)) + 235 len 27]
    ('bool', 'ext_call.success')
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), highestBidder[address(arg1)][arg2].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionResulted(highestBidder[address(arg1)][arg2].field_256, arg1, arg2, highestBidder[address(arg1)][arg2].field_0);
    stor0 = 1
}



}
