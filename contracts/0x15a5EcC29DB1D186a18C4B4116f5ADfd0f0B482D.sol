contract main {




// =====================  Runtime code  =====================


address owner;
address baseAddress;
address quoteAddress;
uint256 price;
uint256 setPriceLast;
mapping of uint8 stor5;
uint256 lowerLimit;
uint256 upperLimit;
uint256 setLimitsLast;
uint256 cliffAdmin;
uint256 vestingTimeAdmin;
uint256 numberOfTranchesAdmin;
uint256 setVestingParamsLast;
mapping of struct startTime;
uint256 balanceTotal;
uint256 claimedTotal;
uint256 stor16;

function upperLimit() payable {
    return upperLimit
}

function cliffAdmin() payable {
    return cliffAdmin
}

function balanceTotal() payable {
    return balanceTotal
}

function base() payable {
    return baseAddress
}

function setLimitsLast() payable {
    return setLimitsLast
}

function setVestingParamsLast() payable {
    return setVestingParamsLast
}

function startTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_0
}

function claimLast(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_1536
}

function numberOfTranchesAdmin() payable {
    return numberOfTranchesAdmin
}

function vestingTimeAdmin() payable {
    return vestingTimeAdmin
}

function numberOfTranches(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_768
}

function owner() payable {
    return owner
}

function lowerLimit() payable {
    return lowerLimit
}

function quote() payable {
    return quoteAddress
}

function price() payable {
    return price
}

function canSetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function setPriceLast() payable {
    return setPriceLast
}

function vestingTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_512
}

function claimedTotal() payable {
    return claimedTotal
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_1280
}

function cliff(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_256
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanSetPrice(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor5[address(arg1)] = uint8(arg2)
    emit SetCanSetPrice(msg.sender, arg1, bool(stor5[address(arg1)]));
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < setPriceLast:
        revert with 'NH{q', 17
    if block.timestamp - setPriceLast <= stor16:
        revert with 0, 'OTC1'
    if not stor5[address(msg.sender)]:
        revert with 0, 'ACS'
    setPriceLast = block.timestamp
    price = arg1
    emit SetPrice(arg1);
}

function setLimits(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    if block.timestamp < setLimitsLast:
        revert with 'NH{q', 17
    if block.timestamp - setLimitsLast <= stor16:
        revert with 0, 'OTC1'
    setLimitsLast = block.timestamp
    lowerLimit = arg1
    upperLimit = arg2
    emit SetLimits(arg1, arg2);
}

function setVestingParams(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'ACW'
    if block.timestamp < setVestingParamsLast:
        revert with 'NH{q', 17
    if block.timestamp - setVestingParamsLast <= stor16:
        revert with 0, 'OTC1'
    setVestingParamsLast = block.timestamp
    cliffAdmin = arg1
    vestingTimeAdmin = arg2
    numberOfTranchesAdmin = arg3
    emit SetVestingParams(arg1, arg2, arg3);
}

function collect() payable {
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(quoteAddress)
    call quoteAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Collect(ext_call.return_data[0]);
}

function exchange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if startTime[address(msg.sender)].field_1024:
        revert with 0, 'OTC4'
    if balanceTotal < claimedTotal:
        revert with 'NH{q', 17
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < balanceTotal - claimedTotal:
        revert with 'NH{q', 17
    if arg1 > ext_call.return_data[0] - balanceTotal + claimedTotal:
        revert with 0, 'OTC2'
    if lowerLimit > arg1:
        revert with 0, 'OTC3'
    if arg1 > upperLimit:
        revert with 0, 'OTC3'
    if balanceTotal > -arg1 - 1:
        revert with 'NH{q', 17
    balanceTotal += arg1
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    startTime[address(msg.sender)].field_0 = block.timestamp
    startTime[address(msg.sender)].field_256 = cliffAdmin
    startTime[address(msg.sender)].field_512 = vestingTimeAdmin
    startTime[address(msg.sender)].field_768 = numberOfTranchesAdmin
    startTime[address(msg.sender)].field_1024 = arg1
    require ext_code.size(quoteAddress)
    call quoteAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * price / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Exchange(msg.sender, arg1 * price / 100, arg1);
}

