contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
uint256 stor0;
address sub_39e1be0eAddress;
uint256 rewardPerBlock;
uint256 stor3;
uint256 stor4;
mapping of struct userInfo;
array of address addressList;
uint256 startBlock;
uint256 bonusEndBlock;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function sub_39e1be0e(?) payable {
    return sub_39e1be0eAddress
}

function startBlock() payable {
    return startBlock
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return addressList[arg1]
}

function addressLength() payable {
    return addressList.length
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor3, stor4
}

function emergencyWithdraw() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    userInfo[msg.sender].field_512 = 0
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_39e1be0eAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(sub_39e1be0eAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
    call sub_39e1be0eAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, 0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeHRC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[msg.sender].field_0, msg.sender);
    stor0 = 1
}

function updatePool() payable {
    if block.number > stor3:
        require ext_code.size(sub_39e1be0eAddress)
        staticcall sub_39e1be0eAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if stor3 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - stor3:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + stor4 < stor4:
                        revert with 0, 'SafeMath: addition overflow'
                    stor4 += 0 / ext_call.return_data[0]
                else:
                    if (block.number * rewardPerBlock) - (stor3 * rewardPerBlock) / block.number - stor3 != rewardPerBlock:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * rewardPerBlock) - (stor3 * rewardPerBlock):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += 0 / ext_call.return_data[0]
                    else:
                        if (10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor3 * rewardPerBlock) != 10^12:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += (10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]
            else:
                if stor3 >= bonusEndBlock:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + stor4 < stor4:
                        revert with 0, 'SafeMath: addition overflow'
                    stor4 += 0 / ext_call.return_data[0]
                else:
                    if stor3 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - stor3:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += 0 / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock) / bonusEndBlock - stor3 != rewardPerBlock:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += 0 / ext_call.return_data[0]
                        else:
                            if (10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock) != 10^12:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += (10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]
        stor3 = block.number
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_39e1be0eAddress)
    staticcall sub_39e1be0eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= stor3:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if stor4 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != stor4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > stor4 * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (stor4 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if stor4 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != stor4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > stor4 * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (stor4 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if stor3 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - stor3:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + stor4 < stor4:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + stor4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock) - (stor3 * rewardPerBlock) / block.number - stor3 != rewardPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * rewardPerBlock) - (stor3 * rewardPerBlock):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + stor4 < stor4:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + stor4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if (10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor3 * rewardPerBlock) != 10^12:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ((10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if ((10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_256 > ((10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (((10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if stor3 >= bonusEndBlock:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + stor4:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if stor3 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - stor3:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + stor4:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock) / bonusEndBlock - stor3 != rewardPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + stor4:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if (10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock) != 10^12:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ((10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
    if ((10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if userInfo[address(arg1)].field_256 > ((10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[address(arg1)].field_512 + (((10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor4 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg1:
        revert with 0, 'amount 0'
    if arg1 > userInfo[msg.sender].field_0:
        revert with 0, 'withdraw: not enough'
    if block.number <= stor3:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_39e1be0eAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(sub_39e1be0eAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        call sub_39e1be0eAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not userInfo[msg.sender].field_0:
                if userInfo[msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 < -userInfo[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
            else:
                if stor4 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if userInfo[msg.sender].field_256 > stor4 * userInfo[msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[msg.sender].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 = userInfo[msg.sender].field_512 + (stor4 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
            if arg1 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 -= arg1
            if not userInfo[msg.sender].field_0 - arg1:
                userInfo[msg.sender].field_256 = 0
            else:
                if (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / userInfo[msg.sender].field_0 - arg1 != stor4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 31]
                userInfo[msg.sender].field_256 = (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / 10^12
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeHRC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not userInfo[msg.sender].field_0:
                if userInfo[msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 < -userInfo[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
            else:
                if stor4 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor4:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if userInfo[msg.sender].field_256 > stor4 * userInfo[msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[msg.sender].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 = userInfo[msg.sender].field_512 + (stor4 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
            if arg1 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 -= arg1
            if not userInfo[msg.sender].field_0 - arg1:
                userInfo[msg.sender].field_256 = 0
            else:
                if (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / userInfo[msg.sender].field_0 - arg1 != stor4:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 554 len 31]
                userInfo[msg.sender].field_256 = (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / 10^12
    else:
        require ext_code.size(sub_39e1be0eAddress)
        staticcall sub_39e1be0eAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            stor3 = block.number
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_39e1be0eAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_39e1be0eAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            call sub_39e1be0eAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not userInfo[msg.sender].field_0:
                    if userInfo[msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 < -userInfo[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                else:
                    if stor4 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    if userInfo[msg.sender].field_256 > stor4 * userInfo[msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 = userInfo[msg.sender].field_512 + (stor4 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                if arg1 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_0 -= arg1
                if not userInfo[msg.sender].field_0 - arg1:
                    userInfo[msg.sender].field_256 = 0
                else:
                    if (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / userInfo[msg.sender].field_0 - arg1 != stor4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 31]
                    userInfo[msg.sender].field_256 = (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / 10^12
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeHRC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if not userInfo[msg.sender].field_0:
                    if userInfo[msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 < -userInfo[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                else:
                    if stor4 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor4:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 362 len 31]
                    if userInfo[msg.sender].field_256 > stor4 * userInfo[msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 = userInfo[msg.sender].field_512 + (stor4 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                if arg1 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_0 -= arg1
                if not userInfo[msg.sender].field_0 - arg1:
                    userInfo[msg.sender].field_256 = 0
                else:
                    if (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / userInfo[msg.sender].field_0 - arg1 != stor4:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userInfo[msg.sender].field_256 = (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / 10^12
        else:
            if block.number <= bonusEndBlock:
                if stor3 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - stor3:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + stor4 < stor4:
                        revert with 0, 'SafeMath: addition overflow'
                    stor4 += 0 / ext_call.return_data[0]
                else:
                    if (block.number * rewardPerBlock) - (stor3 * rewardPerBlock) / block.number - stor3 != rewardPerBlock:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * rewardPerBlock) - (stor3 * rewardPerBlock):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += 0 / ext_call.return_data[0]
                    else:
                        if (10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor3 * rewardPerBlock) != 10^12:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += (10^12 * block.number * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]
                stor3 = block.number
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_39e1be0eAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_39e1be0eAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                call sub_39e1be0eAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeHRC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if not userInfo[msg.sender].field_0:
                    if userInfo[msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 < -userInfo[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                else:
                    if stor4 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor4:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 490 len 31]
                    if userInfo[msg.sender].field_256 > stor4 * userInfo[msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 = userInfo[msg.sender].field_512 + (stor4 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                if arg1 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_0 -= arg1
                if not userInfo[msg.sender].field_0 - arg1:
                    userInfo[msg.sender].field_256 = 0
                else:
                    if (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / userInfo[msg.sender].field_0 - arg1 != stor4:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 682 len 31]
                    userInfo[msg.sender].field_256 = (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / 10^12
            else:
                if stor3 >= bonusEndBlock:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + stor4 < stor4:
                        revert with 0, 'SafeMath: addition overflow'
                    stor4 += 0 / ext_call.return_data[0]
                    stor3 = block.number
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_39e1be0eAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(sub_39e1be0eAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_39e1be0eAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeHRC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    if not userInfo[msg.sender].field_0:
                        if userInfo[msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 < -userInfo[msg.sender].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                    else:
                        if stor4 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor4:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if userInfo[msg.sender].field_256 > stor4 * userInfo[msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_512 = userInfo[msg.sender].field_512 + (stor4 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                    if arg1 > userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[msg.sender].field_0 -= arg1
                    if not userInfo[msg.sender].field_0 - arg1:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / userInfo[msg.sender].field_0 - arg1 != stor4:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 618 len 31]
                        userInfo[msg.sender].field_256 = (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / 10^12
                else:
                    if stor3 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - stor3:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += 0 / ext_call.return_data[0]
                        stor3 = block.number
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_39e1be0eAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_39e1be0eAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[452 len 0] = 0
                    else:
                        if (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock) / bonusEndBlock - stor3 != rewardPerBlock:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += 0 / ext_call.return_data[0]
                        else:
                            if (10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / (bonusEndBlock * rewardPerBlock) - (stor3 * rewardPerBlock) != 10^12:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]) + stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += (10^12 * bonusEndBlock * rewardPerBlock) - (10^12 * stor3 * rewardPerBlock) / ext_call.return_data[0]
                        stor3 = block.number
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_39e1be0eAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_39e1be0eAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call sub_39e1be0eAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeHRC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666548524332303a204852433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if not userInfo[msg.sender].field_0:
                        if userInfo[msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 < -userInfo[msg.sender].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                    else:
                        if stor4 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor4:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if userInfo[msg.sender].field_256 > stor4 * userInfo[msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_512 = userInfo[msg.sender].field_512 + (stor4 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                    if arg1 > userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[msg.sender].field_0 -= arg1
                    if not userInfo[msg.sender].field_0 - arg1:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / userInfo[msg.sender].field_0 - arg1 != stor4:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 682 len 31]
                        userInfo[msg.sender].field_256 = (userInfo[msg.sender].field_0 * stor4) - (arg1 * stor4) / 10^12
    emit Withdraw(arg1, msg.sender);
    stor0 = 1
}



}
