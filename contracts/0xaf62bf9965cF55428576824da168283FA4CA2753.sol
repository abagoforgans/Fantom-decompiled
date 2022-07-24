contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
address lastWinnerAddress;
uint256 ticketPrice;
uint64 ticketMax;
array of address ticketMapping;
uint256 ticketsBought;
uint256 stor107;

function ticketPrice() payable {
    return ticketPrice
}

function ticketMapping(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 101
    return ticketMapping[arg1]
}

function owner() payable {
    return owner
}

function ticketsBought() payable {
    return ticketsBought
}

function ticketMax() payable {
    return ticketMax
}

function getLastWinner() payable {
    return lastWinnerAddress
}

function token() payable {
    return stor1.length
}

function lastWinner() payable {
    return lastWinnerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_974dee93(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketPrice = arg1
    emit TicketPriceChanged(arg1);
}

function sub_4e351695(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketMax = uint64(arg1)
    emit 0x4a4b8ef0: uint64(arg1)
}

function lotteryPicker() payable {
    require ticketMax <= ticketsBought
    hash = sha256hash(block.timestamp, block.number) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ticketMax:
        revert with 0, 18
    return (hash % ticketMax)
}

function getTokenBalance() payable {
    require ext_code.size(stor1.length)
    staticcall stor1.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTicketsPurchased() payable {
    mem[3328] = ticketMapping.length
    idx = 3328
    s = 5
    while 6560 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    s = 3328
    t = 6560
    while idx < 101:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 6560
       len 3232
}

function withdrawFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1.length)
    call stor1.length.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor107
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor107 = 0
}

function buyTicket(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1.length)
    call stor1.length.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ticketPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Could not transfer tokens from your address to this contract'
    require arg1 > 0
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    require arg1 < uint64(ticketMax + 1)
    require not ticketMapping[arg1]
    require ticketMax > ticketsBought
    if ticketsBought > -2:
        revert with 0, 17
    ticketsBought++
    if arg1 >= 101:
        revert with 0, 50
    ticketMapping[arg1] = msg.sender
    emit TicketPurchased(arg1, msg.sender);
    if ticketMax > ticketsBought:
        return 1
    hash = sha256hash(block.timestamp, block.number) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ticketMax:
        revert with 0, 18
    if hash % ticketMax >= 101:
        revert with 0, 50
    if ticketMax and ticketPrice > -1 / ticketMax:
        revert with 0, 17
    if ticketMax * ticketPrice / 10 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if ticketMax * ticketPrice < 5 * ticketMax * ticketPrice / 10:
        revert with 0, 17
    if stor107 > !((ticketMax * ticketPrice) - (5 * ticketMax * ticketPrice / 10)):
        revert with 0, 17
    stor107 = stor107 + (ticketMax * ticketPrice) - (5 * ticketMax * ticketPrice / 10)
    require ticketMapping[hash % stor4]
    require ticketMax <= ticketsBought
    ticketsBought = 0
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    if var81002 >= uint64(ticketMax + 1):
        require ext_code.size(stor1.length)
        call stor1.length.0xa9059cbb with:
             gas gas_remaining wei
            args ticketMapping[hash % stor4], 5 * ticketMax * ticketPrice / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x1ba25787: hash % ticketMax, 5 * ticketMax * ticketPrice / 10, ticketMapping[hash % stor4]
        lastWinnerAddress = ticketMapping[hash % stor4]
        return 1
    if var83001 >= 101:
        revert with 0, 50
    ticketMapping[var85001] = 0
    if var87001 == -1:
        revert with 0, 17
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    if var99002 < uint64(ticketMax + 1):
        if var101001 >= 101:
            revert with 0, 50
        ticketMapping[var103001] = 0
        if var105001 == -1:
            revert with 0, 17
        # nil
    else:
        require ext_code.size(stor1.length)
        call stor1.length.0xa9059cbb with:
             gas gas_remaining wei
            args ticketMapping[hash % stor4], 5 * ticketMax * ticketPrice / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x1ba25787: hash % ticketMax, 5 * ticketMax * ticketPrice / 10, ticketMapping[hash % stor4]
        lastWinnerAddress = ticketMapping[hash % stor4]
        return 1
}



}
