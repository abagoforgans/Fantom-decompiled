contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
uint256 ticketPrice;
uint64 ticketMax;
array of address ticketMapping;
uint256 ticketsBought;
uint256 balance;

function getBalance() {
    return balance
}

function ticketPrice() {
    return ticketPrice
}

function ticketMapping(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 51
    return ticketMapping[arg1]
}

function owner() {
    return owner
}

function ticketsBought() {
    return ticketsBought
}

function ticketMax() {
    return ticketMax
}

function getLastWinner() {
    return stor1.length
}

function lastWinner() {
    return stor1.length
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

function sub_974dee93(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketPrice = arg1
    emit TicketPriceChanged(arg1);
}

function sub_4e351695(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketMax = uint64(arg1)
    emit 0x4a4b8ef0: uint64(arg1)
}

function withdrawFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value balance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance = 0
}

function lotteryPicker() {
    require ticketMax <= ticketsBought
    hash = sha256hash(block.timestamp, block.number) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ticketMax:
        revert with 0, 18
    return (hash % ticketMax)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTicketsPurchased() {
    mem[1728] = ticketMapping.length
    idx = 1728
    s = 4
    while 3360 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    s = 1728
    t = 3360
    while idx < 51:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 3360
       len 1632
}

function sendReward() {
    require ticketMax <= ticketsBought
    hash = sha256hash(block.timestamp, block.number) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ticketMax:
        revert with 0, 18
    if hash % ticketMax >= 51:
        revert with 0, 50
    if ticketMax and ticketPrice > -1 / ticketMax:
        revert with 0, 17
    if ticketMax * ticketPrice / 10 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if ticketMax * ticketPrice < 5 * ticketMax * ticketPrice / 10:
        revert with 0, 17
    if balance > !((ticketMax * ticketPrice) - (5 * ticketMax * ticketPrice / 10)):
        revert with 0, 17
    balance = balance + (ticketMax * ticketPrice) - (5 * ticketMax * ticketPrice / 10)
    require ticketMapping[hash % stor3]
    require ticketMax <= ticketsBought
    ticketsBought = 0
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    if var56002 >= uint64(ticketMax + 1):
        call ticketMapping[hash % stor3] with:
           value 5 * ticketMax * ticketPrice / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1ba25787: hash % ticketMax, 5 * ticketMax * ticketPrice / 10, ticketMapping[hash % stor3]
        stor1.length = ticketMapping[hash % stor3]
        return ticketMapping[hash % stor3]
    if var58001 >= 51:
        revert with 0, 50
    ticketMapping[var60001] = 0
    if var62001 == -1:
        revert with 0, 17
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    if var74002 < uint64(ticketMax + 1):
        if var76001 >= 51:
            revert with 0, 50
        ticketMapping[var78001] = 0
        if var80001 == -1:
            revert with 0, 17
        # nil
    else:
        call ticketMapping[hash % stor3] with:
           value 5 * ticketMax * ticketPrice / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1ba25787: hash % ticketMax, 5 * ticketMax * ticketPrice / 10, ticketMapping[hash % stor3]
        stor1.length = ticketMapping[hash % stor3]
        return ticketMapping[hash % stor3]
}

function buyTicket(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.value == ticketPrice
    require arg1 > 0
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    require arg1 < uint64(ticketMax + 1)
    require not ticketMapping[arg1]
    require ticketMax > ticketsBought
    if ticketsBought > -2:
        revert with 0, 17
    ticketsBought++
    if arg1 >= 51:
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
    if hash % ticketMax >= 51:
        revert with 0, 50
    if ticketMax and ticketPrice > -1 / ticketMax:
        revert with 0, 17
    if ticketMax * ticketPrice / 10 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if ticketMax * ticketPrice < 5 * ticketMax * ticketPrice / 10:
        revert with 0, 17
    if balance > !((ticketMax * ticketPrice) - (5 * ticketMax * ticketPrice / 10)):
        revert with 0, 17
    balance = balance + (ticketMax * ticketPrice) - (5 * ticketMax * ticketPrice / 10)
    require ticketMapping[hash % stor3]
    require ticketMax <= ticketsBought
    ticketsBought = 0
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    if var75002 >= uint64(ticketMax + 1):
        call ticketMapping[hash % stor3] with:
           value 5 * ticketMax * ticketPrice / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1ba25787: hash % ticketMax, 5 * ticketMax * ticketPrice / 10, ticketMapping[hash % stor3]
        stor1.length = ticketMapping[hash % stor3]
        return 1
    if var77001 >= 51:
        revert with 0, 50
    ticketMapping[var79001] = 0
    if var81001 == -1:
        revert with 0, 17
    if 1 > -ticketMax + test266151307():
        revert with 0, 17
    if var93002 < uint64(ticketMax + 1):
        if var95001 >= 51:
            revert with 0, 50
        ticketMapping[var97001] = 0
        if var99001 == -1:
            revert with 0, 17
        # nil
    else:
        call ticketMapping[hash % stor3] with:
           value 5 * ticketMax * ticketPrice / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1ba25787: hash % ticketMax, 5 * ticketMax * ticketPrice / 10, ticketMapping[hash % stor3]
        stor1.length = ticketMapping[hash % stor3]
        return 1
}



}
