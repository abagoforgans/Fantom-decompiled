contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address sub_3d7c9c8dAddress;
address stor7;
array of address stor8;
mapping of uint256 stakeOf;
mapping of uint256 rewardOf;

function totalSupply() payable {
    return totalSupply
}

function rewardOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardOf[address(arg1)]
}

function sub_3d7c9c8d(?) payable {
    return sub_3d7c9c8dAddress
}

function stakeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeOf[address(arg1)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
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

function calculateReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stakeOf[address(arg1)] / 100)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_adeb7857(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = address(arg1)
}

function sub_43d5904d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3d7c9c8dAddress = address(arg1)
}

function isStakeholder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] == arg1:
            return 1, idx
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function addStakeholder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] == arg1:
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor8.length++
    stor8[stor8.length] = arg1
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

function distributeRewards() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor8.length:
        if rewardOf[stor8[idx]] > !(stakeOf[stor8[idx]] / 100):
            revert with 0, 17
        mem[0] = stor8[idx]
        mem[32] = 10
        rewardOf[stor8[idx]] += stakeOf[stor8[idx]] / 100
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawReward() payable {
    rewardOf[msg.sender] = 0
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !rewardOf[msg.sender]:
        revert with 0, 17
    totalSupply += rewardOf[msg.sender]
    if balanceOf[address(msg.sender)] > !rewardOf[msg.sender]:
        revert with 0, 17
    balanceOf[address(msg.sender)] += rewardOf[msg.sender]
    emit Transfer(rewardOf[msg.sender], 0, msg.sender);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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

function removeStakeholder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] != arg1:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 >= stor8.length:
            revert with 0, 50
        if idx >= stor8.length:
            revert with 0, 50
        stor8[idx] = stor8[stor8.length]
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length] = 0
        stor8.length--
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

function sub_041eccde(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_3d7c9c8dAddress)
    call sub_3d7c9c8dAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor7, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Could not transfer tokens from your address to this contract'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
}

function createStake(uint256 arg1) payable {
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
    if not stakeOf[msg.sender]:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if stor8[idx] != msg.sender:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stakeOf[msg.sender] > !arg1:
                revert with 0, 17
            stakeOf[msg.sender] += arg1
        stor8.length++
        stor8[stor8.length] = msg.sender
    if stakeOf[msg.sender] > !arg1:
        revert with 0, 17
    stakeOf[msg.sender] += arg1
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

function totalStakes() payable {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 9
        if s > !stakeOf[stor8[idx]]:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        s = s + stakeOf[stor8[idx]]
        continue 
    return (s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length)
}

function removeStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakeOf[msg.sender] < arg1:
        revert with 0, 17
    stakeOf[msg.sender] -= arg1
    if not stakeOf[msg.sender] - arg1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if stor8[idx] != msg.sender:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor8.length < 1:
                revert with 0, 17
            if stor8.length - 1 >= stor8.length:
                revert with 0, 50
            if idx >= stor8.length:
                revert with 0, 50
            stor8[idx] = stor8[stor8.length]
            if not stor8.length:
                revert with 0, 49
            stor8[stor8.length] = 0
            stor8.length--
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !arg1:
                revert with 0, 17
            totalSupply += arg1
            if balanceOf[address(msg.sender)] > !arg1:
                revert with 0, 17
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > !arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function totalRewards() payable {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 10
        if s > !rewardOf[stor8[idx]]:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        s = s + rewardOf[stor8[idx]]
        continue 
    return (s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length)
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
