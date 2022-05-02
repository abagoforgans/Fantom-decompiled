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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function nextMoneyPotUpdateBlock() payable {
    if sub_713cfdb4 + sub_2cbbd864 < sub_2cbbd864:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_713cfdb4 + sub_2cbbd864)
}

function updateFeeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeManagerAddress = arg1
}

function updateAddressWithoutReward(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor9[address(arg1)] = uint8(arg2)
}

function tokenPerBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_713cfdb4:
        revert with 0, 'SafeMath: division by zero'
    return (tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 > sub_598e88ee[address(arg1)]:
        revert with 0, 'Insufficient amount'
    if arg2 > sub_598e88ee[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_598e88ee[address(arg1)] -= arg2
    if arg2 + sub_62bfad8e[address(arg1)] < sub_62bfad8e[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_62bfad8e[address(arg1)] += arg2
}

function addTokenToRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor8[address(arg1)]:
        sub_9c7e2655.length++
        sub_9c7e2655[sub_9c7e2655.length] = arg1
        if block.number < sub_2cbbd864:
            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = sub_2cbbd864
            tokenAmountPotFromMoneyPot[address(arg1)].field_256 = 0
            tokenAmountPotFromMoneyPot[address(arg1)].field_0 = 0
            tokenAmountPotFromMoneyPot[address(arg1)].field_768 = sub_2cbbd864
        else:
            if sub_713cfdb4 + sub_2cbbd864 < sub_2cbbd864:
                revert with 0, 'SafeMath: addition overflow'
            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = sub_713cfdb4 + sub_2cbbd864
            tokenAmountPotFromMoneyPot[address(arg1)].field_256 = 0
            tokenAmountPotFromMoneyPot[address(arg1)].field_0 = 0
            tokenAmountPotFromMoneyPot[address(arg1)].field_768 = sub_713cfdb4 + sub_2cbbd864
        stor8[address(arg1)] = 1
}

function removeTokenToRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if tokenAmountPotFromMoneyPot[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7263616e6e6f742072656d6f7665206265666f726520656e64206f6620646973747269627574696f,
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
        revert with 0, 'wOwnable: caller is not the owne'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg2 + sub_598e88ee[address(arg1)] < sub_598e88ee[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_598e88ee[address(arg1)] += arg2
}

function updateCurrentMoneyPot(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number > tokenAmountPotFromMoneyPot[address(arg1)].field_512:
        if not sub_c27cfbb6:
            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
        else:
            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if block.number < sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                if tokenAmountPotFromMoneyPot[address(arg1)].field_0:
                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_c27cfbb6:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            if not sub_c27cfbb6:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                        else:
                            if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                            else:
                                if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
            else:
                if not tokenAmountPotFromMoneyPot[address(arg1)].field_0:
                    tokenAmountPotFromMoneyPot[address(arg1)].field_0 = sub_62bfad8e[address(arg1)]
                    sub_62bfad8e[address(arg1)] = 0
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenAmountPotFromMoneyPot[address(arg1)].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                    tokenAmountPotFromMoneyPot[address(arg1)].field_768 += sub_713cfdb4
                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                    if 2 * sub_713cfdb4 < sub_713cfdb4:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_0:
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                                if not sub_713cfdb4:
                                    revert with 0, 'SafeMath: division by zero'
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                    if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_713cfdb4:
                                    revert with 0, 'SafeMath: division by zero'
                                if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                    if not sub_c27cfbb6:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                else:
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_c27cfbb6:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg1)].field_0 = sub_62bfad8e[address(arg1)]
                        sub_62bfad8e[address(arg1)] = 0
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                        tokenAmountPotFromMoneyPot[address(arg1)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                        if 2 * sub_713cfdb4 < sub_713cfdb4:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_0:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not sub_c27cfbb6:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                            if not sub_c27cfbb6:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                        else:
                            if (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                            else:
                                if (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg1)].field_0 = sub_62bfad8e[address(arg1)]
                        sub_62bfad8e[address(arg1)] = 0
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg1)].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                        tokenAmountPotFromMoneyPot[address(arg1)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
                        if 2 * sub_713cfdb4 < sub_713cfdb4:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                            if tokenAmountPotFromMoneyPot[address(arg1)].field_0:
                                if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not sub_c27cfbb6:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg1)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[address(arg1)].field_512 = block.number
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768
}

