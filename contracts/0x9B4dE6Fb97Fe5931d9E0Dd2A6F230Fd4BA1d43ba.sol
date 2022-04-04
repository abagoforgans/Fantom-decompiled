contract main {




// =====================  Runtime code  =====================


address currentWinnerAddress;
uint256 stor1;
uint256 timeDifference;
uint256 minAmount;
uint256 stor4;
mapping of uint256 stor5;
address tokenAddress;

function timeDifference() payable {
    return timeDifference
}

function minAmount() payable {
    return minAmount
}

function currentWinner() payable {
    return currentWinnerAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function timeLeftToWinLottery() payable {
    if stor1 > !timeDifference:
        revert with 0, 17
    if stor1 + timeDifference < block.timestamp:
        return 0
    if stor1 > !timeDifference:
        revert with 0, 17
    if stor1 + timeDifference < block.timestamp:
        revert with 0, 17
    return (stor1 + timeDifference - block.timestamp)
}

function lotteryAmount() payable {
    if stor5[stor0] and stor4 > -1 / stor5[stor0]:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= stor5[stor0] * stor4:
        if stor5[stor0] and stor4 > -1 / stor5[stor0]:
            revert with 0, 17
        return (stor5[stor0] * stor4)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function participate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= minAmount:
        if block.timestamp < stor1:
            revert with 0, 17
        if block.timestamp - stor1 > timeDifference:
            if stor5[stor0] and stor4 > -1 / stor5[stor0]:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= stor5[stor0] * stor4:
                if stor5[stor0] and stor4 > -1 / stor5[stor0]:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args currentWinnerAddress, stor5[stor0] * stor4
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args currentWinnerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        currentWinnerAddress = msg.sender
        stor5[address(msg.sender)] = arg1
        stor1 = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
