contract main {




// =====================  Runtime code  =====================


address lastWinnerAddress;
array of address stor1;
uint64 ticketMax;
array of address ticketMapping;
uint256 ticketsBought;
address stor30;

function ticketPrice() {
    return stor1.length
}

function ticketMapping(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 26
    return ticketMapping[arg1]
}

function ticketsBought() {
    return ticketsBought
}

function ticketMax() {
    return ticketMax
}

function getLastWinner() {
    return lastWinnerAddress
}

function lastWinner() {
    return lastWinnerAddress
}

function _fallback() payable {
    revert
}

function sub_4e351695(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor30
    ticketMax = arg1
    emit 0x4a4b8ef0: arg1
    return 1
}

function sub_974dee93(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor30
    stor1.length = arg1
    emit TicketPriceChanged(arg1);
    return 1
}

function getTicketsPurchased() {
    idx = 928
    s = 3
    while 1760 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return ticketMapping.length, mem[960 len 800]
}

function lotteryPicker() {
    require ticketMax <= ticketsBought
    hash = sha256hash(block.timestamp, block.number) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ticketMax
    return (hash % ticketMax)
}

function sendReward() {
    require ticketMax <= ticketsBought
    hash = sha256hash(block.timestamp, block.number) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ticketMax
    require hash % ticketMax < 26
    require ticketMapping[hash % stor2]
    require ticketMax <= ticketsBought
    ticketsBought = 0
    idx = 0
    while idx < uint64(ticketMax + 1):
        ticketMapping[idx] = 0
        idx = idx + 1
        continue 
    call ticketMapping[hash % stor2] with:
       value ticketMax * stor1.length / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1ba25787: hash % ticketMax, ticketMax * stor1.length / 2, ticketMapping[hash % stor2]
    lastWinnerAddress = ticketMapping[hash % stor2]
    return ticketMapping[hash % stor2]
}

function buyTicket(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value == stor1.length
    require arg1 > 0
    require arg1 < uint64(ticketMax + 1)
    require not ticketMapping[arg1]
    require ticketMax > ticketsBought
    ticketsBought++
    require arg1 < 26
    ticketMapping[arg1] = msg.sender
    emit TicketPurchased(arg1, msg.sender);
    if ticketMax <= ticketsBought:
        hash = sha256hash(block.timestamp, block.number) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ticketMax
        require hash % ticketMax < 26
        require ticketMapping[hash % stor2]
        require ticketMax <= ticketsBought
        ticketsBought = 0
        idx = 0
        while idx < uint64(ticketMax + 1):
            ticketMapping[idx] = 0
            idx = idx + 1
            continue 
        call ticketMapping[hash % stor2] with:
           value ticketMax * stor1.length / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1ba25787: hash % ticketMax, ticketMax * stor1.length / 2, ticketMapping[hash % stor2]
        lastWinnerAddress = ticketMapping[hash % stor2]
    return 1
}



}
