contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address feeOwner;
address currentWinnerAddress;
uint256 stor4;
uint256 stor5;
uint256 currentChallenge;
uint256 ticketPrice;
uint8 sub_5a4da061;
uint256 sub_0c0526e8;
address sub_a3f71abfAddress;
address CAKEAddress;
address sub_1a798221Address;
mapping of address sub_102f9713;
mapping of uint256 sub_836b0ce6;
mapping of uint256 ticketBalanceOf;
uint256 sub_b9c7ae8f;
uint256 sub_14f1f557;
uint8 stor18;
uint256 chainId;
uint256 sub_3ab03ef7;
uint256 currentDraw;
uint256 sub_5dd577ec;

function sub_0c0526e8(?) payable {
    return sub_0c0526e8
}

function sub_102f9713(?) payable {
    require calldata.size - 4 >= 32
    return sub_102f9713[arg1]
}

function ticketPrice() payable {
    return ticketPrice
}

function sub_14f1f557(?) payable {
    return sub_14f1f557
}

function sub_1a798221(?) payable {
    return sub_1a798221Address
}

function ticketBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return ticketBalanceOf[stor21][address(arg1)]
}

function getCurrentWinner() payable {
    return sub_102f9713[stor21]
}

function sub_3ab03ef7(?) payable {
    return sub_3ab03ef7
}

function CAKE() payable {
    return CAKEAddress
}

function currentChallenge() payable {
    return currentChallenge
}

function sub_5a4da061(?) payable {
    return bool(sub_5a4da061)
}

function sub_5c358ec8(?) payable {
    require calldata.size - 4 >= 64
    return ticketBalanceOf[arg1][arg2]
}

function sub_5dd577ec(?) payable {
    return sub_5dd577ec
}

function sub_836b0ce6(?) payable {
    require calldata.size - 4 >= 32
    return sub_836b0ce6[arg1]
}

function owner() payable {
    return owner
}

function currentDraw() payable {
    return currentDraw
}

function chainId() payable {
    return chainId
}

function sub_a3f71abf(?) payable {
    return sub_a3f71abfAddress
}

function currentWinner() payable {
    return currentWinnerAddress
}

function feeOwner() payable {
    return feeOwner
}

function sub_b9c7ae8f(?) payable {
    return sub_b9c7ae8f
}

function newOwner() payable {
    return newOwner
}

function _fallback() payable {
    revert
}

function setFeeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    feeOwner = arg1
}

function sub_562eb858(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_5a4da061 = uint8(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function changeTicketPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    ticketPrice = arg1
}

function sub_b486d773(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 + sub_0c0526e8 <= 100
    sub_14f1f557 = arg1
}

function sub_c9ec0bc7(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if sub_14f1f557 + arg1 > 100:
        revert with 0, 'Total cannot be over 100%'
    sub_0c0526e8 = arg1
}

function sub_1ab7e6de(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(sub_1a798221Address)
    call sub_1a798221Address.leaveStaking(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function currentJackpot() payable {
    require ext_code.size(sub_a3f71abfAddress)
    staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (80 * ext_call.return_data[0] / 100)
}

function transferAnyERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_60a8e885(?) payable {
    require msg.sender == owner
    require ext_code.size(CAKEAddress)
    staticcall CAKEAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1a798221Address)
    call sub_1a798221Address.enterStaking(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    if chainid == 56:
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args newOwner, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    owner = newOwner
    newOwner = 0
}

function drawPrize() payable {
    if block.timestamp - sub_5dd577ec >= 24 * 3600:
        if stor18:
            if sub_5a4da061:
                require ext_code.size(sub_1a798221Address)
                staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_1a798221Address)
                    staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_1a798221Address)
                    call sub_1a798221Address.enterStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * sub_14f1f557 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(CAKEAddress)
                    staticcall CAKEAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(CAKEAddress)
                    call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] * sub_0c0526e8 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        call sub_a3f71abfAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_102f9713[stor21], 80 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        call sub_a3f71abfAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args feeOwner, 20 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor18:
            if sub_5a4da061:
                require ext_code.size(CAKEAddress)
                staticcall CAKEAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(CAKEAddress)
                call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_102f9713[stor21], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        currentChallenge = sha3(currentChallenge, msg.sender, call.data[0 len calldata.size], block.hash(block.number - 1), block.coinbase, 0x3a4f6365616e65206372757368203c332e2e2e204e616e206661757420617272657465722064652072657665)
        emit 0x282afcce: sub_102f9713[stor21], currentDraw + 1
        currentDraw++
        sub_5dd577ec = block.timestamp
}

