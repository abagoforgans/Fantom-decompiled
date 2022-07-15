contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address adminAddress;
address lpTokenAddress;
address offeringTokenAddress;
uint256 startTime;
uint256 endTime;
uint256 raisingAmount;
uint256 offeringAmount;
uint256 totalAmount;
mapping of struct userInfo;
array of address addressList;
uint8 sub_501edce3;
uint256 sub_7ea7a964;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_256)
}

function totalAmount() payable {
    return totalAmount
}

function endTime() payable {
    return endTime
}

function sub_501edce3(?) payable {
    return bool(sub_501edce3)
}

function lpToken() payable {
    return lpTokenAddress
}

function hasHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(userInfo[address(arg1)].field_256)
}

function startTime() payable {
    return startTime
}

function sub_7ea7a964(?) payable {
    return sub_7ea7a964
}

function raisingAmount() payable {
    return raisingAmount
}

function offeringToken() payable {
    return offeringTokenAddress
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return addressList[arg1]
}

function offeringAmount() payable {
    return offeringAmount
}

function getAddressListLength() payable {
    return addressList.length
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_4d8d5876(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    sub_501edce3 = uint8(arg1)
}

function sub_cc27035e(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if block.timestamp >= startTime:
        revert with 0, 'no'
    sub_7ea7a964 = arg1
}

function setRaisingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if block.timestamp >= startTime:
        revert with 0, 'no'
    raisingAmount = arg1
}

function setOfferingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if block.timestamp >= startTime:
        revert with 0, 'no'
    offeringAmount = arg1
}

function getUserAllocation(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userInfo[address(arg1)].field_0:
        if totalAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalAmount:
            return (0 / totalAmount / 10^6)
    else:
        if userInfo[address(arg1)].field_0:
            if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalAmount:
                return (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6)
    revert
}

function getRefundingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if totalAmount <= raisingAmount:
        return 0
    if not userInfo[address(arg1)].field_0:
        if totalAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAmount
        if not raisingAmount:
            if 0 > userInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            return userInfo[address(arg1)].field_0
        require raisingAmount
        if raisingAmount * 0 / totalAmount / 10^6 / raisingAmount != 0 / totalAmount / 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if raisingAmount * 0 / totalAmount / 10^6 / 10^6 > userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return (userInfo[address(arg1)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6))
    require userInfo[address(arg1)].field_0
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAmount <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAmount
    if not raisingAmount:
        if 0 > userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return userInfo[address(arg1)].field_0
    require raisingAmount
    if raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / raisingAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / 10^6 > userInfo[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / 10^6))
}

function getOfferingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if totalAmount <= raisingAmount:
        if not userInfo[address(arg1)].field_0:
            if raisingAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            if raisingAmount:
                return (0 / raisingAmount)
        else:
            if userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_0 * offeringAmount / userInfo[address(arg1)].field_0 != offeringAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if raisingAmount <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if raisingAmount:
                    return (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount)
        revert
    if not userInfo[address(arg1)].field_0:
        if totalAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAmount
        if not offeringAmount:
            return 0
        require offeringAmount
        if offeringAmount * 0 / totalAmount / 10^6 / offeringAmount != 0 / totalAmount / 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (offeringAmount * 0 / totalAmount / 10^6 / 10^6)
    require userInfo[address(arg1)].field_0
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAmount <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAmount
    if not offeringAmount:
        return 0
    require offeringAmount
    if offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / offeringAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / 10^6)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= startTime:
        revert with 0, 'not ijo time'
    if block.timestamp >= endTime:
        revert with 0, 'not ijo time'
    if arg1 <= 0:
        revert with 0, 'need _amount > 0'
    if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(lpTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call lpTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if not userInfo[address(msg.sender)].field_0:
        addressList.length++
        addressList[addressList.length] = msg.sender
    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[address(msg.sender)].field_0 += arg1
    if sub_7ea7a964 > 0:
        if userInfo[address(msg.sender)].field_0 > sub_7ea7a964:
            revert with 0, 'exceeded max deposit amount'
    if totalAmount + arg1 < totalAmount:
        revert with 0, 'SafeMath: addition overflow'
    totalAmount += arg1
    emit Deposit(arg1, msg.sender);
}

function finalWithdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'not enough token 0'
    require ext_code.size(offeringTokenAddress)
    staticcall offeringTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'not enough token 1'
    if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(lpTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call lpTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call offeringTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call offeringTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function harvest() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.timestamp <= endTime:
        revert with 0, 'not harvest time'
    if userInfo[address(msg.sender)].field_0 <= 0:
        revert with 0, 'have you participated?'
    if userInfo[address(msg.sender)].field_256:
        revert with 0, 'nothing to harvest'
    if not sub_501edce3:
        revert with 0, 'liquidity not created'
    if totalAmount <= raisingAmount:
        if not userInfo[address(msg.sender)].field_0:
            if raisingAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require raisingAmount
            if totalAmount <= raisingAmount:
                if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / raisingAmount) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                userInfo[address(msg.sender)].field_256 = 1
                emit Harvest(0 / raisingAmount, 0, msg.sender);
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if totalAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAmount
                    if not raisingAmount:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         0 / raisingAmount,
                                         userInfo[address(msg.sender)].field_0,
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                    else:
                        require raisingAmount
                        if raisingAmount * 0 / totalAmount / 10^6 / raisingAmount != 0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if raisingAmount * 0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6) <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6), msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         0 / raisingAmount,
                                         userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6),
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                else:
                    require userInfo[address(msg.sender)].field_0
                    if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAmount
                    if not raisingAmount:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         0 / raisingAmount,
                                         userInfo[address(msg.sender)].field_0,
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                    else:
                        require raisingAmount
                        if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6), msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         0 / raisingAmount,
                                         userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6),
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
        else:
            require userInfo[address(msg.sender)].field_0
            if userInfo[address(msg.sender)].field_0 * offeringAmount / userInfo[address(msg.sender)].field_0 != offeringAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if raisingAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require raisingAmount
            if totalAmount <= raisingAmount:
                if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) >> 32
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                userInfo[address(msg.sender)].field_256 = 1
                emit Harvest(userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount, 0, msg.sender);
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if totalAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAmount
                    if not raisingAmount:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount,
                                         userInfo[address(msg.sender)].field_0,
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                    else:
                        require raisingAmount
                        if raisingAmount * 0 / totalAmount / 10^6 / raisingAmount != 0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if raisingAmount * 0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6) <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6), msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount,
                                         userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6),
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                else:
                    require userInfo[address(msg.sender)].field_0
                    if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAmount
                    if not raisingAmount:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount,
                                         userInfo[address(msg.sender)].field_0,
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                    else:
                        require raisingAmount
                        if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) <= 0:
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6), msg.sender);
                        else:
                            if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(lpTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call lpTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            userInfo[address(msg.sender)].field_256 = 1
                            emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                         userInfo[address(msg.sender)].field_0 * offeringAmount / raisingAmount,
                                         userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6),
                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
    else:
        if not userInfo[address(msg.sender)].field_0:
            if totalAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAmount
            if not offeringAmount:
                if totalAmount <= raisingAmount:
                    if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[address(msg.sender)].field_256 = 1
                    emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                 0,
                                 msg.sender,
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 0 / totalAmount / 10^6 / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
            else:
                require offeringAmount
                if offeringAmount * 0 / totalAmount / 10^6 / offeringAmount != 0 / totalAmount / 10^6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalAmount <= raisingAmount:
                    if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) >> 32
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[address(msg.sender)].field_256 = 1
                    emit Harvest(offeringAmount * 0 / totalAmount / 10^6 / 10^6, 0, msg.sender);
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 0 / totalAmount / 10^6 / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
        else:
            require userInfo[address(msg.sender)].field_0
            if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAmount
            if not offeringAmount:
                if totalAmount <= raisingAmount:
                    if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[address(msg.sender)].field_256 = 1
                    emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                 0,
                                 msg.sender,
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 0 / totalAmount / 10^6 / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
            else:
                require offeringAmount
                if offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / offeringAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalAmount <= raisingAmount:
                    if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) >> 32
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[address(msg.sender)].field_256 = 1
                    emit Harvest(offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6, 0, msg.sender);
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 0 / totalAmount / 10^6 / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if totalAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAmount
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0,
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require raisingAmount
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_code.hash(offeringTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6) <= 0:
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6), msg.sender);
                            else:
                                if ext_code.hash(lpTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(lpTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 873 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) >> 32
                                mem[ceil32(return_data.size) + 965 len 4] = 0
                                call lpTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6)) << 224, mem[ceil32(return_data.size) + 937 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 905]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 984 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                userInfo[address(msg.sender)].field_256 = 1
                                emit Harvest(address arg1, uint256 arg2, uint256 arg3):
                                             offeringAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6,
                                             userInfo[address(msg.sender)].field_0 - (raisingAmount * 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 / 10^6),
                                             mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
    stor0 = 1
}



}
