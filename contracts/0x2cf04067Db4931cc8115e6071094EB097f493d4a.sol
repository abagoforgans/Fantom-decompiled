contract main {




// =====================  Runtime code  =====================


address owner;
address currentWinnerAddress;
uint256 stor2;
uint256 timeDifference;
uint256 minAmount;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address tokenAddress;

function timeDifference() {
    return timeDifference
}

function owner() {
    return owner
}

function minAmount() {
    return minAmount
}

function currentWinner() {
    return currentWinnerAddress
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function timeLeftToWinLottery() {
    if stor2 > !timeDifference:
        revert with 0, 17
    if stor2 + timeDifference < block.timestamp:
        return 0
    if stor2 > !timeDifference:
        revert with 0, 17
    if stor2 + timeDifference < block.timestamp:
        revert with 0, 17
    return (stor2 + timeDifference - block.timestamp)
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

function lotteryAmount() {
    if stor5 and stor6 > -1 / stor5:
        revert with 0, 17
    if stor5 * stor6 and stor7 > -1 / stor5 * stor6:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= stor5 * stor6 * stor7:
        if stor5 and stor6 > -1 / stor5:
            revert with 0, 17
        if stor5 * stor6 and stor7 > -1 / stor5 * stor6:
            revert with 0, 17
        return (stor5 * stor6 * stor7)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TokenTimerLottery: No tokens available'
    if msg.value >= minAmount:
        if block.timestamp < stor2:
            revert with 0, 17
        if block.timestamp - stor2 > timeDifference:
            if stor5 and stor6 > -1 / stor5:
                revert with 0, 17
            if stor5 * stor6 and stor7 > -1 / stor5 * stor6:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= stor5 * stor6 * stor7:
                if stor5 and stor6 > -1 / stor5:
                    revert with 0, 17
                if stor5 * stor6 and stor7 > -1 / stor5 * stor6:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args currentWinnerAddress, stor5 * stor6 * stor7
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args currentWinnerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            stor7 = 0
        currentWinnerAddress = msg.sender
        if stor7 > -2:
            revert with 0, 17
        stor7++
        stor2 = block.timestamp
}

function participate() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TokenTimerLottery: No tokens available'
    if msg.value >= minAmount:
        if block.timestamp < stor2:
            revert with 0, 17
        if block.timestamp - stor2 > timeDifference:
            if stor5 and stor6 > -1 / stor5:
                revert with 0, 17
            if stor5 * stor6 and stor7 > -1 / stor5 * stor6:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= stor5 * stor6 * stor7:
                if stor5 and stor6 > -1 / stor5:
                    revert with 0, 17
                if stor5 * stor6 and stor7 > -1 / stor5 * stor6:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args currentWinnerAddress, stor5 * stor6 * stor7
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args currentWinnerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            stor7 = 0
        currentWinnerAddress = msg.sender
        if stor7 > -2:
            revert with 0, 17
        stor7++
        stor2 = block.timestamp
}



}
