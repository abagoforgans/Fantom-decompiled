contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18

const rewardRate = 10000 * 10^18


mapping of uint256 stor0;
mapping of uint256 allowance;
uint256 stor2;
array of struct stor3;
array of struct stor4;
uint256 lastUpdateBlock;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function lastUpdateBlock() payable {
    return lastUpdateBlock
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function rewardPerToken() payable {
    if not stor2:
        return rewardPerTokenStored
    if block.number < lastUpdateBlock:
        revert with 0, 17
    if block.number - lastUpdateBlock and 10000 * 10^18 > -1 / block.number - lastUpdateBlock:
        revert with 0, 17
    if (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock) and 10^18 > -1 / (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock):
        revert with 0, 17
    if not stor2:
        revert with 0, 18
    if rewardPerTokenStored > !((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2):
        revert with 0, 17
    return (rewardPerTokenStored + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2))
}

function totalSupply() payable {
    if block.number < lastUpdateBlock:
        revert with 0, 17
    if block.number - lastUpdateBlock and 10000 * 10^18 > -1 / block.number - lastUpdateBlock:
        revert with 0, 17
    if (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock) and 10^18 > -1 / (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock):
        revert with 0, 17
    if not stor2:
        revert with 0, 18
    if (10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2 and stor2 > -1 / (10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2:
        revert with 0, 17
    if stor2 > !((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2 * stor2 / 10^18):
        revert with 0, 17
    return (stor2 + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2 * stor2 / 10^18))
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if stor0[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / stor0[address(arg1)]:
            revert with 0, 17
        return ((rewardPerTokenStored * stor0[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor0[address(arg1)]) / 10^18)
    if block.number < lastUpdateBlock:
        revert with 0, 17
    if block.number - lastUpdateBlock and 10000 * 10^18 > -1 / block.number - lastUpdateBlock:
        revert with 0, 17
    if (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock) and 10^18 > -1 / (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock):
        revert with 0, 17
    if not stor2:
        revert with 0, 18
    if rewardPerTokenStored > !((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2):
        revert with 0, 17
    if rewardPerTokenStored + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if stor0[address(arg1)] and rewardPerTokenStored + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2) - userRewardPerTokenPaid[address(arg1)] > -1 / stor0[address(arg1)]:
        revert with 0, 17
    return ((rewardPerTokenStored * stor0[address(arg1)]) + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2 * stor0[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor0[address(arg1)]) / 10^18)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if stor0[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / stor0[address(arg1)]:
            revert with 0, 17
        if stor0[address(arg1)] > !((rewardPerTokenStored * stor0[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor0[address(arg1)]) / 10^18):
            revert with 0, 17
        return (stor0[address(arg1)] + ((rewardPerTokenStored * stor0[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor0[address(arg1)]) / 10^18))
    if block.number < lastUpdateBlock:
        revert with 0, 17
    if block.number - lastUpdateBlock and 10000 * 10^18 > -1 / block.number - lastUpdateBlock:
        revert with 0, 17
    if (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock) and 10^18 > -1 / (10000 * 10^18 * block.number) - (10000 * 10^18 * lastUpdateBlock):
        revert with 0, 17
    if not stor2:
        revert with 0, 18
    if rewardPerTokenStored > !((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2):
        revert with 0, 17
    if rewardPerTokenStored + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if stor0[address(arg1)] and rewardPerTokenStored + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2) - userRewardPerTokenPaid[address(arg1)] > -1 / stor0[address(arg1)]:
        revert with 0, 17
    if stor0[address(arg1)] > !((rewardPerTokenStored * stor0[address(arg1)]) + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2 * stor0[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor0[address(arg1)]) / 10^18):
        revert with 0, 17
    return (stor0[address(arg1)] + ((rewardPerTokenStored * stor0[address(arg1)]) + ((10000000000000000000000 * 10^18 * block.number) - (10000000000000000000000 * 10^18 * lastUpdateBlock) / stor2 * stor0[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stor0[address(arg1)]) / 10^18))
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}



}