function getTicket() payable {
    require ext_code.size(sub_a3f71abfAddress)
    staticcall sub_a3f71abfAddress.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ticketPrice
    require ext_code.size(sub_a3f71abfAddress)
    staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ticketPrice
    require ext_code.size(sub_a3f71abfAddress)
    call sub_a3f71abfAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ticketPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor18:
        if sub_5a4da061:
            require ext_code.size(sub_1a798221Address)
            staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(sub_1a798221Address)
                staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_1a798221Address)
                call sub_1a798221Address.enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * sub_14f1f557 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(CAKEAddress)
                staticcall CAKEAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(CAKEAddress)
                call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0] * sub_0c0526e8 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    sub_b9c7ae8f++
    ticketBalanceOf[stor21][address(msg.sender)]++
    stor5 = sha3(currentChallenge, this.address, 0xfe416d204920746865206f6e6c79206f6e6520746f20707574206d6573736167657320696e20536d617274436f6e747261637473203f204665656c696e6720736f20616c6f6e65203a736f62, msg.sender, block.hash(block.number - 1))
    if stor5 < stor4:
        stor4 = stor5
        sub_102f9713[stor21] = msg.sender
    else:
        if not sub_836b0ce6[stor21]:
            stor4 = stor5
            sub_102f9713[stor21] = msg.sender
    sub_836b0ce6[stor21]++
    sub_3ab03ef7++
    emit NewTicket(currentDraw, stor5, msg.sender);
    currentChallenge = sha3(currentChallenge, msg.sender, msg.sender, block.hash(block.number - 1), stor5, stor4, block.coinbase, 'Crypto dev')
    if block.timestamp - sub_5dd577ec >= 24 * 3600:
        if stor18:
            if sub_5a4da061:
                require ext_code.size(sub_1a798221Address)
                staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_1a798221Address)
                    staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_1a798221Address)
                    call sub_1a798221Address.enterStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * sub_14f1f557 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(CAKEAddress)
                    staticcall CAKEAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(CAKEAddress)
                    call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] * sub_0c0526e8 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        call sub_a3f71abfAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_102f9713[stor21], 80 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        call sub_a3f71abfAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args feeOwner, 20 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor18:
            if sub_5a4da061:
                require ext_code.size(CAKEAddress)
                staticcall CAKEAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(CAKEAddress)
                call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_102f9713[stor21], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        currentChallenge = sha3(currentChallenge, msg.sender, call.data[0 len calldata.size], block.hash(block.number - 1), block.coinbase, 0x3a4f6365616e65206372757368203c332e2e2e204e616e206661757420617272657465722064652072657665)
        emit 0x282afcce: sub_102f9713[stor21], currentDraw + 1
        currentDraw++
        sub_5dd577ec = block.timestamp
    return stor5
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg3 == sub_a3f71abfAddress
    require ext_code.size(sub_a3f71abfAddress)
    staticcall sub_a3f71abfAddress.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ticketPrice
    require ext_code.size(sub_a3f71abfAddress)
    staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ticketPrice
    require ext_code.size(sub_a3f71abfAddress)
    call sub_a3f71abfAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), ticketPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor18:
        if sub_5a4da061:
            require ext_code.size(sub_1a798221Address)
            staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(sub_1a798221Address)
                staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_1a798221Address)
                call sub_1a798221Address.enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * sub_14f1f557 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(CAKEAddress)
                staticcall CAKEAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(CAKEAddress)
                call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0] * sub_0c0526e8 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    sub_b9c7ae8f++
    ticketBalanceOf[stor21][address(arg1)]++
    mem[ceil32(arg4.length) + 160] = currentChallenge
    stor5 = sha3(mem[ceil32(arg4.length) + 160 len 0, 180])
    if stor5 < stor4:
        stor4 = stor5
        sub_102f9713[stor21] = arg1
    else:
        if not sub_836b0ce6[stor21]:
            stor4 = stor5
            sub_102f9713[stor21] = arg1
    sub_836b0ce6[stor21]++
    sub_3ab03ef7++
    emit NewTicket(currentDraw, stor5, arg1);
    currentChallenge = sha3(currentChallenge, arg1, msg.sender, block.hash(block.number - 1), stor5, stor4, block.coinbase, 'Crypto dev')
    if block.timestamp - sub_5dd577ec >= 24 * 3600:
        if stor18:
            if sub_5a4da061:
                require ext_code.size(sub_1a798221Address)
                staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_1a798221Address)
                    staticcall sub_1a798221Address.pendingCake(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_1a798221Address)
                    call sub_1a798221Address.enterStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * sub_14f1f557 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(CAKEAddress)
                    staticcall CAKEAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(CAKEAddress)
                    call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] * sub_0c0526e8 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        call sub_a3f71abfAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_102f9713[stor21], 80 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        staticcall sub_a3f71abfAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3f71abfAddress)
        call sub_a3f71abfAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args feeOwner, 20 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor18:
            if sub_5a4da061:
                require ext_code.size(CAKEAddress)
                staticcall CAKEAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(CAKEAddress)
                call CAKEAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_102f9713[stor21], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        currentChallenge = sha3(currentChallenge, msg.sender, call.data[0 len calldata.size], block.hash(block.number - 1), block.coinbase, 0x3a4f6365616e65206372757368203c332e2e2e204e616e206661757420617272657465722064652072657665)
        emit 0x282afcce: sub_102f9713[stor21], currentDraw + 1
        currentDraw++
        sub_5dd577ec = block.timestamp
}



}
