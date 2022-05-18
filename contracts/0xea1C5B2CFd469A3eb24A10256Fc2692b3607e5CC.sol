contract main {




// =====================  Runtime code  =====================


const sub_16103b72(?) = 5500 * 10^18

const decimals = 18

const sub_a475a056(?) = 59500 * 10^18

const VESTING_DURATION = (8760 * 24 * 3600)

const DEV_FUND_POOL_ALLOCATION = 5000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address operatorAddress;
uint256 startTime;
uint256 endTime;
uint256 sub_c3ebc593;
uint256 devFundRewardRate;
address daoFundAddress;
address devFundAddress;
uint256 sub_307478fa;
uint256 devFundLastClaimed;
uint8 rewardPoolDistributed;

function devFundLastClaimed() payable {
    return devFundLastClaimed
}

function totalSupply() payable {
    return totalSupply
}

function devFundRewardRate() payable {
    return devFundRewardRate
}

function sub_307478fa(?) payable {
    return sub_307478fa
}

function endTime() payable {
    return endTime
}

function devFund() payable {
    return devFundAddress
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function daoFund() payable {
    return daoFundAddress
}

function owner() payable {
    return owner
}

function rewardPoolDistributed() payable {
    return bool(rewardPoolDistributed)
}

function sub_c3ebc593(?) payable {
    return sub_c3ebc593
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function setDaoFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if daoFundAddress != msg.sender:
        revert with 0, '!dao'
    if not arg1:
        revert with 0, 'zero'
    daoFundAddress = arg1
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devFundAddress != msg.sender:
        revert with 0, '!dev'
    if not arg1:
        revert with 0, 'zero'
    devFundAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: zero address given for new operator'
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function unclaimedDaoFund() payable {
    if block.timestamp <= endTime:
        if sub_307478fa >= block.timestamp:
            return 0
        if block.timestamp < sub_307478fa:
            revert with 0, 17
        if block.timestamp - sub_307478fa and sub_c3ebc593 > -1 / block.timestamp - sub_307478fa:
            revert with 0, 17
        return ((block.timestamp * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593))
    if sub_307478fa >= endTime:
        return 0
    if endTime < sub_307478fa:
        revert with 0, 17
    if endTime - sub_307478fa and sub_c3ebc593 > -1 / endTime - sub_307478fa:
        revert with 0, 17
    return ((endTime * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593))
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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

function unclaimedDevFund() payable {
    if block.timestamp <= endTime:
        if devFundLastClaimed >= block.timestamp:
            return 0
        if block.timestamp < devFundLastClaimed:
            revert with 0, 17
        if block.timestamp - devFundLastClaimed and devFundRewardRate > -1 / block.timestamp - devFundLastClaimed:
            revert with 0, 17
        return ((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
    if devFundLastClaimed >= endTime:
        return 0
    if endTime < devFundLastClaimed:
        revert with 0, 17
    if endTime - devFundLastClaimed and devFundRewardRate > -1 / endTime - devFundLastClaimed:
        revert with 0, 17
    return ((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
}

function distributeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if rewardPoolDistributed:
        revert with 0, 'only can distribute once'
    if not arg1:
        revert with 0, '!_farmingIncentiveFund'
    rewardPoolDistributed = 1
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffffff3667fa01c82c1cfffff:
        revert with 0, 17
    totalSupply += 59500 * 10^18
    if balanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffffff3667fa01c82c1cfffff:
        revert with 0, 17
    balanceOf[address(arg1)] += 59500 * 10^18
    emit Transfer(59500 * 10^18, 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
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

function claimRewards() payable {
    if block.timestamp <= endTime:
        if sub_307478fa < block.timestamp:
            if block.timestamp < sub_307478fa:
                revert with 0, 17
            if block.timestamp - sub_307478fa and sub_c3ebc593 > -1 / block.timestamp - sub_307478fa:
                revert with 0, 17
            if (block.timestamp * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593) > 0:
                if daoFundAddress:
                    if not daoFundAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !((block.timestamp * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)):
                        revert with 0, 17
                    totalSupply = totalSupply + (block.timestamp * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)
                    if balanceOf[stor11] > !((block.timestamp * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)):
                        revert with 0, 17
                    balanceOf[stor11] = balanceOf[stor11] + (block.timestamp * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)
                    emit Transfer(((block.timestamp * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)), 0, daoFundAddress);
                    sub_307478fa = block.timestamp
    else:
        if sub_307478fa < endTime:
            if endTime < sub_307478fa:
                revert with 0, 17
            if endTime - sub_307478fa and sub_c3ebc593 > -1 / endTime - sub_307478fa:
                revert with 0, 17
            if (endTime * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593) > 0:
                if daoFundAddress:
                    if not daoFundAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !((endTime * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)):
                        revert with 0, 17
                    totalSupply = totalSupply + (endTime * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)
                    if balanceOf[stor11] > !((endTime * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)):
                        revert with 0, 17
                    balanceOf[stor11] = balanceOf[stor11] + (endTime * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)
                    emit Transfer(((endTime * sub_c3ebc593) - (sub_307478fa * sub_c3ebc593)), 0, daoFundAddress);
                    sub_307478fa = block.timestamp
    if block.timestamp <= endTime:
        if devFundLastClaimed < block.timestamp:
            if block.timestamp < devFundLastClaimed:
                revert with 0, 17
            if block.timestamp - devFundLastClaimed and devFundRewardRate > -1 / block.timestamp - devFundLastClaimed:
                revert with 0, 17
            if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                if devFundAddress:
                    if not devFundAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                        revert with 0, 17
                    totalSupply = totalSupply + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                    if balanceOf[stor12] > !((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                        revert with 0, 17
                    balanceOf[stor12] = balanceOf[stor12] + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                    emit Transfer(((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                    devFundLastClaimed = block.timestamp
    else:
        if devFundLastClaimed < endTime:
            if endTime < devFundLastClaimed:
                revert with 0, 17
            if endTime - devFundLastClaimed and devFundRewardRate > -1 / endTime - devFundLastClaimed:
                revert with 0, 17
            if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                if devFundAddress:
                    if not devFundAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                        revert with 0, 17
                    totalSupply = totalSupply + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                    if balanceOf[stor12] > !((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                        revert with 0, 17
                    balanceOf[stor12] = balanceOf[stor12] + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                    emit Transfer(((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                    devFundLastClaimed = block.timestamp
}



}