function pendingTokenRewardsAmount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if 0 == sub_c27cfbb6:
        return 0
    if not sub_713cfdb4:
        revert with 0, 'SafeMath: division by zero'
    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.number < sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0] / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= block.number:
            if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        if tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
            if 0 / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_713cfdb4:
            revert with 0, 'SafeMath: division by zero'
        if block.number <= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 >= block.number:
            if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - sub_713cfdb4 - tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6) + (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if tokenAmountPotFromMoneyPot[address(arg1)].field_512 > sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4:
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_713cfdb4:
            revert with 0, 'SafeMath: division by zero'
        if block.number <= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 >= block.number:
            if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - sub_713cfdb4 - tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6) + (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4 != sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 - tokenAmountPotFromMoneyPot[address(arg1)].field_512:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4):
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_713cfdb4:
            revert with 0, 'SafeMath: division by zero'
        if block.number <= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 >= block.number:
            if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - sub_713cfdb4 - tokenAmountPotFromMoneyPot[address(arg1)].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
            if not sub_c27cfbb6:
                revert with 0, 'SafeMath: division by zero'
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
                if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
            if (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (2 * 0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((2 * 0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6) + (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (0 / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) != 10^12:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_c27cfbb6:
        revert with 0, 'SafeMath: division by zero'
    if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256 < tokenAmountPotFromMoneyPot[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 < tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_713cfdb4:
        revert with 0, 'SafeMath: division by zero'
    if block.number <= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768:
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 >= block.number:
        if sub_62bfad8e[address(arg1)] / sub_713cfdb4:
            if 0 / sub_62bfad8e[address(arg1)] / sub_713cfdb4:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg1)].field_768 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_62bfad8e[address(arg1)] / sub_713cfdb4:
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_62bfad8e[address(arg1)] / sub_713cfdb4 != block.number - sub_713cfdb4 - tokenAmountPotFromMoneyPot[address(arg1)].field_768:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4):
        if not sub_c27cfbb6:
            revert with 0, 'SafeMath: division by zero'
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
            if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
        if (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / sub_c27cfbb6) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > (0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + ((0 / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / (block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) != 10^12:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not sub_c27cfbb6:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 < 0:
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
        if sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0 < -sub_b47e26ac[address(arg1)][address(arg2)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
    if ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg1)].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if sub_b47e26ac[address(arg1)][address(arg2)].field_0 > ((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_b47e26ac[address(arg1)][address(arg2)].field_256 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_b47e26ac[address(arg1)][address(arg2)].field_256 + (((10^12 * block.number * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * sub_713cfdb4 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * sub_62bfad8e[address(arg1)] / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_768 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg1)].field_512 * tokenAmountPotFromMoneyPot[address(arg1)].field_0 / sub_713cfdb4) / sub_c27cfbb6 * ext_call.return_data[0]) + (tokenAmountPotFromMoneyPot[address(arg1)].field_256 * ext_call.return_data[0]) / 10^12) - sub_b47e26ac[address(arg1)][address(arg2)].field_0)
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
                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if block.number < sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                            _892 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_892] = 26
                            mem[_892 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _899 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _899 + 68] = mem[idx + _892 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_899 + 68] = mem[_899 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _899 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _969 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_969] = 26
                                mem[_969 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _977 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _977 + 68] = mem[idx + _969 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_977 + 68] = mem[_977 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _977 + -mem[64] + 100
                            else:
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _972 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_972] = 26
                                mem[_972 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _985 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _985 + 68] = mem[idx + _972 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_985 + 68] = mem[_985 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _985 + -mem[64] + 100
                            ('stor', ('name', 'sub_c27cfbb6', 14))
                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                        else:
                            _888 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_888] = 30
                            mem[_888 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _888 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            _910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_910] = 26
                            mem[_910 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _923 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _923 + 68] = mem[idx + _910 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_923 + 68] = mem[_923 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _923 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _995 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_995] = 26
                                mem[_995 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1007 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1007 + 68] = mem[idx + _995 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1007 + 68] = mem[_1007 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1007 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                            else:
                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _998 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_998] = 26
                                    mem[_998 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1020 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1020 + 68] = mem[idx + _998 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1020 + 68] = mem[_1020 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1020 + -mem[64] + 100
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1006 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1006] = 26
                                    mem[_1006 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1031 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1031 + 68] = mem[idx + _1006 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1031 + 68] = mem[_1031 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1031 + -mem[64] + 100
                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                else:
                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                        mem[0] = sub_9c7e2655[idx]
                        mem[32] = 12
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                        sub_62bfad8e[stor7[idx]] = 0
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        if 2 * sub_713cfdb4 < sub_713cfdb4:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                    _952 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_952] = 26
                                    mem[_952 + 32] = 'SafeMath: division by zero'
                                    if not sub_713cfdb4:
                                        _965 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _965 + 68] = mem[idx + _952 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_965 + 68] = mem[_965 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _965 + -mem[64] + 100
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1070 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1070] = 26
                                        mem[_1070 + 32] = 'SafeMath: division by zero'
                                        if not sub_c27cfbb6:
                                            _1089 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1089 + 68] = mem[idx + _1070 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1089 + 68] = mem[_1089 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1089 + -mem[64] + 100
                                    else:
                                        if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1082 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1082] = 26
                                        mem[_1082 + 32] = 'SafeMath: division by zero'
                                        if not sub_c27cfbb6:
                                            _1097 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1097 + 68] = mem[idx + _1082 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1097 + 68] = mem[_1097 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1097 + -mem[64] + 100
                                    ('stor', ('name', 'sub_c27cfbb6', 14))
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    _943 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_943] = 30
                                    mem[_943 + 32] = 'SafeMath: subtraction overflow'
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _943 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    _973 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_973] = 26
                                    mem[_973 + 32] = 'SafeMath: division by zero'
                                    if not sub_713cfdb4:
                                        _988 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _988 + 68] = mem[idx + _973 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_988 + 68] = mem[_988 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _988 + -mem[64] + 100
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1113 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1113] = 26
                                        mem[_1113 + 32] = 'SafeMath: division by zero'
                                        if not sub_c27cfbb6:
                                            _1134 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1134 + 68] = mem[idx + _1113 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1134 + 68] = mem[_1134 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1134 + -mem[64] + 100
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                            _1124 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1124] = 26
                                            mem[_1124 + 32] = 'SafeMath: division by zero'
                                            if not sub_c27cfbb6:
                                                _1141 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1141 + 68] = mem[idx + _1124 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1141 + 68] = mem[_1141 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1141 + -mem[64] + 100
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1133 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1133] = 26
                                            mem[_1133 + 32] = 'SafeMath: division by zero'
                                            if not sub_c27cfbb6:
                                                _1152 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1152 + 68] = mem[idx + _1133 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1152 + 68] = mem[_1152 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1152 + -mem[64] + 100
                                            if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                    else:
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            _909 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_909] = 26
                            mem[_909 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _920 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _920 + 68] = mem[idx + _909 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_920 + 68] = mem[_920 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _920 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _992 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_992] = 26
                                mem[_992 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1003 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1003 + 68] = mem[idx + _992 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1003 + 68] = mem[_1003 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1003 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                sub_62bfad8e[stor7[idx]] = 0
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if 2 * sub_713cfdb4 < sub_713cfdb4:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1216 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1216] = 26
                                            mem[_1216 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1236 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1236 + 68] = mem[idx + _1216 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1236 + 68] = mem[_1236 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1236 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1381 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1381] = 26
                                                mem[_1381 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1391 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1391 + 68] = mem[idx + _1381 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1391 + 68] = mem[_1391 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1391 + -mem[64] + 100
                                            else:
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1388 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1388] = 26
                                                mem[_1388 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1399 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1399 + 68] = mem[idx + _1388 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1399 + 68] = mem[_1399 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1399 + -mem[64] + 100
                                            ('stor', ('name', 'sub_c27cfbb6', 14))
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1205 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1205] = 30
                                            mem[_1205 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                idx = 32
                                                while idx < 30:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1205 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1260 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1260] = 26
                                            mem[_1260 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1293 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1293 + 68] = mem[idx + _1260 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1293 + 68] = mem[_1293 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1293 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1410 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1410] = 26
                                                mem[_1410 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1434 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1434 + 68] = mem[idx + _1410 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1434 + 68] = mem[_1434 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1434 + -mem[64] + 100
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1420 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1420] = 26
                                                    mem[_1420 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1454 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1454 + 68] = mem[idx + _1420 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1454 + 68] = mem[_1454 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1454 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1433 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1433] = 26
                                                    mem[_1433 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1476 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1476 + 68] = mem[idx + _1433 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1476 + 68] = mem[_1476 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1476 + -mem[64] + 100
                                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                            else:
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _997 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_997] = 26
                                mem[_997 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1017 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1017 + 68] = mem[idx + _997 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1017 + 68] = mem[_1017 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1017 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                sub_62bfad8e[stor7[idx]] = 0
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if 2 * sub_713cfdb4 < sub_713cfdb4:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1222 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1222] = 26
                                            mem[_1222 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1246 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1246 + 68] = mem[idx + _1222 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1246 + 68] = mem[_1246 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1246 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1387 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1387] = 26
                                                mem[_1387 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1396 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1396 + 68] = mem[idx + _1387 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1396 + 68] = mem[_1396 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1396 + -mem[64] + 100
                                            else:
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1390 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1390] = 26
                                                mem[_1390 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1405 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1405 + 68] = mem[idx + _1390 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1405 + 68] = mem[_1405 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1405 + -mem[64] + 100
                                            ('stor', ('name', 'sub_c27cfbb6', 14))
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1210 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1210] = 30
                                            mem[_1210 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                idx = 32
                                                while idx < 30:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1210 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1271 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1271] = 26
                                            mem[_1271 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1307 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1307 + 68] = mem[idx + _1271 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1307 + 68] = mem[_1307 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1307 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1418 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1418] = 26
                                                mem[_1418 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1448 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1448 + 68] = mem[idx + _1418 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1448 + 68] = mem[_1448 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1448 + -mem[64] + 100
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1429 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1429] = 26
                                                    mem[_1429 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1470 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1470 + 68] = mem[idx + _1429 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1470 + 68] = mem[_1470 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1470 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1447 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1447] = 26
                                                    mem[_1447 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1493 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1493 + 68] = mem[idx + _1447 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1493 + 68] = mem[_1493 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1493 + -mem[64] + 100
                                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        else:
                            _896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_896] = 30
                            mem[_896 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _896 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            _929 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_929] = 26
                            mem[_929 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _944 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _944 + 68] = mem[idx + _929 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_944 + 68] = mem[_944 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _944 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1029] = 26
                                mem[_1029 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1045 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1045 + 68] = mem[idx + _1029 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1045 + 68] = mem[_1045 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1045 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                sub_62bfad8e[stor7[idx]] = 0
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if 2 * sub_713cfdb4 < sub_713cfdb4:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1257 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1257] = 26
                                            mem[_1257 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1287 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1287 + 68] = mem[idx + _1257 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1287 + 68] = mem[_1287 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1287 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1404 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1404] = 26
                                                mem[_1404 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1426 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1426 + 68] = mem[idx + _1404 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1426 + 68] = mem[_1426 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1426 + -mem[64] + 100
                                            else:
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1415 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1415] = 26
                                                mem[_1415 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1444 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1444 + 68] = mem[idx + _1415 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1444 + 68] = mem[_1444 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1444 + -mem[64] + 100
                                            ('stor', ('name', 'sub_c27cfbb6', 14))
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1230 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1230] = 30
                                            mem[_1230 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                idx = 32
                                                while idx < 30:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1230 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1318 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1318] = 26
                                            mem[_1318 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1344 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1344 + 68] = mem[idx + _1318 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1344 + 68] = mem[_1344 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1344 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1468 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1468] = 26
                                                mem[_1468 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1511 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1511 + 68] = mem[idx + _1468 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1511 + 68] = mem[_1511 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1511 + -mem[64] + 100
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1489 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1489] = 26
                                                    mem[_1489 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1535 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1535 + 68] = mem[idx + _1489 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1535 + 68] = mem[_1535 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1535 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1510 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1510] = 26
                                                    mem[_1510 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1565 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1565 + 68] = mem[idx + _1510 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1565 + 68] = mem[_1565 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1565 + -mem[64] + 100
                                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                            else:
                                if (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _1037 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1037] = 26
                                    mem[_1037 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1057 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1057 + 68] = mem[idx + _1037 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1057 + 68] = mem[_1057 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1057 + -mem[64] + 100
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if 2 * sub_713cfdb4 < sub_713cfdb4:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1267 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1267] = 26
                                                mem[_1267 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1302 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1302 + 68] = mem[idx + _1267 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1302 + 68] = mem[_1302 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1302 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1414 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1414] = 26
                                                    mem[_1414 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1441 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1441 + 68] = mem[idx + _1414 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1441 + 68] = mem[_1441 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1441 + -mem[64] + 100
                                                else:
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1425 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1425] = 26
                                                    mem[_1425 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1463 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1463 + 68] = mem[idx + _1425 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1463 + 68] = mem[_1463 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1463 + -mem[64] + 100
                                                ('stor', ('name', 'sub_c27cfbb6', 14))
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1243 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1243] = 30
                                                mem[_1243 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                    idx = 32
                                                    while idx < 30:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1243 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1325 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1325] = 26
                                                mem[_1325 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1356 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1356 + 68] = mem[idx + _1325 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1356 + 68] = mem[_1356 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1356 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1487 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1487] = 26
                                                    mem[_1487 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1529 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1529 + 68] = mem[idx + _1487 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1529 + 68] = mem[_1529 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1529 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1506 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1506] = 26
                                                        mem[_1506 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1559 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1559 + 68] = mem[idx + _1506 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1559 + 68] = mem[_1559 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1559 + -mem[64] + 100
                                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1528 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1528] = 26
                                                        mem[_1528 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1589 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1589 + 68] = mem[idx + _1528 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1589 + 68] = mem[_1589 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1589 + -mem[64] + 100
                                                        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                else:
                                    if (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1044 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1044] = 26
                                    mem[_1044 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1071 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1071 + 68] = mem[idx + _1044 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1071 + 68] = mem[_1071 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1071 + -mem[64] + 100
                                    if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if 2 * sub_713cfdb4 < sub_713cfdb4:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1281 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1281] = 26
                                                mem[_1281 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1313 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1313 + 68] = mem[idx + _1281 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1313 + 68] = mem[_1313 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1313 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1424 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1424] = 26
                                                    mem[_1424 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1460 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1460 + 68] = mem[idx + _1424 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1460 + 68] = mem[_1460 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1460 + -mem[64] + 100
                                                else:
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1440 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1440] = 26
                                                    mem[_1440 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1482 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1482 + 68] = mem[idx + _1440 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1482 + 68] = mem[_1482 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1482 + -mem[64] + 100
                                                ('stor', ('name', 'sub_c27cfbb6', 14))
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1253 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1253] = 30
                                                mem[_1253 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                    idx = 32
                                                    while idx < 30:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1253 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1337 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1337] = 26
                                                mem[_1337 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1361 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1361 + 68] = mem[idx + _1337 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1361 + 68] = mem[_1361 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1361 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1504 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1504] = 26
                                                    mem[_1504 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1553 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1553 + 68] = mem[idx + _1504 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1553 + 68] = mem[_1553 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1553 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1524 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1524] = 26
                                                        mem[_1524 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1583 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1583 + 68] = mem[idx + _1524 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1583 + 68] = mem[_1583 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1583 + -mem[64] + 100
                                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1552 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1552] = 26
                                                        mem[_1552 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1605 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1605 + 68] = mem[idx + _1552 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1605 + 68] = mem[_1605 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1605 + -mem[64] + 100
                                                        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
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
                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if block.number < sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                            _992 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_992] = 26
                            mem[_992 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _1009 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1009 + 68] = mem[idx + _992 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1009 + 68] = mem[_1009 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1009 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1135 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1135] = 26
                                mem[_1135 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1143 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1143 + 68] = mem[idx + _1135 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1143 + 68] = mem[_1143 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1143 + -mem[64] + 100
                            else:
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1138 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1138] = 26
                                mem[_1138 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1151 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1151 + 68] = mem[idx + _1138 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1151 + 68] = mem[_1151 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1151 + -mem[64] + 100
                            ('stor', ('name', 'sub_c27cfbb6', 14))
                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                        else:
                            _986 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_986] = 30
                            mem[_986 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _986 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            _1032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1032] = 26
                            mem[_1032 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _1057 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1057 + 68] = mem[idx + _1032 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1057 + 68] = mem[_1057 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1057 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1161 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1161] = 26
                                mem[_1161 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1173 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1173 + 68] = mem[idx + _1161 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1173 + 68] = mem[_1173 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1173 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                            else:
                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _1164 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1164] = 26
                                    mem[_1164 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1186 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1186 + 68] = mem[idx + _1164 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1186 + 68] = mem[_1186 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1186 + -mem[64] + 100
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1172 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1172] = 26
                                    mem[_1172 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1197 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1197 + 68] = mem[idx + _1172 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1197 + 68] = mem[_1197 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1197 + -mem[64] + 100
                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                else:
                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                        mem[0] = sub_9c7e2655[idx]
                        mem[32] = 12
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                        sub_62bfad8e[stor7[idx]] = 0
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        if 2 * sub_713cfdb4 < sub_713cfdb4:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                    _1114 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1114] = 26
                                    mem[_1114 + 32] = 'SafeMath: division by zero'
                                    if not sub_713cfdb4:
                                        _1131 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1131 + 68] = mem[idx + _1114 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1131 + 68] = mem[_1131 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1131 + -mem[64] + 100
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1236 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1236] = 26
                                        mem[_1236 + 32] = 'SafeMath: division by zero'
                                        if not sub_c27cfbb6:
                                            _1255 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1255 + 68] = mem[idx + _1236 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1255 + 68] = mem[_1255 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1255 + -mem[64] + 100
                                    else:
                                        if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1248 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1248] = 26
                                        mem[_1248 + 32] = 'SafeMath: division by zero'
                                        if not sub_c27cfbb6:
                                            _1263 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1263 + 68] = mem[idx + _1248 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1263 + 68] = mem[_1263 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1263 + -mem[64] + 100
                                    ('stor', ('name', 'sub_c27cfbb6', 14))
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                else:
                                    _1093 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1093] = 30
                                    mem[_1093 + 32] = 'SafeMath: subtraction overflow'
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _1093 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    _1139 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1139] = 26
                                    mem[_1139 + 32] = 'SafeMath: division by zero'
                                    if not sub_713cfdb4:
                                        _1154 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1154 + 68] = mem[idx + _1139 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1154 + 68] = mem[_1154 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1154 + -mem[64] + 100
                                    if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                        _1279 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1279] = 26
                                        mem[_1279 + 32] = 'SafeMath: division by zero'
                                        if not sub_c27cfbb6:
                                            _1300 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _1300 + 68] = mem[idx + _1279 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1300 + 68] = mem[_1300 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _1300 + -mem[64] + 100
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                            _1290 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1290] = 26
                                            mem[_1290 + 32] = 'SafeMath: division by zero'
                                            if not sub_c27cfbb6:
                                                _1307 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1307 + 68] = mem[idx + _1290 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1307 + 68] = mem[_1307 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1307 + -mem[64] + 100
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1299 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1299] = 26
                                            mem[_1299 + 32] = 'SafeMath: division by zero'
                                            if not sub_c27cfbb6:
                                                _1318 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1318 + 68] = mem[idx + _1299 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1318 + 68] = mem[_1318 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1318 + -mem[64] + 100
                                            if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                            tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                    else:
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                            _1025 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1025] = 26
                            mem[_1025 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _1048 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1048 + 68] = mem[idx + _1025 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1048 + 68] = mem[_1048 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1048 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1158 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1158] = 26
                                mem[_1158 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1169 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1169 + 68] = mem[idx + _1158 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1169 + 68] = mem[_1169 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1169 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                sub_62bfad8e[stor7[idx]] = 0
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if 2 * sub_713cfdb4 < sub_713cfdb4:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1382 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1382] = 26
                                            mem[_1382 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1402 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1402 + 68] = mem[idx + _1382 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1402 + 68] = mem[_1402 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1402 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1547 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1547] = 26
                                                mem[_1547 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1557 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1557 + 68] = mem[idx + _1547 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1557 + 68] = mem[_1557 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1557 + -mem[64] + 100
                                            else:
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1554 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1554] = 26
                                                mem[_1554 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1565 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1565 + 68] = mem[idx + _1554 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1565 + 68] = mem[_1565 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1565 + -mem[64] + 100
                                            ('stor', ('name', 'sub_c27cfbb6', 14))
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1371 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1371] = 30
                                            mem[_1371 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                idx = 32
                                                while idx < 30:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1371 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1426 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1426] = 26
                                            mem[_1426 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1459 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1459 + 68] = mem[idx + _1426 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1459 + 68] = mem[_1459 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1459 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1576 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1576] = 26
                                                mem[_1576 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1600 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1600 + 68] = mem[idx + _1576 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1600 + 68] = mem[_1600 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1600 + -mem[64] + 100
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1586 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1586] = 26
                                                    mem[_1586 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1620 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1620 + 68] = mem[idx + _1586 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1620 + 68] = mem[_1620 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1620 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1599 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1599] = 26
                                                    mem[_1599 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1642 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1642 + 68] = mem[idx + _1599 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1642 + 68] = mem[_1642 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1642 + -mem[64] + 100
                                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                            else:
                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1163 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1163] = 26
                                mem[_1163 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1183 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1183 + 68] = mem[idx + _1163 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1183 + 68] = mem[_1183 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1183 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                sub_62bfad8e[stor7[idx]] = 0
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if 2 * sub_713cfdb4 < sub_713cfdb4:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1388 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1388] = 26
                                            mem[_1388 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1412 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1412 + 68] = mem[idx + _1388 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1412 + 68] = mem[_1412 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1412 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1553 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1553] = 26
                                                mem[_1553 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1562 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1562 + 68] = mem[idx + _1553 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1562 + 68] = mem[_1562 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1562 + -mem[64] + 100
                                            else:
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1556 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1556] = 26
                                                mem[_1556 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1571 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1571 + 68] = mem[idx + _1556 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1571 + 68] = mem[_1571 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1571 + -mem[64] + 100
                                            ('stor', ('name', 'sub_c27cfbb6', 14))
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1376 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1376] = 30
                                            mem[_1376 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                idx = 32
                                                while idx < 30:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1376 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1437 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1437] = 26
                                            mem[_1437 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1473 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1473 + 68] = mem[idx + _1437 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1473 + 68] = mem[_1473 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1473 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1584 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1584] = 26
                                                mem[_1584 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1614 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1614 + 68] = mem[idx + _1584 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1614 + 68] = mem[_1614 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1614 + -mem[64] + 100
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1595 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1595] = 26
                                                    mem[_1595 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1636 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1636 + 68] = mem[idx + _1595 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1636 + 68] = mem[_1636 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1636 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1613 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1613] = 26
                                                    mem[_1613 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1659 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1659 + 68] = mem[idx + _1613 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1659 + 68] = mem[_1659 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1659 + -mem[64] + 100
                                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                        else:
                            _1004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1004] = 30
                            mem[_1004 + 32] = 'SafeMath: subtraction overflow'
                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _1004 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            _1067 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1067] = 26
                            mem[_1067 + 32] = 'SafeMath: division by zero'
                            if not sub_713cfdb4:
                                _1094 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1094 + 68] = mem[idx + _1067 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1094 + 68] = mem[_1094 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1094 + -mem[64] + 100
                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                _1195 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1195] = 26
                                mem[_1195 + 32] = 'SafeMath: division by zero'
                                if not sub_c27cfbb6:
                                    _1211 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1211 + 68] = mem[idx + _1195 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1211 + 68] = mem[_1211 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1211 + -mem[64] + 100
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                mem[0] = sub_9c7e2655[idx]
                                mem[32] = 12
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                sub_62bfad8e[stor7[idx]] = 0
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                if 2 * sub_713cfdb4 < sub_713cfdb4:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                    if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                            _1423 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1423] = 26
                                            mem[_1423 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1453 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1453 + 68] = mem[idx + _1423 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1453 + 68] = mem[_1453 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1453 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1570 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1570] = 26
                                                mem[_1570 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1592 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1592 + 68] = mem[idx + _1570 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1592 + 68] = mem[_1592 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1592 + -mem[64] + 100
                                            else:
                                                if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1581 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1581] = 26
                                                mem[_1581 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1610 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1610 + 68] = mem[idx + _1581 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1610 + 68] = mem[_1610 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1610 + -mem[64] + 100
                                            ('stor', ('name', 'sub_c27cfbb6', 14))
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            _1396 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1396] = 30
                                            mem[_1396 + 32] = 'SafeMath: subtraction overflow'
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                idx = 32
                                                while idx < 30:
                                                    mem[idx + mem[64] + 68] = mem[idx + _1396 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1484 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1484] = 26
                                            mem[_1484 + 32] = 'SafeMath: division by zero'
                                            if not sub_713cfdb4:
                                                _1510 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _1510 + 68] = mem[idx + _1484 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1510 + 68] = mem[_1510 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _1510 + -mem[64] + 100
                                            if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                _1634 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1634] = 26
                                                mem[_1634 + 32] = 'SafeMath: division by zero'
                                                if not sub_c27cfbb6:
                                                    _1677 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1677 + 68] = mem[idx + _1634 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1677 + 68] = mem[_1677 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1677 + -mem[64] + 100
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                    _1655 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1655] = 26
                                                    mem[_1655 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1701 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1701 + 68] = mem[idx + _1655 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1701 + 68] = mem[_1701 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1701 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1676 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1676] = 26
                                                    mem[_1676 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1731 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1731 + 68] = mem[idx + _1676 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1731 + 68] = mem[_1731 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1731 + -mem[64] + 100
                                                    if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                            else:
                                if (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                    _1203 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1203] = 26
                                    mem[_1203 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1223 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1223 + 68] = mem[idx + _1203 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1223 + 68] = mem[_1223 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1223 + -mem[64] + 100
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if 2 * sub_713cfdb4 < sub_713cfdb4:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1433 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1433] = 26
                                                mem[_1433 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1468 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1468 + 68] = mem[idx + _1433 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1468 + 68] = mem[_1468 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1468 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1580 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1580] = 26
                                                    mem[_1580 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1607 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1607 + 68] = mem[idx + _1580 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1607 + 68] = mem[_1607 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1607 + -mem[64] + 100
                                                else:
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1591 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1591] = 26
                                                    mem[_1591 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1629 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1629 + 68] = mem[idx + _1591 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1629 + 68] = mem[_1629 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1629 + -mem[64] + 100
                                                ('stor', ('name', 'sub_c27cfbb6', 14))
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1409 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1409] = 30
                                                mem[_1409 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                    idx = 32
                                                    while idx < 30:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1409 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1491 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1491] = 26
                                                mem[_1491 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1522 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1522 + 68] = mem[idx + _1491 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1522 + 68] = mem[_1522 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1522 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1653 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1653] = 26
                                                    mem[_1653 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1695 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1695 + 68] = mem[idx + _1653 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1695 + 68] = mem[_1695 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1695 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1672 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1672] = 26
                                                        mem[_1672 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1725 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1725 + 68] = mem[idx + _1672 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1725 + 68] = mem[_1725 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1725 + -mem[64] + 100
                                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1694 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1694] = 26
                                                        mem[_1694 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1755 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1755 + 68] = mem[idx + _1694 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1755 + 68] = mem[_1755 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1755 + -mem[64] + 100
                                                        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                else:
                                    if (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1210 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1210] = 26
                                    mem[_1210 + 32] = 'SafeMath: division by zero'
                                    if not sub_c27cfbb6:
                                        _1237 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _1237 + 68] = mem[idx + _1210 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1237 + 68] = mem[_1237 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _1237 + -mem[64] + 100
                                    if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_768 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    mem[0] = sub_9c7e2655[idx]
                                    mem[32] = 12
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_0 = sub_62bfad8e[stor7[idx]]
                                    sub_62bfad8e[stor7[idx]] = 0
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_768 += sub_713cfdb4
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
                                    if 2 * sub_713cfdb4 < sub_713cfdb4:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number < (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                        if tokenAmountPotFromMoneyPot[stor7[idx]].field_0:
                                            if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 >= block.number:
                                                _1447 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1447] = 26
                                                mem[_1447 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1479 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1479 + 68] = mem[idx + _1447 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1479 + 68] = mem[_1479 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1479 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1590 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1590] = 26
                                                    mem[_1590 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1626 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1626 + 68] = mem[idx + _1590 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1626 + 68] = mem[_1626 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1626 + -mem[64] + 100
                                                else:
                                                    if 0 / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _1606 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1606] = 26
                                                    mem[_1606 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1648 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1648 + 68] = mem[idx + _1606 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1648 + 68] = mem[_1648 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1648 + -mem[64] + 100
                                                ('stor', ('name', 'sub_c27cfbb6', 14))
                                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                            else:
                                                _1419 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1419] = 30
                                                mem[_1419 + 32] = 'SafeMath: subtraction overflow'
                                                if tokenAmountPotFromMoneyPot[stor7[idx]].field_512 > block.number:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                                    idx = 32
                                                    while idx < 30:
                                                        mem[idx + mem[64] + 68] = mem[idx + _1419 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1503 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1503] = 26
                                                mem[_1503 + 32] = 'SafeMath: division by zero'
                                                if not sub_713cfdb4:
                                                    _1527 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[idx + _1527 + 68] = mem[idx + _1503 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1527 + 68] = mem[_1527 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _1527 + -mem[64] + 100
                                                if not tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4:
                                                    _1670 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1670] = 26
                                                    mem[_1670 + 32] = 'SafeMath: division by zero'
                                                    if not sub_c27cfbb6:
                                                        _1719 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[idx + _1719 + 68] = mem[idx + _1670 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1719 + 68] = mem[_1719 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _1719 + -mem[64] + 100
                                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                else:
                                                    if (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[stor7[idx]].field_512:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4):
                                                        _1690 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1690] = 26
                                                        mem[_1690 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1749 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1749 + 68] = mem[idx + _1690 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1749 + 68] = mem[_1749 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1749 + -mem[64] + 100
                                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += 0 / sub_c27cfbb6
                                                    else:
                                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) != 10^12:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _1718 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1718] = 26
                                                        mem[_1718 + 32] = 'SafeMath: division by zero'
                                                        if not sub_c27cfbb6:
                                                            _1771 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 26
                                                            idx = 0
                                                            while idx < 26:
                                                                mem[idx + _1771 + 68] = mem[idx + _1718 + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1771 + 68] = mem[_1771 + 74 len 26]
                                                            revert with memory
                                                              from mem[64]
                                                               len _1771 + -mem[64] + 100
                                                        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[stor7[idx]].field_256 < tokenAmountPotFromMoneyPot[stor7[idx]].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[stor7[idx]].field_512 * tokenAmountPotFromMoneyPot[stor7[idx]].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                        tokenAmountPotFromMoneyPot[stor7[idx]].field_512 = block.number
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768 < tokenAmountPotFromMoneyPot[stor7[idx]].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[stor7[idx]].field_768
        idx = idx + 1
        continue 
    _961 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = arg2
    _962 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_961 + 132] = 32
    mem[_961 + 164] = 'SafeBEP20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    _971 = mem[_962]
    mem[_961 + 196 len floor32(mem[_962])] = mem[_962 + 32 len floor32(mem[_962])]
    mem[_961 + floor32(mem[_962]) + -(mem[_962] % 32) + 228 len mem[_962] % 32] = mem[_962 + -(mem[_962] % 32) + floor32(mem[_962]) + 64 len mem[_962] % 32]
    call arg1.mem[_961 + 196 len 4] with:
         gas gas_remaining wei
        args mem[_961 + 200 len _971 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeBEP20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_961 + 306 len 22]
    else:
        mem[_961 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[_961 + 228]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_961 + ceil32(return_data.size) + 307 len 22]
    if block.number >= startBlock:
        if arg2 + sub_62bfad8e[address(arg1)] < sub_62bfad8e[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_62bfad8e[address(arg1)] += arg2
    else:
        if arg2 + sub_598e88ee[address(arg1)] < sub_598e88ee[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_598e88ee[address(arg1)] += arg2
}

function harvestReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.number <= tokenAmountPotFromMoneyPot[address(arg2)].field_512:
        if not sub_6c4b95d9[address(arg1)]:
            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                mem[198 len 30]
                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
            if not sub_6c4b95d9[address(arg1)]:
                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
            else:
                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
        else:
            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                    mem[198 len 30]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                if not sub_6c4b95d9[address(arg1)]:
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                else:
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
            else:
                if not sub_6c4b95d9[address(arg1)]:
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                        if not stor9[address(arg1)]:
                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                        else:
                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                            else:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                else:
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                        if not stor9[address(arg1)]:
                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                        else:
                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                            else:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                if not sub_6c4b95d9[address(arg1)]:
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                else:
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
    else:
        if not sub_c27cfbb6:
            tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
            if not sub_6c4b95d9[address(arg1)]:
                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                    mem[198 len 30]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                if not sub_6c4b95d9[address(arg1)]:
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                else:
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
            else:
                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                        mem[198 len 30]
                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                    if not sub_6c4b95d9[address(arg1)]:
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                else:
                    if not sub_6c4b95d9[address(arg1)]:
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                            if not stor9[address(arg1)]:
                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                            else:
                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                else:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                            if not stor9[address(arg1)]:
                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                            else:
                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                else:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                    if not sub_6c4b95d9[address(arg1)]:
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
        else:
            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if block.number < sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                if not tokenAmountPotFromMoneyPot[address(arg2)].field_0:
                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                    if not sub_6c4b95d9[address(arg1)]:
                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                            mem[198 len 30]
                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                        if not sub_6c4b95d9[address(arg1)]:
                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                34,
                                                0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                                mem[198 len 30]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                        else:
                            if not sub_6c4b95d9[address(arg1)]:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                    if not stor9[address(arg1)]:
                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                    else:
                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                    if not stor9[address(arg1)]:
                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                    else:
                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        else:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                else:
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_c27cfbb6:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        if not sub_6c4b95d9[address(arg1)]:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        if not stor9[address(arg1)]:
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        if not stor9[address(arg1)]:
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[454 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            if not sub_c27cfbb6:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        else:
                            if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                            else:
                                if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        if not sub_6c4b95d9[address(arg1)]:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        if not stor9[address(arg1)]:
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        if not stor9[address(arg1)]:
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
            else:
                if not tokenAmountPotFromMoneyPot[address(arg2)].field_0:
                    tokenAmountPotFromMoneyPot[address(arg2)].field_0 = sub_62bfad8e[address(arg2)]
                    sub_62bfad8e[address(arg2)] = 0
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                    tokenAmountPotFromMoneyPot[address(arg2)].field_768 += sub_713cfdb4
                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                    if 2 * sub_713cfdb4 < sub_713cfdb4:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        if not sub_6c4b95d9[address(arg1)]:
                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                34,
                                                0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                                mem[198 len 30]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                            if not sub_6c4b95d9[address(arg1)]:
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    34,
                                                    0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                                    mem[198 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        if not stor9[address(arg1)]:
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                        else:
                                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                        if not stor9[address(arg1)]:
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                        else:
                                            if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            else:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                    else:
                        if not tokenAmountPotFromMoneyPot[address(arg2)].field_0:
                            tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                            if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                            if not sub_6c4b95d9[address(arg1)]:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    34,
                                                    0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                                    mem[198 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        34,
                                                        0x737361666553526164735472616e736665723a205472616e73666572206661696c65,
                                                        mem[198 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                            if not stor9[address(arg1)]:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                            if not stor9[address(arg1)]:
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                        else:
                            if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                                if not sub_713cfdb4:
                                    revert with 0, 'SafeMath: division by zero'
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                    if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[454 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_713cfdb4:
                                    revert with 0, 'SafeMath: division by zero'
                                if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                    if not sub_c27cfbb6:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                else:
                                    if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                else:
                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_c27cfbb6:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_0 = sub_62bfad8e[address(arg2)]
                        sub_62bfad8e[address(arg2)] = 0
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        tokenAmountPotFromMoneyPot[address(arg2)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        if 2 * sub_713cfdb4 < sub_713cfdb4:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            if not sub_6c4b95d9[address(arg1)]:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                            if not stor9[address(arg1)]:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                            if not stor9[address(arg1)]:
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[454 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                        else:
                            if not tokenAmountPotFromMoneyPot[address(arg2)].field_0:
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[326 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[454 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not sub_c27cfbb6:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[454 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[454 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[582 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[646 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                    else:
                        if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_713cfdb4:
                            revert with 0, 'SafeMath: division by zero'
                        if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                            if not sub_c27cfbb6:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                        else:
                            if (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                            else:
                                if (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not sub_c27cfbb6:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * sub_713cfdb4 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) + (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_768 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                        tokenAmountPotFromMoneyPot[address(arg2)].field_0 = sub_62bfad8e[address(arg2)]
                        sub_62bfad8e[address(arg2)] = 0
                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenAmountPotFromMoneyPot[address(arg2)].field_512 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        tokenAmountPotFromMoneyPot[address(arg2)].field_768 += sub_713cfdb4
                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                        if 2 * sub_713cfdb4 < sub_713cfdb4:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= (2 * sub_713cfdb4) + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                            if not sub_6c4b95d9[address(arg1)]:
                                if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                        revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                if not sub_6c4b95d9[address(arg1)]:
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                            if not stor9[address(arg1)]:
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                            else:
                                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                            if not stor9[address(arg1)]:
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                            else:
                                                if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                else:
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                        else:
                            if not tokenAmountPotFromMoneyPot[address(arg2)].field_0:
                                tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                if not sub_6c4b95d9[address(arg1)]:
                                    if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                            revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                    if not sub_6c4b95d9[address(arg1)]:
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[390 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if not sub_6c4b95d9[address(arg1)]:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                if not stor9[address(arg1)]:
                                                    if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                else:
                                                    if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                    else:
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                            else:
                                if tokenAmountPotFromMoneyPot[address(arg2)].field_512 >= block.number:
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        if 0 / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not sub_c27cfbb6:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[518 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[646 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                else:
                                    if tokenAmountPotFromMoneyPot[address(arg2)].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_713cfdb4:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4:
                                        if not sub_c27cfbb6:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                    else:
                                        if (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4 != block.number - tokenAmountPotFromMoneyPot[address(arg2)].field_512:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4):
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += 0 / sub_c27cfbb6
                                        else:
                                            if (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / (block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if not sub_c27cfbb6:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6) + tokenAmountPotFromMoneyPot[address(arg2)].field_256 < tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            tokenAmountPotFromMoneyPot[address(arg2)].field_256 += (10^12 * block.number * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) - (10^12 * tokenAmountPotFromMoneyPot[address(arg2)].field_512 * tokenAmountPotFromMoneyPot[address(arg2)].field_0 / sub_713cfdb4) / sub_c27cfbb6
                                    tokenAmountPotFromMoneyPot[address(arg2)].field_512 = block.number
                                    if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                        if sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768 < tokenAmountPotFromMoneyPot[address(arg2)].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_2cbbd864 = sub_713cfdb4 + tokenAmountPotFromMoneyPot[address(arg2)].field_768
                                    if not sub_6c4b95d9[address(arg1)]:
                                        if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[582 len 30]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                        if not sub_6c4b95d9[address(arg1)]:
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                        else:
                                            if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                    else:
                                        if tokenAmountPotFromMoneyPot[address(arg2)].field_256 <= 0:
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[582 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
                                        else:
                                            if not sub_6c4b95d9[address(arg1)]:
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if -sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] -= sub_b47e26ac[address(arg2)][address(arg1)].field_0
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 < -sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                if sub_b47e26ac[address(arg2)][address(arg1)].field_0 > tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0:
                                                    if not stor9[address(arg1)]:
                                                        if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256 < sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_b47e26ac[address(arg2)][address(arg1)].field_256 = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_b47e26ac[address(arg2)][address(arg1)].field_256
                                                    else:
                                                        if not sub_b47e26ac[address(arg2)][address(arg1)].field_256:
                                                            if (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                                        else:
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)] < sub_598e88ee[address(arg2)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_598e88ee[address(arg2)] = sub_b47e26ac[address(arg2)][address(arg1)].field_256 + (tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12) - sub_b47e26ac[address(arg2)][address(arg1)].field_0 + sub_598e88ee[address(arg2)]
                                            if sub_b47e26ac[address(arg2)][address(arg1)].field_256:
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
                                                    revert with 0, 32, 34, 0x737361666553526164735472616e736665723a205472616e73666572206661696c65, mem[710 len 30]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_256 = 0
                                            if not sub_6c4b95d9[address(arg1)]:
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = 0
                                            else:
                                                if tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / sub_6c4b95d9[address(arg1)] != tokenAmountPotFromMoneyPot[address(arg2)].field_256:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                                sub_b47e26ac[address(arg2)][address(arg1)].field_0 = tokenAmountPotFromMoneyPot[address(arg2)].field_256 * sub_6c4b95d9[address(arg1)] / 10^12
}



}
