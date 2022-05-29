contract main {




// =====================  Runtime code  =====================


address owner;
address baseAddress;
address quoteAddress;
uint256 sub_3fd1e2bd;
uint256 price;
uint256 setPriceLast;
mapping of uint8 stor6;
uint256 lowerLimit;
uint256 upperLimit;
uint256 setLimitsLast;
uint256 cliffAdmin;
uint256 vestingTimeAdmin;
uint256 numberOfTranchesAdmin;
uint256 setVestingParamsLast;
array of struct stor14;
mapping of struct startTime;
uint256 vestedTotal;
uint256 claimedTotal;
uint256 stor18;

function upperLimit() payable {
    return upperLimit
}

function cliffAdmin() payable {
    return cliffAdmin
}

function sub_3fd1e2bd(?) payable {
    return sub_3fd1e2bd
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

function vested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return startTime[address(arg1)].field_1024
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
    return bool(stor6[arg1])
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

function vestedTotal() payable {
    return vestedTotal
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
    stor6[address(arg1)] = uint8(arg2)
    emit SetCanSetPrice(msg.sender, arg1, bool(uint8(arg2)));
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < setPriceLast:
        revert with 0, 17
    if block.timestamp - setPriceLast <= stor18:
        revert with 0, 'OTC1'
    if not stor6[msg.sender]:
        revert with 0, 'ACS'
    setPriceLast = block.timestamp
    price = arg1
    emit SetPrice(arg1);
}

function setLimits(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ACW'
    if block.timestamp < setLimitsLast:
        revert with 0, 17
    if block.timestamp - setLimitsLast <= stor18:
        revert with 0, 'OTC1'
    setLimitsLast = block.timestamp
    lowerLimit = arg1
    upperLimit = arg2
    emit SetLimits(arg1, arg2);
}

function setVestingParams(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'ACW'
    if block.timestamp < setVestingParamsLast:
        revert with 0, 17
    if block.timestamp - setVestingParamsLast <= stor18:
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
    staticcall quoteAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    call quoteAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Collect(ext_call.return_data[0]);
}

function VERSION() payable {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function claim() payable {
    if not startTime[msg.sender].field_768:
        revert with 0, 18
    if block.timestamp < startTime[msg.sender].field_0:
        revert with 0, 17
    if block.timestamp - startTime[msg.sender].field_0 <= startTime[msg.sender].field_256:
        revert with 0, 'OTC4'
    if block.timestamp < startTime[msg.sender].field_1536:
        revert with 0, 17
    if block.timestamp - startTime[msg.sender].field_1536 <= startTime[msg.sender].field_512 / startTime[msg.sender].field_768:
        revert with 0, 'OTC5'
    if block.timestamp < startTime[msg.sender].field_0:
        revert with 0, 17
    if not startTime[msg.sender].field_512 / startTime[msg.sender].field_768:
        revert with 0, 18
    if 1 > !(block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768):
        revert with 0, 17
    if (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768) + 1 < startTime[msg.sender].field_768:
        if startTime[msg.sender].field_1024 and (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768) + 1 > -1 / startTime[msg.sender].field_1024:
            revert with 0, 17
        if not startTime[msg.sender].field_768:
            revert with 0, 18
        if startTime[msg.sender].field_1024 + (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768 * startTime[msg.sender].field_1024) / startTime[msg.sender].field_768 < startTime[msg.sender].field_1280:
            revert with 0, 17
        if startTime[msg.sender].field_1280 > !((startTime[msg.sender].field_1024 + (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768 * startTime[msg.sender].field_1024) / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280):
            revert with 0, 17
        if claimedTotal > !((startTime[msg.sender].field_1024 + (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768 * startTime[msg.sender].field_1024) / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280):
            revert with 0, 17
        claimedTotal = claimedTotal + (startTime[msg.sender].field_1024 + (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768 * startTime[msg.sender].field_1024) / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280
        startTime[msg.sender].field_1280 = startTime[msg.sender].field_1024 + (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768 * startTime[msg.sender].field_1024) / startTime[msg.sender].field_768
        startTime[msg.sender].field_1536 = block.timestamp
        require ext_code.size(baseAddress)
        call baseAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (startTime[msg.sender].field_1024 + (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768 * startTime[msg.sender].field_1024) / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claim(msg.sender, (startTime[msg.sender].field_1024 + (block.timestamp - startTime[msg.sender].field_0 / startTime[msg.sender].field_512 / startTime[msg.sender].field_768 * startTime[msg.sender].field_1024) / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280);
    else:
        if startTime[msg.sender].field_1024 and startTime[msg.sender].field_768 > -1 / startTime[msg.sender].field_1024:
            revert with 0, 17
        if not startTime[msg.sender].field_768:
            revert with 0, 18
        if startTime[msg.sender].field_1024 * startTime[msg.sender].field_768 / startTime[msg.sender].field_768 < startTime[msg.sender].field_1280:
            revert with 0, 17
        if startTime[msg.sender].field_1280 > !((startTime[msg.sender].field_1024 * startTime[msg.sender].field_768 / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280):
            revert with 0, 17
        if claimedTotal > !((startTime[msg.sender].field_1024 * startTime[msg.sender].field_768 / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280):
            revert with 0, 17
        claimedTotal = claimedTotal + (startTime[msg.sender].field_1024 * startTime[msg.sender].field_768 / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280
        startTime[msg.sender].field_1280 = startTime[msg.sender].field_1024 * startTime[msg.sender].field_768 / startTime[msg.sender].field_768
        startTime[msg.sender].field_1536 = block.timestamp
        require ext_code.size(baseAddress)
        call baseAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (startTime[msg.sender].field_1024 * startTime[msg.sender].field_768 / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claim(msg.sender, (startTime[msg.sender].field_1024 * startTime[msg.sender].field_768 / startTime[msg.sender].field_768) - startTime[msg.sender].field_1280);
}

function exchange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if startTime[msg.sender].field_1024:
        revert with 0, 'OTC4'
    if vestedTotal < claimedTotal:
        revert with 0, 17
    require ext_code.size(baseAddress)
    staticcall baseAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < vestedTotal - claimedTotal:
        revert with 0, 17
    if arg1 > ext_call.return_data[0] - vestedTotal + claimedTotal:
        revert with 0, 'OTC2'
    if lowerLimit > arg1:
        revert with 0, 'OTC3'
    if arg1 > upperLimit:
        revert with 0, 'OTC3'
    if vestedTotal > !arg1:
        revert with 0, 17
    vestedTotal += arg1
    if 18 < sub_3fd1e2bd:
        revert with 0, 17
    if not -sub_3fd1e2bd + 18:
        if arg1 and price > -1 / arg1:
            revert with 0, 17
        startTime[msg.sender].field_0 = block.timestamp
        startTime[msg.sender].field_256 = cliffAdmin
        startTime[msg.sender].field_512 = vestingTimeAdmin
        startTime[msg.sender].field_768 = numberOfTranchesAdmin
        startTime[msg.sender].field_1024 = arg1
        require ext_code.size(quoteAddress)
        call quoteAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1 * price / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Exchange(msg.sender, arg1 * price / 100, arg1);
    else:
        if bool(bool(-sub_3fd1e2bd + 18 < 78)) or bool(bool(-sub_3fd1e2bd + 18 < 32)):
            if 10^(-sub_3fd1e2bd + 18) > -1:
                revert with 0, 17
            if arg1 and price > -1 / arg1:
                revert with 0, 17
            if not 10^(-sub_3fd1e2bd + 18):
                revert with 0, 18
            startTime[msg.sender].field_0 = block.timestamp
            startTime[msg.sender].field_256 = cliffAdmin
            startTime[msg.sender].field_512 = vestingTimeAdmin
            startTime[msg.sender].field_768 = numberOfTranchesAdmin
            startTime[msg.sender].field_1024 = arg1
            require ext_code.size(quoteAddress)
            call quoteAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * price / 100 / 10^(-sub_3fd1e2bd + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Exchange(msg.sender, arg1 * price / 100 / 10^(-sub_3fd1e2bd + 18), arg1);
        else:
            if var43005 > 1:
                s = var43001
                t = var43002
                u = var43005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and price > -1 / arg1:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        startTime[msg.sender].field_0 = block.timestamp
                        startTime[msg.sender].field_256 = cliffAdmin
                        startTime[msg.sender].field_512 = vestingTimeAdmin
                        startTime[msg.sender].field_768 = numberOfTranchesAdmin
                        startTime[msg.sender].field_1024 = arg1
                        require ext_code.size(quoteAddress)
                        call quoteAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1 * price / 100 / s * s * t
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Exchange(msg.sender, arg1 * price / 100 / s * s * t, arg1);
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and price > -1 / arg1:
                            revert with 0, 17
                        if not s * s * s * t:
                            revert with 0, 18
                        startTime[msg.sender].field_0 = block.timestamp
                        startTime[msg.sender].field_256 = cliffAdmin
                        startTime[msg.sender].field_512 = vestingTimeAdmin
                        startTime[msg.sender].field_768 = numberOfTranchesAdmin
                        startTime[msg.sender].field_1024 = arg1
                        require ext_code.size(quoteAddress)
                        call quoteAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1 * price / 100 / s * s * s * t
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Exchange(msg.sender, arg1 * price / 100 / s * s * s * t, arg1);
                revert with 0, 17
            if var43002 > -1 / var43001:
                revert with 0, 17
            if arg1 and price > -1 / arg1:
                revert with 0, 17
            if not var43001 * var43002:
                revert with 0, 18
            startTime[msg.sender].field_0 = block.timestamp
            startTime[msg.sender].field_256 = cliffAdmin
            startTime[msg.sender].field_512 = vestingTimeAdmin
            startTime[msg.sender].field_768 = numberOfTranchesAdmin
            startTime[msg.sender].field_1024 = arg1
            require ext_code.size(quoteAddress)
            call quoteAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * price / 100 / var43001 * var43002
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Exchange(msg.sender, arg1 * price / 100 / var43001 * var43002, arg1);
}



}
