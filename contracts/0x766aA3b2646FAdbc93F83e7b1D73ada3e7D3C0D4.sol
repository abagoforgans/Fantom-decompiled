contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 auctionEndTime;
address highestBidderAddress;
uint256 highestBid;
mapping of uint256 stor4;
uint8 stor5;

function beneficiary() {
    return beneficiaryAddress
}

function auctionEndTime() {
    return auctionEndTime
}

function highestBidder() {
    return highestBidderAddress
}

function highestBid() {
    return highestBid
}

function _fallback() payable {
    revert
}

function withdraw() {
    if stor4[address(msg.sender)] <= 0:
        return 1
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function bid() payable {
    if block.timestamp > auctionEndTime:
        revert with 0, 'Auction already ended.'
    if msg.value <= highestBid:
        revert with 0, 'There already is a higher bid.'
    if highestBid:
        stor4[stor2] += highestBid
    highestBidderAddress = msg.sender
    highestBid = msg.value
    emit HighestBidIncreased(msg.sender, msg.value);
}

function auctionEnd() {
    if block.timestamp < auctionEndTime:
        revert with 0, 'Auction not yet ended.'
    if stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe61756374696f6e456e642068617320616c7265616479206265656e2063616c6c6564,
                    mem[199 len 29]
    stor5 = 1
    emit AuctionEnded(highestBidderAddress, highestBid);
    call beneficiaryAddress with:
       value highestBid wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
