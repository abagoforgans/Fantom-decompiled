contract main {




// =====================  Runtime code  =====================


#
#  - harvestRewards(address arg1)
#  - updateSRadsHolder(address arg1)
#
address owner;
address sub_51645e28Address;
uint256 sub_713cfdb4;
uint256 sub_2cbbd864;
uint256 startBlock;
mapping of struct sub_b47e26ac;
mapping of uint256 sub_6c4b95d9;
array of address sub_9c7e2655;
mapping of uint8 stor8;
mapping of uint8 stor9;
address feeManagerAddress;
mapping of struct tokenAmountPotFromMoneyPot;
mapping of uint256 sub_62bfad8e;
mapping of uint256 sub_598e88ee;
uint256 sub_c27cfbb6;

function distributedMoneyPot(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenAmountPotFromMoneyPot[address(arg1)].field_0, 
           tokenAmountPotFromMoneyPot[address(arg1)].field_256,
           tokenAmountPotFromMoneyPot[address(arg1)].field_512
}

function sub_2cbbd864(?) payable {
    return sub_2cbbd864
}

function sub_3188d757(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function getRegisteredToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9c7e2655.length
    return sub_9c7e2655[arg1]
}

function startBlock() payable {
    return startBlock
}

function sub_51645e28(?) payable {
    return sub_51645e28Address
}

function isDividendsToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function sub_598e88ee(?) payable {
    require calldata.size - 4 >= 32
    return sub_598e88ee[arg1]
}

function sub_62bfad8e(?) payable {
    require calldata.size - 4 >= 32
    return sub_62bfad8e[arg1]
}

function sub_6c4b95d9(?) payable {
    require calldata.size - 4 >= 32
    return sub_6c4b95d9[arg1]
}

function sub_713cfdb4(?) payable {
    return sub_713cfdb4
}

function owner() payable {
    return owner
}

function sub_9c7e2655(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9c7e2655.length
    return sub_9c7e2655[arg1]
}

function getRegisteredTokenLength() payable {
    return sub_9c7e2655.length
}

function getTokenAmountPotFromMoneyPot(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenAmountPotFromMoneyPot[address(arg1)].field_0
}

function sub_b47e26ac(?) payable {
    require calldata.size - 4 >= 64
    return sub_b47e26ac[arg1][arg2].field_0, sub_b47e26ac[arg1][arg2].field_256
}

function sub_c27cfbb6(?) payable {
    return sub_c27cfbb6
}

function feeManager() payable {
    return feeManagerAddress
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

function nextMoneyPotUpdateBlock() payable {
    if sub_2cbbd864 + sub_713cfdb4 < sub_2cbbd864:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_2cbbd864 + sub_713cfdb4)
}

function updateFeeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeManagerAddress = arg1
}

function updateAddressWithoutReward(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
}

function tokenPerBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_713cfdb4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_713cfdb4
    return (tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addToPendingFromReserveTokenAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > sub_598e88ee[address(arg1)]:
        revert with 0, 'Insufficient amount'
    if arg2 > sub_598e88ee[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_598e88ee[address(arg1)] -= arg2
    if sub_62bfad8e[address(arg1)] + arg2 < sub_62bfad8e[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_62bfad8e[address(arg1)] += arg2
}

function addTokenToRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor8[address(arg1)]:
        sub_9c7e2655.length++
        sub_9c7e2655[sub_9c7e2655.length] = arg1
        if sub_2cbbd864 > block.number:
            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = sub_2cbbd864
        else:
            if sub_2cbbd864 + sub_713cfdb4 < sub_2cbbd864:
                revert with 0, 'SafeMath: addition overflow'
            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = sub_2cbbd864 + sub_713cfdb4
        tokenAmountPotFromMoneyPot[address(arg1)].field_256 = 0
        tokenAmountPotFromMoneyPot[address(arg1)].field_0 = 0
        tokenAmountPotFromMoneyPot[address(arg1)].field_768 = tokenAmountPotFromMoneyPot[address(arg1)].field_512
        stor8[address(arg1)] = 1
}

function removeTokenToRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenAmountPotFromMoneyPot[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7763616e6e6f742072656d6f7665206265666f726520656e64206f6620646973747269627574696f,
                    mem[204 len 24]
    if stor8[address(arg1)]:
        idx = 0
        while idx < sub_9c7e2655.length:
            mem[0] = 7
            if sub_9c7e2655[idx] != arg1:
                idx = idx + 1
                continue 
            if idx < sub_9c7e2655.length:
                require sub_9c7e2655.length - 1 < sub_9c7e2655.length
                require idx < sub_9c7e2655.length
                sub_9c7e2655[idx] = sub_9c7e2655[sub_9c7e2655.length]
                require sub_9c7e2655.length
                sub_9c7e2655[sub_9c7e2655.length] = 0
                sub_9c7e2655.length--
            stor8[address(arg1)] = 0
        if sub_9c7e2655.length < sub_9c7e2655.length:
            require sub_9c7e2655.length - 1 < sub_9c7e2655.length
            require sub_9c7e2655.length < sub_9c7e2655.length
            sub_9c7e2655[sub_9c7e2655.length] = sub_9c7e2655[sub_9c7e2655.length]
            require sub_9c7e2655.length
            sub_9c7e2655[sub_9c7e2655.length] = 0
            sub_9c7e2655.length--
        stor8[address(arg1)] = 0
}

function depositBonusRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
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
    if sub_598e88ee[address(arg1)] + arg2 < sub_598e88ee[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_598e88ee[address(arg1)] += arg2
}

function updateCurrentMoneyPot(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number > tokenAmountPotFromMoneyPot[address(arg1)].field_512:
        if not sub_c27cfbb6:
            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
        else:
            if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if block.number < tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                if tokenAmountPotFromMoneyPot[address(arg1)].field_0 > 0:
                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                            if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if sub_c27cfbb6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_c27cfbb6
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            if sub_c27cfbb6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_c27cfbb6
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                        else:
                            require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                            if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                            else:
                                require (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
                                if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if block.number >= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4
            else:
                if tokenAmountPotFromMoneyPot[address(arg1)].field_0 <= 0:
                    tokenAmountPotFromMoneyPot[address(arg1)].field_0 = sub_62bfad8e[address(arg1)]
                    sub_62bfad8e[address(arg1)] = 0
                    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenAmountPotFromMoneyPot[address(arg1)].field_512 = tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4
                    tokenAmountPotFromMoneyPot[address(arg1)].field_768 += sub_713cfdb4
                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg1)].field_768
                    if block.number < tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 > 0:
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                                if sub_713cfdb4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_713cfdb4
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                    require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                                    if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_713cfdb4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_713cfdb4
                                if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                    if sub_c27cfbb6 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                                    if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4
                else:
                    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                            if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if sub_c27cfbb6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_c27cfbb6
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg1)].field_0 = sub_62bfad8e[address(arg1)]
                        sub_62bfad8e[address(arg1)] = 0
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_512 = tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4
                        tokenAmountPotFromMoneyPot[address(arg1)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg1)].field_768
                        if block.number < tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_0 > 0:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_c27cfbb6 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            require (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            if sub_c27cfbb6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_c27cfbb6
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                        else:
                            require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                            if (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                            else:
                                require (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
                                if (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg1)].field_0 = sub_62bfad8e[address(arg1)]
                        sub_62bfad8e[address(arg1)] = 0
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_512 = tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4
                        tokenAmountPotFromMoneyPot[address(arg1)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg1)].field_768
                        if block.number < tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_0 > 0:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if sub_c27cfbb6 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            require (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4
}

function pendingTokenRewardsAmount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_c27cfbb6:
        return 0
    if sub_713cfdb4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_713cfdb4
    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.number < tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
        if block.number <= tokenAmountPotFromMoneyPot[address(arg1)].field_512:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if not sub_c27cfbb6:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 <= 0:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((ext_call.return_data[0] * tokenAmountPotFromMoneyPot[address(arg1)].field_256 / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
            if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
                if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
        if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
        if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
            require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
            if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if sub_713cfdb4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_713cfdb4
        if block.number <= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if not sub_c27cfbb6:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if sub_62bfad8e[address(arg1)] / sub_713cfdb4 <= 0:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 >= block.number:
            if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                require sub_62bfad8e[address(arg1)] / sub_713cfdb4
                if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require sub_62bfad8e[address(arg1)] / sub_713cfdb4
        if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_768 - sub_713cfdb4:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4)
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
        revert with 0, 'SafeMath: subtraction overflow'
    if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if sub_713cfdb4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_713cfdb4
        if block.number <= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if not sub_c27cfbb6:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if sub_62bfad8e[address(arg1)] / sub_713cfdb4 <= 0:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 >= block.number:
            if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                require sub_62bfad8e[address(arg1)] / sub_713cfdb4
                if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require sub_62bfad8e[address(arg1)] / sub_713cfdb4
        if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_768 - sub_713cfdb4:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4)
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    require tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4
    if (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if sub_713cfdb4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_713cfdb4
        if block.number <= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if not sub_c27cfbb6:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if sub_62bfad8e[address(arg1)] / sub_713cfdb4 <= 0:
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 >= block.number:
            if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                require sub_62bfad8e[address(arg1)] / sub_713cfdb4
                if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require sub_62bfad8e[address(arg1)] / sub_713cfdb4
        if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_768 - sub_713cfdb4:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
            if sub_c27cfbb6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c27cfbb6
            if 2 * 0 / sub_c27cfbb6 < 0 / sub_c27cfbb6:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(sub_51645e28Address)
            staticcall sub_51645e28Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
            require ext_call.return_data[0]
            if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (2 * 0 / sub_c27cfbb6):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4)
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + (0 / sub_c27cfbb6) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    require (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
    if (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if sub_c27cfbb6 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_c27cfbb6
    if tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if sub_713cfdb4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_713cfdb4
    if block.number <= tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4:
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    if not sub_c27cfbb6:
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    if sub_62bfad8e[address(arg1)] / sub_713cfdb4 <= 0:
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 >= block.number:
        if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            require sub_62bfad8e[address(arg1)] / sub_713cfdb4
            if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if 0 / sub_c27cfbb6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + (0 / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    if tokenAmountPotFromMoneyPot[address(arg1)].field_768 + sub_713cfdb4 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if 0 / sub_c27cfbb6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + (0 / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    require sub_62bfad8e[address(arg1)] / sub_713cfdb4
    if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_768 - sub_713cfdb4:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
        if sub_c27cfbb6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_c27cfbb6
        if 0 / sub_c27cfbb6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_51645e28Address)
        staticcall sub_51645e28Address.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
        require ext_call.return_data[0]
        if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + (0 / sub_c27cfbb6):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    require (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4)
    if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if sub_c27cfbb6 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_c27cfbb6
    if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(sub_51645e28Address)
    staticcall sub_51645e28Address.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        return (-sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
    require ext_call.return_data[0]
    if (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) + ((10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0 + sub_b47e26ac[address(arg1)][address(arg2)].field_256)
}

function massUpdateMoneyPot() payable {
    mem[64] = 96
    idx = 0
    while idx < sub_9c7e2655.length:
        mem[0] = sub_9c7e2655[idx]
        mem[32] = 11
        if block.number > tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
            if not sub_c27cfbb6:
                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
            else:
                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                            _855 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_855] = 26
                            mem[_855 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _860 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_860 + idx + 68] = mem[_855 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_860 + 68] = mem[_860 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _860 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _915 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_915] = 26
                                mem[_915 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _924 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_924 + idx + 68] = mem[_915 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_924 + 68] = mem[_924 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _924 + -mem[64] + 100
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _923 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_923] = 26
                                mem[_923 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _935 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_935 + idx + 68] = mem[_923 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_935 + 68] = mem[_935 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _935 + -mem[64] + 100
                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                            require sub_c27cfbb6
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                        else:
                            _851 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_851] = 30
                            mem[_851 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                _852 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_852 + idx + 68] = mem[_851 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_852 + 68] = mem[_852 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _852 + -mem[64] + 100
                            _871 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_871] = 26
                            mem[_871 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _881 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_881 + idx + 68] = mem[_871 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_881 + 68] = mem[_881 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _881 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _940 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_940] = 26
                                mem[_940 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _955 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_955 + idx + 68] = mem[_940 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_955 + 68] = mem[_955 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _955 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _954 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_954] = 26
                                    mem[_954 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _976 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_976 + idx + 68] = mem[_954 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_976 + 68] = mem[_976 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _976 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _975 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_975] = 26
                                    mem[_975 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _997 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_997 + idx + 68] = mem[_975 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_997 + 68] = mem[_997 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _997 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                else:
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 <= 0:
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                        mem[0] = sub_9c7e2655[idx]
                        mem[32] = 12
                        sub_62bfad8e[stor7[idx]] = 0
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                    _905 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_905] = 26
                                    mem[_905 + 32] = 'SafeMath: division by zero'
                                    if sub_713cfdb4 <= 0:
                                        _917 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_917 + idx + 68] = mem[_905 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_917 + 68] = mem[_917 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _917 + -mem[64] + 100
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1011 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1011] = 26
                                        mem[_1011 + 32] = 'SafeMath: division by zero'
                                        if sub_c27cfbb6 <= 0:
                                            _1032 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1032 + idx + 68] = mem[_1011 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1032 + 68] = mem[_1032 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1032 + -mem[64] + 100
                                    else:
                                        require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                        if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1031 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1031] = 26
                                        mem[_1031 + 32] = 'SafeMath: division by zero'
                                        if sub_c27cfbb6 <= 0:
                                            _1055 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1055 + idx + 68] = mem[_1031 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1055 + 68] = mem[_1055 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1055 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    _897 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_897] = 30
                                    mem[_897 + 32] = 'SafeMath: subtraction overflow'
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                        _902 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_902 + idx + 68] = mem[_897 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_902 + 68] = mem[_902 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _902 + -mem[64] + 100
                                    _929 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_929] = 26
                                    mem[_929 + 32] = 'SafeMath: division by zero'
                                    if sub_713cfdb4 <= 0:
                                        _943 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_943 + idx + 68] = mem[_929 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_943 + 68] = mem[_943 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _943 + -mem[64] + 100
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1065 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1065] = 26
                                        mem[_1065 + 32] = 'SafeMath: division by zero'
                                        if sub_c27cfbb6 <= 0:
                                            _1082 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1082 + idx + 68] = mem[_1065 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1082 + 68] = mem[_1082 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1082 + -mem[64] + 100
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                        if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                            _1081 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1081] = 26
                                            mem[_1081 + 32] = 'SafeMath: division by zero'
                                            if sub_c27cfbb6 <= 0:
                                                _1101 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1101 + idx + 68] = mem[_1081 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1101 + 68] = mem[_1101 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1101 + -mem[64] + 100
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1100 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1100] = 26
                                            mem[_1100 + 32] = 'SafeMath: division by zero'
                                            if sub_c27cfbb6 <= 0:
                                                _1115 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1115 + idx + 68] = mem[_1100 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1115 + 68] = mem[_1115 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1115 + -mem[64] + 100
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                    else:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                            _868 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_868] = 26
                            mem[_868 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _875 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_875 + idx + 68] = mem[_868 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_875 + 68] = mem[_875 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _875 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _934 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_934] = 26
                                mem[_934 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _947 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_947 + idx + 68] = mem[_934 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_947 + 68] = mem[_947 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _947 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                sub_62bfad8e[stor7[idx]] = 0
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1156 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1156] = 26
                                            mem[_1156 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1168 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1168 + idx + 68] = mem[_1156 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1168 + 68] = mem[_1168 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1168 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1290 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1290] = 26
                                                mem[_1290 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1305 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1305 + idx + 68] = mem[_1290 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1305 + 68] = mem[_1305 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1305 + -mem[64] + 100
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1304 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1304] = 26
                                                mem[_1304 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1318 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1318 + idx + 68] = mem[_1304 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1318 + 68] = mem[_1318 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1318 + -mem[64] + 100
                                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1143 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1143] = 30
                                            mem[_1143 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                _1153 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1153 + idx + 68] = mem[_1143 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1153 + 68] = mem[_1153 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1153 + -mem[64] + 100
                                            _1197 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1197] = 26
                                            mem[_1197 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1221 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1221 + idx + 68] = mem[_1197 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1221 + 68] = mem[_1221 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1221 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1327 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1327] = 26
                                                mem[_1327 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1350 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1350 + idx + 68] = mem[_1327 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1350 + 68] = mem[_1350 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1350 + -mem[64] + 100
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1349 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1349] = 26
                                                    mem[_1349 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1382 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1382 + idx + 68] = mem[_1349 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1382 + 68] = mem[_1382 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1382 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1381 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1381] = 26
                                                    mem[_1381 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1413 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1413 + idx + 68] = mem[_1381 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1413 + 68] = mem[_1413 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1413 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _946 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_946] = 26
                                mem[_946 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _965 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_965 + idx + 68] = mem[_946 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_965 + 68] = mem[_965 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _965 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                sub_62bfad8e[stor7[idx]] = 0
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1166 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1166] = 26
                                            mem[_1166 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1183 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1183 + idx + 68] = mem[_1166 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1183 + 68] = mem[_1183 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1183 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1303 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1303] = 26
                                                mem[_1303 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1315 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1315 + idx + 68] = mem[_1303 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1315 + 68] = mem[_1315 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1315 + -mem[64] + 100
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1314 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1314] = 26
                                                mem[_1314 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1331 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1331 + idx + 68] = mem[_1314 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1331 + 68] = mem[_1331 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1331 + -mem[64] + 100
                                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1152 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1152] = 30
                                            mem[_1152 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                _1163 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1163 + idx + 68] = mem[_1152 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1163 + 68] = mem[_1163 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1163 + -mem[64] + 100
                                            _1218 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1218] = 26
                                            mem[_1218 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1239 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1239 + idx + 68] = mem[_1218 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1239 + 68] = mem[_1239 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1239 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1346 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1346] = 26
                                                mem[_1346 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1374 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1374 + idx + 68] = mem[_1346 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1374 + 68] = mem[_1374 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1374 + -mem[64] + 100
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1373 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1373] = 26
                                                    mem[_1373 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1407 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1407 + idx + 68] = mem[_1373 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1407 + 68] = mem[_1407 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1407 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1406 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1406] = 26
                                                    mem[_1406 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1446 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1446 + idx + 68] = mem[_1406 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1446 + 68] = mem[_1446 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1446 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                        else:
                            _858 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_858] = 30
                            mem[_858 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                _865 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_865 + idx + 68] = mem[_858 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_865 + 68] = mem[_865 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _865 + -mem[64] + 100
                            _886 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_886] = 26
                            mem[_886 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _898 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_898 + idx + 68] = mem[_886 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_898 + 68] = mem[_898 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _898 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _972 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_972] = 26
                                mem[_972 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _990 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_990 + idx + 68] = mem[_972 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_990 + 68] = mem[_990 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _990 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                sub_62bfad8e[stor7[idx]] = 0
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1194 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1194] = 26
                                            mem[_1194 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1215 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1215 + idx + 68] = mem[_1194 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1215 + 68] = mem[_1215 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1215 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1326 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1326] = 26
                                                mem[_1326 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1343 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1343 + idx + 68] = mem[_1326 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1343 + 68] = mem[_1343 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1343 + -mem[64] + 100
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1342 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1342] = 26
                                                mem[_1342 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1369 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1369 + idx + 68] = mem[_1342 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1369 + 68] = mem[_1369 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1369 + -mem[64] + 100
                                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1175 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1175] = 30
                                            mem[_1175 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                _1191 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1191 + idx + 68] = mem[_1175 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1191 + 68] = mem[_1191 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1191 + -mem[64] + 100
                                            _1249 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1249] = 26
                                            mem[_1249 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1270 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1270 + idx + 68] = mem[_1249 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1270 + 68] = mem[_1270 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1270 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1388 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1388] = 26
                                                mem[_1388 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1424 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1424 + idx + 68] = mem[_1388 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1424 + 68] = mem[_1424 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1424 + -mem[64] + 100
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1423 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1423] = 26
                                                    mem[_1423 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1469 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1469 + idx + 68] = mem[_1423 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1469 + 68] = mem[_1469 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1469 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1468 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1468] = 26
                                                    mem[_1468 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1512 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1512 + idx + 68] = mem[_1468 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1512 + 68] = mem[_1512 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1512 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _989 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_989] = 26
                                    mem[_989 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _1013 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1013 + idx + 68] = mem[_989 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1013 + 68] = mem[_1013 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1013 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1213 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1213] = 26
                                                mem[_1213 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1234 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1234 + idx + 68] = mem[_1213 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1234 + 68] = mem[_1234 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1234 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1341 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1341] = 26
                                                    mem[_1341 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1366 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1366 + idx + 68] = mem[_1341 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1366 + 68] = mem[_1366 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1366 + -mem[64] + 100
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1365 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1365] = 26
                                                    mem[_1365 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1398 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1398 + idx + 68] = mem[_1365 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1398 + 68] = mem[_1398 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1398 + -mem[64] + 100
                                                ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1190 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1190] = 30
                                                mem[_1190 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    _1210 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1210 + idx + 68] = mem[_1190 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1210 + 68] = mem[_1210 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1210 + -mem[64] + 100
                                                _1267 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1267] = 26
                                                mem[_1267 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1282 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1282 + idx + 68] = mem[_1267 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1282 + 68] = mem[_1282 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1282 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1420 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1420] = 26
                                                    mem[_1420 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1461 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1461 + idx + 68] = mem[_1420 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1461 + 68] = mem[_1461 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1461 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1460 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1460] = 26
                                                        mem[_1460 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1506 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1506 + idx + 68] = mem[_1460 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1506 + 68] = mem[_1506 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1506 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1505 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1505] = 26
                                                        mem[_1505 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1546 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1546 + idx + 68] = mem[_1505 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1546 + 68] = mem[_1546 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1546 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                else:
                                    require (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                    if (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1012 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1012] = 26
                                    mem[_1012 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _1035 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1035 + idx + 68] = mem[_1012 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1035 + 68] = mem[_1035 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1035 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1232 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1232] = 26
                                                mem[_1232 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1255 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1255 + idx + 68] = mem[_1232 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1255 + 68] = mem[_1255 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1255 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1364 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1364] = 26
                                                    mem[_1364 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1395 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1395 + idx + 68] = mem[_1364 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1395 + 68] = mem[_1395 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1395 + -mem[64] + 100
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1394 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1394] = 26
                                                    mem[_1394 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1437 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1437 + idx + 68] = mem[_1394 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1437 + 68] = mem[_1437 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1437 + -mem[64] + 100
                                                ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1209 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1209] = 30
                                                mem[_1209 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    _1229 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1229 + idx + 68] = mem[_1209 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1229 + 68] = mem[_1229 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1229 + -mem[64] + 100
                                                _1279 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1279] = 26
                                                mem[_1279 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1294 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1294 + idx + 68] = mem[_1279 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1294 + 68] = mem[_1294 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1294 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1457 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1457] = 26
                                                    mem[_1457 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1498 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1498 + idx + 68] = mem[_1457 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1498 + 68] = mem[_1498 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1498 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1497 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1497] = 26
                                                        mem[_1497 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1540 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1540 + idx + 68] = mem[_1497 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1540 + 68] = mem[_1540 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1540 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1539 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1539] = 26
                                                        mem[_1539 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1575 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1575 + idx + 68] = mem[_1539 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1575 + 68] = mem[_1575 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1575 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
        idx = idx + 1
        continue 
}

function depositRewards(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require msg.sender == feeManagerAddress
    idx = 0
    while idx < sub_9c7e2655.length:
        mem[0] = sub_9c7e2655[idx]
        mem[32] = 11
        if block.number > tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
            if not sub_c27cfbb6:
                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
            else:
                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                            _945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_945] = 26
                            mem[_945 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _960 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_960 + idx + 68] = mem[_945 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_960 + 68] = mem[_960 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _960 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1065 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1065] = 26
                                mem[_1065 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _1074 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1074 + idx + 68] = mem[_1065 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1074 + 68] = mem[_1074 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1074 + -mem[64] + 100
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1073 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1073] = 26
                                mem[_1073 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _1085 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1085 + idx + 68] = mem[_1073 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1085 + 68] = mem[_1085 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1085 + -mem[64] + 100
                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                            require sub_c27cfbb6
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                        else:
                            _940 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_940] = 30
                            mem[_940 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                _942 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_942 + idx + 68] = mem[_940 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_942 + 68] = mem[_942 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _942 + -mem[64] + 100
                            _981 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_981] = 26
                            mem[_981 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _999 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_999 + idx + 68] = mem[_981 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_999 + 68] = mem[_999 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _999 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1090 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1090] = 26
                                mem[_1090 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _1105 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1105 + idx + 68] = mem[_1090 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1105 + 68] = mem[_1105 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1105 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _1104 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1104] = 26
                                    mem[_1104 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _1126 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1126 + idx + 68] = mem[_1104 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1126 + 68] = mem[_1126 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1126 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1125 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1125] = 26
                                    mem[_1125 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _1147 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1147 + idx + 68] = mem[_1125 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1147 + 68] = mem[_1147 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1147 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                else:
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 <= 0:
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                        mem[0] = sub_9c7e2655[idx]
                        mem[32] = 12
                        sub_62bfad8e[stor7[idx]] = 0
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                    _1043 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1043] = 26
                                    mem[_1043 + 32] = 'SafeMath: division by zero'
                                    if sub_713cfdb4 <= 0:
                                        _1067 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1067 + idx + 68] = mem[_1043 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1067 + 68] = mem[_1067 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1067 + -mem[64] + 100
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1161 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1161] = 26
                                        mem[_1161 + 32] = 'SafeMath: division by zero'
                                        if sub_c27cfbb6 <= 0:
                                            _1182 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1182 + idx + 68] = mem[_1161 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1182 + 68] = mem[_1182 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1182 + -mem[64] + 100
                                    else:
                                        require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                        if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1181 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1181] = 26
                                        mem[_1181 + 32] = 'SafeMath: division by zero'
                                        if sub_c27cfbb6 <= 0:
                                            _1205 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1205 + idx + 68] = mem[_1181 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1205 + 68] = mem[_1205 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1205 + -mem[64] + 100
                                    ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    _1027 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1027] = 30
                                    mem[_1027 + 32] = 'SafeMath: subtraction overflow'
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                        _1040 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1040 + idx + 68] = mem[_1027 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1040 + 68] = mem[_1040 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1040 + -mem[64] + 100
                                    _1079 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1079] = 26
                                    mem[_1079 + 32] = 'SafeMath: division by zero'
                                    if sub_713cfdb4 <= 0:
                                        _1093 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1093 + idx + 68] = mem[_1079 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1093 + 68] = mem[_1093 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1093 + -mem[64] + 100
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1215 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1215] = 26
                                        mem[_1215 + 32] = 'SafeMath: division by zero'
                                        if sub_c27cfbb6 <= 0:
                                            _1232 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_1232 + idx + 68] = mem[_1215 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1232 + 68] = mem[_1232 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1232 + -mem[64] + 100
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                        if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                            _1231 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1231] = 26
                                            mem[_1231 + 32] = 'SafeMath: division by zero'
                                            if sub_c27cfbb6 <= 0:
                                                _1251 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1251 + idx + 68] = mem[_1231 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1251 + 68] = mem[_1251 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1251 + -mem[64] + 100
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1250 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1250] = 26
                                            mem[_1250 + 32] = 'SafeMath: division by zero'
                                            if sub_c27cfbb6 <= 0:
                                                _1265 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1265 + idx + 68] = mem[_1250 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1265 + 68] = mem[_1265 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1265 + -mem[64] + 100
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                    else:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                            _968 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_968] = 26
                            mem[_968 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _985 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_985 + idx + 68] = mem[_968 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_985 + 68] = mem[_985 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _985 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1084 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1084] = 26
                                mem[_1084 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _1097 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1097 + idx + 68] = mem[_1084 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1097 + 68] = mem[_1097 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1097 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                sub_62bfad8e[stor7[idx]] = 0
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1306 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1306] = 26
                                            mem[_1306 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1318 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1318 + idx + 68] = mem[_1306 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1318 + 68] = mem[_1318 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1318 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1440 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1440] = 26
                                                mem[_1440 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1455 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1455 + idx + 68] = mem[_1440 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1455 + 68] = mem[_1455 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1455 + -mem[64] + 100
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1454 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1454] = 26
                                                mem[_1454 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1468 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1468 + idx + 68] = mem[_1454 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1468 + 68] = mem[_1468 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1468 + -mem[64] + 100
                                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1293 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1293] = 30
                                            mem[_1293 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                _1303 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1303 + idx + 68] = mem[_1293 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1303 + 68] = mem[_1303 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1303 + -mem[64] + 100
                                            _1347 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1347] = 26
                                            mem[_1347 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1371 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1371 + idx + 68] = mem[_1347 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1371 + 68] = mem[_1371 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1371 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1477 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1477] = 26
                                                mem[_1477 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1500 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1500 + idx + 68] = mem[_1477 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1500 + 68] = mem[_1500 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1500 + -mem[64] + 100
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1499 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1499] = 26
                                                    mem[_1499 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1532 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1532 + idx + 68] = mem[_1499 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1532 + 68] = mem[_1532 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1532 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1531 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1531] = 26
                                                    mem[_1531 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1563 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1563 + idx + 68] = mem[_1531 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1563 + 68] = mem[_1563 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1563 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1096 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1096] = 26
                                mem[_1096 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _1115 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1115 + idx + 68] = mem[_1096 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1115 + 68] = mem[_1115 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1115 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                sub_62bfad8e[stor7[idx]] = 0
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1316 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1316] = 26
                                            mem[_1316 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1333 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1333 + idx + 68] = mem[_1316 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1333 + 68] = mem[_1333 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1333 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1453 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1453] = 26
                                                mem[_1453 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1465 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1465 + idx + 68] = mem[_1453 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1465 + 68] = mem[_1465 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1465 + -mem[64] + 100
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1464 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1464] = 26
                                                mem[_1464 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1481 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1481 + idx + 68] = mem[_1464 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1481 + 68] = mem[_1481 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1481 + -mem[64] + 100
                                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1302 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1302] = 30
                                            mem[_1302 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                _1313 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1313 + idx + 68] = mem[_1302 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1313 + 68] = mem[_1313 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1313 + -mem[64] + 100
                                            _1368 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1368] = 26
                                            mem[_1368 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1389 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1389 + idx + 68] = mem[_1368 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1389 + 68] = mem[_1389 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1389 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1496 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1496] = 26
                                                mem[_1496 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1524 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1524 + idx + 68] = mem[_1496 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1524 + 68] = mem[_1524 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1524 + -mem[64] + 100
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1523 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1523] = 26
                                                    mem[_1523 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1557 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1557 + idx + 68] = mem[_1523 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1557 + 68] = mem[_1557 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1557 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1556 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1556] = 26
                                                    mem[_1556 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1596 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1596 + idx + 68] = mem[_1556 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1596 + 68] = mem[_1596 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1596 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                        else:
                            _950 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_950] = 30
                            mem[_950 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                _965 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_965 + idx + 68] = mem[_950 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_965 + 68] = mem[_965 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _965 + -mem[64] + 100
                            _1008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1008] = 26
                            mem[_1008 + 32] = 'SafeMath: division by zero'
                            if sub_713cfdb4 <= 0:
                                _1028 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1028 + idx + 68] = mem[_1008 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1028 + 68] = mem[_1028 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1028 + -mem[64] + 100
                            require sub_713cfdb4
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1122 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1122] = 26
                                mem[_1122 + 32] = 'SafeMath: division by zero'
                                if sub_c27cfbb6 <= 0:
                                    _1140 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1140 + idx + 68] = mem[_1122 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1140 + 68] = mem[_1140 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1140 + -mem[64] + 100
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                sub_62bfad8e[stor7[idx]] = 0
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1344 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1344] = 26
                                            mem[_1344 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1365 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1365 + idx + 68] = mem[_1344 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1365 + 68] = mem[_1365 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1365 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1476 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1476] = 26
                                                mem[_1476 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1493 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1493 + idx + 68] = mem[_1476 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1493 + 68] = mem[_1493 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1493 + -mem[64] + 100
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1492 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1492] = 26
                                                mem[_1492 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1519 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1519 + idx + 68] = mem[_1492 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1519 + 68] = mem[_1519 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1519 + -mem[64] + 100
                                            ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1325 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1325] = 30
                                            mem[_1325 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                _1341 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_1341 + idx + 68] = mem[_1325 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1341 + 68] = mem[_1341 + 70 len 30]
                                                revert with memory
                                                  from mem[64]
                                                   len _1341 + -mem[64] + 100
                                            _1399 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1399] = 26
                                            mem[_1399 + 32] = 'SafeMath: division by zero'
                                            if sub_713cfdb4 <= 0:
                                                _1420 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_1420 + idx + 68] = mem[_1399 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1420 + 68] = mem[_1420 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1420 + -mem[64] + 100
                                            require sub_713cfdb4
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1538 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1538] = 26
                                                mem[_1538 + 32] = 'SafeMath: division by zero'
                                                if sub_c27cfbb6 <= 0:
                                                    _1574 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1574 + idx + 68] = mem[_1538 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1574 + 68] = mem[_1574 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1574 + -mem[64] + 100
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1573 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1573] = 26
                                                    mem[_1573 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1619 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1619 + idx + 68] = mem[_1573 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1619 + 68] = mem[_1619 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1619 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1618 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1618] = 26
                                                    mem[_1618 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1662 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1662 + idx + 68] = mem[_1618 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1662 + 68] = mem[_1662 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1662 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                            else:
                                require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                if (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _1139 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1139] = 26
                                    mem[_1139 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _1163 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1163 + idx + 68] = mem[_1139 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1163 + 68] = mem[_1163 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1163 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1363 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1363] = 26
                                                mem[_1363 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1384 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1384 + idx + 68] = mem[_1363 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1384 + 68] = mem[_1384 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1384 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1491 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1491] = 26
                                                    mem[_1491 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1516 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1516 + idx + 68] = mem[_1491 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1516 + 68] = mem[_1516 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1516 + -mem[64] + 100
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1515 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1515] = 26
                                                    mem[_1515 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1548 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1548 + idx + 68] = mem[_1515 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1548 + 68] = mem[_1548 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1548 + -mem[64] + 100
                                                ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1340 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1340] = 30
                                                mem[_1340 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    _1360 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1360 + idx + 68] = mem[_1340 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1360 + 68] = mem[_1360 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1360 + -mem[64] + 100
                                                _1417 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1417] = 26
                                                mem[_1417 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1432 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1432 + idx + 68] = mem[_1417 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1432 + 68] = mem[_1432 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1432 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1570 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1570] = 26
                                                    mem[_1570 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1611 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1611 + idx + 68] = mem[_1570 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1611 + 68] = mem[_1611 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1611 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1610 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1610] = 26
                                                        mem[_1610 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1656 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1656 + idx + 68] = mem[_1610 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1656 + 68] = mem[_1656 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1656 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1655 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1655] = 26
                                                        mem[_1655 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1696 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1696 + idx + 68] = mem[_1655 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1696 + 68] = mem[_1696 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1696 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                else:
                                    require (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                    if (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1162 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1162] = 26
                                    mem[_1162 + 32] = 'SafeMath: division by zero'
                                    if sub_c27cfbb6 <= 0:
                                        _1185 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_1185 + idx + 68] = mem[_1162 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1185 + 68] = mem[_1185 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1185 + -mem[64] + 100
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if block.number < tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0 > 0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1382 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1382] = 26
                                                mem[_1382 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1405 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1405 + idx + 68] = mem[_1382 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1405 + 68] = mem[_1405 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1405 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1514 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1514] = 26
                                                    mem[_1514 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1545 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1545 + idx + 68] = mem[_1514 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1545 + 68] = mem[_1545 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1545 + -mem[64] + 100
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1544 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1544] = 26
                                                    mem[_1544 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1587 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1587 + idx + 68] = mem[_1544 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1587 + 68] = mem[_1587 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1587 + -mem[64] + 100
                                                ('gt', ('stor', ('name', 'sub_c27cfbb6', 14)), 0)
                                                require sub_c27cfbb6
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1359 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1359] = 30
                                                mem[_1359 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    _1379 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_1379 + idx + 68] = mem[_1359 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1379 + 68] = mem[_1379 + 70 len 30]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1379 + -mem[64] + 100
                                                _1429 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1429] = 26
                                                mem[_1429 + 32] = 'SafeMath: division by zero'
                                                if sub_713cfdb4 <= 0:
                                                    _1444 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_1444 + idx + 68] = mem[_1429 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1444 + 68] = mem[_1444 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1444 + -mem[64] + 100
                                                require sub_713cfdb4
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1607 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1607] = 26
                                                    mem[_1607 + 32] = 'SafeMath: division by zero'
                                                    if sub_c27cfbb6 <= 0:
                                                        _1648 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_1648 + idx + 68] = mem[_1607 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1648 + 68] = mem[_1648 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1648 + -mem[64] + 100
                                                    require sub_c27cfbb6
                                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    require tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1647 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1647] = 26
                                                        mem[_1647 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1690 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1690 + idx + 68] = mem[_1647 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1690 + 68] = mem[_1690 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1690 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        require (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4)
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1689 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1689] = 26
                                                        mem[_1689 + 32] = 'SafeMath: division by zero'
                                                        if sub_c27cfbb6 <= 0:
                                                            _1725 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[_1725 + idx + 68] = mem[_1689 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1725 + 68] = mem[_1725 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1725 + -mem[64] + 100
                                                        require sub_c27cfbb6
                                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = tokenAmountPotFromMoneyPot[stor7[idx]].field_768 + sub_713cfdb4
        idx = idx + 1
        continue 
    _915 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = arg2
    _916 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_915 + 132] = 32
    mem[_915 + 164] = 'SafeBEP20: low-level call failed'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    _927 = mem[_916]
    mem[_915 + 196 len floor32(mem[_916])] = mem[_916 + 32 len floor32(mem[_916])]
    mem[_915 + floor32(mem[_916]) + -(mem[_916] % 32) + 228 len mem[_916] % 32] = mem[_916 + -(mem[_916] % 32) + floor32(mem[_916]) + 64 len mem[_916] % 32]
    call arg1.mem[_915 + 196 len 4] with:
         gas gas_remaining wei
        args mem[_915 + 200 len _927 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeBEP20: low-level call failed'
        if mem[96] > 0:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_915 + 306 len 22]
    else:
        mem[_915 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[_915 + 228]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_915 + ceil32(return_data.size) + 307 len 22]
    if block.number >= startBlock:
        if sub_62bfad8e[address(arg1)] + arg2 < sub_62bfad8e[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_62bfad8e[address(arg1)] += arg2
    else:
        if sub_598e88ee[address(arg1)] + arg2 < sub_598e88ee[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_598e88ee[address(arg1)] += arg2
}

function harvestReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.number <= tokenAmountPotFromMoneyPot[address(arg2)].field_512:
        if sub_6c4b95d9[address(arg1)] <= 0:
            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                else:
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'safeTransfer: Transfer failed'
                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
            if not sub_6c4b95d9[address(arg1)]:
                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
            else:
                require sub_6c4b95d9[address(arg1)]
                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
        else:
            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                    else:
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'safeTransfer: Transfer failed'
                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                if not sub_6c4b95d9[address(arg1)]:
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                else:
                    require sub_6c4b95d9[address(arg1)]
                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
            else:
                if not sub_6c4b95d9[address(arg1)]:
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                        if not stor9[address(arg1)]:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                        else:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                            else:
                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                else:
                    require sub_6c4b95d9[address(arg1)]
                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                        if not stor9[address(arg1)]:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                        else:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                            else:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                    else:
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'safeTransfer: Transfer failed'
                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                if not sub_6c4b95d9[address(arg1)]:
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                else:
                    require sub_6c4b95d9[address(arg1)]
                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
    else:
        if not sub_c27cfbb6:
            tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
            if sub_6c4b95d9[address(arg1)] <= 0:
                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                    else:
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'safeTransfer: Transfer failed'
                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                if not sub_6c4b95d9[address(arg1)]:
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                else:
                    require sub_6c4b95d9[address(arg1)]
                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
            else:
                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                        else:
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'safeTransfer: Transfer failed'
                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                    if not sub_6c4b95d9[address(arg1)]:
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                    else:
                        require sub_6c4b95d9[address(arg1)]
                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                else:
                    if not sub_6c4b95d9[address(arg1)]:
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                            if not stor9[address(arg1)]:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                            else:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                else:
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                    else:
                        require sub_6c4b95d9[address(arg1)]
                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                            if not stor9[address(arg1)]:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                            else:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                else:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                        else:
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'safeTransfer: Transfer failed'
                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                    if not sub_6c4b95d9[address(arg1)]:
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                    else:
                        require sub_6c4b95d9[address(arg1)]
                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
        else:
            if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if block.number < tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                if tokenAmountPotFromMoneyPot[address(arg2)].field_0 <= 0:
                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                    if sub_6c4b95d9[address(arg1)] <= 0:
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                            require ext_code.size(arg2)
                            staticcall arg2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg2)
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                call arg2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                            else:
                                call arg2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'safeTransfer: Transfer failed'
                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                        if not sub_6c4b95d9[address(arg1)]:
                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                        else:
                            require sub_6c4b95d9[address(arg1)]
                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                require ext_code.size(arg2)
                                staticcall arg2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg2)
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'safeTransfer: Transfer failed'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                require sub_6c4b95d9[address(arg1)]
                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                        else:
                            if not sub_6c4b95d9[address(arg1)]:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                    if not stor9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                    else:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                            else:
                                require sub_6c4b95d9[address(arg1)]
                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                    if not stor9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                    else:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                require ext_code.size(arg2)
                                staticcall arg2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg2)
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'safeTransfer: Transfer failed'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                require sub_6c4b95d9[address(arg1)]
                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                else:
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                            if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if sub_c27cfbb6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_c27cfbb6
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                        if sub_6c4b95d9[address(arg1)] <= 0:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                require ext_code.size(arg2)
                                staticcall arg2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg2)
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'safeTransfer: Transfer failed'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                require sub_6c4b95d9[address(arg1)]
                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        if not stor9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        if not stor9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            if sub_c27cfbb6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_c27cfbb6
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        else:
                            require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                            if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                            else:
                                require (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4)
                                if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                        if sub_6c4b95d9[address(arg1)] <= 0:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                require ext_code.size(arg2)
                                staticcall arg2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg2)
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'safeTransfer: Transfer failed'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                require sub_6c4b95d9[address(arg1)]
                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        if not stor9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        if not stor9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
            else:
                if tokenAmountPotFromMoneyPot[address(arg2)].field_0 <= 0:
                    tokenAmountPotFromMoneyPot[address(arg2)].field_0 = sub_62bfad8e[address(arg2)]
                    sub_62bfad8e[address(arg2)] = 0
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                    tokenAmountPotFromMoneyPot[address(arg2)].field_768 += sub_713cfdb4
                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768
                    if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                        if sub_6c4b95d9[address(arg1)] <= 0:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                require ext_code.size(arg2)
                                staticcall arg2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg2)
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    call arg2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'safeTransfer: Transfer failed'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                require sub_6c4b95d9[address(arg1)]
                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        if not stor9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        if not stor9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_0 <= 0:
                            tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                            if sub_6c4b95d9[address(arg1)] <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            if not stor9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            if not stor9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                                if sub_713cfdb4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_713cfdb4
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                    require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                                    if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                if sub_6c4b95d9[address(arg1)] <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_713cfdb4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_713cfdb4
                                if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                    if sub_c27cfbb6 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                                    if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4)
                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                if sub_6c4b95d9[address(arg1)] <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                else:
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                            if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if sub_c27cfbb6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_c27cfbb6
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_0 = sub_62bfad8e[address(arg2)]
                        sub_62bfad8e[address(arg2)] = 0
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                        tokenAmountPotFromMoneyPot[address(arg2)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                            if sub_6c4b95d9[address(arg1)] <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            if not stor9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            if not stor9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_0 <= 0:
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                if sub_6c4b95d9[address(arg1)] <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_c27cfbb6 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                    if sub_6c4b95d9[address(arg1)] <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            require (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4)
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                    if sub_6c4b95d9[address(arg1)] <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_713cfdb4 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_713cfdb4
                        if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            if sub_c27cfbb6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_c27cfbb6
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        else:
                            require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                            else:
                                require (tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4)
                                if (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if sub_c27cfbb6 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_c27cfbb6
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + ((10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_0 = sub_62bfad8e[address(arg2)]
                        sub_62bfad8e[address(arg2)] = 0
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                        tokenAmountPotFromMoneyPot[address(arg2)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                            if sub_6c4b95d9[address(arg1)] <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg2)
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        call arg2.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'safeTransfer: Transfer failed'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    require sub_6c4b95d9[address(arg1)]
                                    if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            if not stor9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            if not stor9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_0 <= 0:
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                if sub_6c4b95d9[address(arg1)] <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg2)
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            call arg2.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'safeTransfer: Transfer failed'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        require sub_6c4b95d9[address(arg1)]
                                        if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                if not stor9[address(arg1)]:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if sub_c27cfbb6 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_c27cfbb6
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                    if sub_6c4b95d9[address(arg1)] <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_713cfdb4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_713cfdb4
                                    if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        if sub_c27cfbb6 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_c27cfbb6
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        require tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + (0 / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            require (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4)
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if sub_c27cfbb6 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_c27cfbb6
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 + ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = tokenAmountPotFromMoneyPot[address(arg2)].field_768 + sub_713cfdb4
                                    if sub_6c4b95d9[address(arg1)] <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                            require ext_code.size(arg2)
                                            staticcall arg2.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg2)
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                call arg2.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'safeTransfer: Transfer failed'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            require sub_6c4b95d9[address(arg1)]
                                            if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    if not stor9[address(arg1)]:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= 0:
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_598e88ee[address(arg2)] + (sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 > 0:
                                                require ext_code.size(arg2)
                                                staticcall arg2.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(arg2)
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 <= ext_call.return_data[0]:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    call arg2.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'safeTransfer: Transfer failed'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                require sub_6c4b95d9[address(arg1)]
                                                if sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = sub_6c4b95d9[address(arg1)] * tokenAmountPotFromMoneyPot[address(arg2)].field_256 / 10^12
}



}