function claim() payable {
    if not startTime[address(msg.sender)].field_768:
        revert with 'NH{q', 18
    if block.timestamp < startTime[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if block.timestamp - startTime[address(msg.sender)].field_0 <= startTime[address(msg.sender)].field_256:
        revert with 0, 'OTC4'
    if block.timestamp < startTime[address(msg.sender)].field_1536:
        revert with 'NH{q', 17
    if block.timestamp - startTime[address(msg.sender)].field_1536 <= startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768:
        revert with 0, 'OTC5'
    if block.timestamp < startTime[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if not startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768:
        revert with 'NH{q', 18
    if block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 > -2:
        revert with 'NH{q', 17
    if (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768) + 1 < startTime[address(msg.sender)].field_768:
        if startTime[address(msg.sender)].field_1024 and (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768) + 1 > -1 / startTime[address(msg.sender)].field_1024:
            revert with 'NH{q', 17
        if not startTime[address(msg.sender)].field_768:
            revert with 'NH{q', 18
        if startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768 < startTime[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if (startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280 < startTime[address(msg.sender)].field_1024:
            if startTime[address(msg.sender)].field_1280 > -(startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768) + startTime[address(msg.sender)].field_1280 - 1:
                revert with 'NH{q', 17
            if claimedTotal > -(startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768) + startTime[address(msg.sender)].field_1280 - 1:
                revert with 'NH{q', 17
            claimedTotal = claimedTotal + (startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280
            startTime[address(msg.sender)].field_1280 = startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768
            startTime[address(msg.sender)].field_1536 = block.timestamp
            require ext_code.size(baseAddress)
            call baseAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claim(msg.sender, (startTime[address(msg.sender)].field_1024 + (block.timestamp - startTime[address(msg.sender)].field_0 / startTime[address(msg.sender)].field_512 / startTime[address(msg.sender)].field_768 * startTime[address(msg.sender)].field_1024) / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280);
        else:
            if startTime[address(msg.sender)].field_1280 > -startTime[address(msg.sender)].field_1024 - 1:
                revert with 'NH{q', 17
            if claimedTotal > -startTime[address(msg.sender)].field_1024 - 1:
                revert with 'NH{q', 17
            claimedTotal += startTime[address(msg.sender)].field_1024
            startTime[address(msg.sender)].field_1280 += startTime[address(msg.sender)].field_1024
            startTime[address(msg.sender)].field_1536 = block.timestamp
            require ext_code.size(baseAddress)
            call baseAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, startTime[address(msg.sender)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claim(msg.sender, startTime[address(msg.sender)].field_1024);
    else:
        if startTime[address(msg.sender)].field_1024 and startTime[address(msg.sender)].field_768 > -1 / startTime[address(msg.sender)].field_1024:
            revert with 'NH{q', 17
        if not startTime[address(msg.sender)].field_768:
            revert with 'NH{q', 18
        if startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768 < startTime[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if (startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280 < startTime[address(msg.sender)].field_1024:
            if startTime[address(msg.sender)].field_1280 > -(startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768) + startTime[address(msg.sender)].field_1280 - 1:
                revert with 'NH{q', 17
            if claimedTotal > -(startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768) + startTime[address(msg.sender)].field_1280 - 1:
                revert with 'NH{q', 17
            claimedTotal = claimedTotal + (startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280
            startTime[address(msg.sender)].field_1280 = startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768
            startTime[address(msg.sender)].field_1536 = block.timestamp
            require ext_code.size(baseAddress)
            call baseAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claim(msg.sender, (startTime[address(msg.sender)].field_1024 * startTime[address(msg.sender)].field_768 / startTime[address(msg.sender)].field_768) - startTime[address(msg.sender)].field_1280);
        else:
            if startTime[address(msg.sender)].field_1280 > -startTime[address(msg.sender)].field_1024 - 1:
                revert with 'NH{q', 17
            if claimedTotal > -startTime[address(msg.sender)].field_1024 - 1:
                revert with 'NH{q', 17
            claimedTotal += startTime[address(msg.sender)].field_1024
            startTime[address(msg.sender)].field_1280 += startTime[address(msg.sender)].field_1024
            startTime[address(msg.sender)].field_1536 = block.timestamp
            require ext_code.size(baseAddress)
            call baseAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, startTime[address(msg.sender)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claim(msg.sender, startTime[address(msg.sender)].field_1024);
}



}
