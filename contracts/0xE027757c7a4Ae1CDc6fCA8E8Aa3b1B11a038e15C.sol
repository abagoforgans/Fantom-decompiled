contract main {




// =====================  Runtime code  =====================


const decimals = 8


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 maxSupply;
array of struct stor5;
array of struct stor6;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxSupply() payable {
    return maxSupply
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

function sub_c3f70b52(?) payable {
    if totalSupply and 161803398875 > -1 / totalSupply:
        revert with 'NH{q', 17
    return (161803398875 * totalSupply / 10^11 / 100)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if totalSupply and 161803398875 > -1 / totalSupply:
        revert with 'NH{q', 17
    if arg2 > 161803398875 * totalSupply / 10^11 / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds limit'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if arg2 and 1000000000000000 * 10^18 > -1 / arg2:
        revert with 'NH{q', 17
    if totalSupply and 100 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not maxSupply:
        revert with 'NH{q', 18
    if 100 < 100 * totalSupply / maxSupply:
        revert with 'NH{q', 17
    if arg2 and 100 > -1 / arg2:
        revert with 'NH{q', 17
    if not 161803398875 * totalSupply / 10^11 / 100:
        revert with 'NH{q', 18
    if 100 < 100 * arg2 / 161803398875 * totalSupply / 10^11 / 100:
        revert with 'NH{q', 17
    if 1000000000000000 * 10^18 * arg2 and -(100 * totalSupply / maxSupply) + 100 > -1 / 1000000000000000 * 10^18 * arg2:
        revert with 'NH{q', 17
    if (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100 and -(100 * arg2 / 161803398875 * totalSupply / 10^11 / 100) + 100 > -1 / (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100:
        revert with 'NH{q', 17
    if (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 and 161803398875 > -1 / (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100:
        revert with 'NH{q', 17
    if 161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 < 161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2:
        revert with 'NH{q', 17
    if (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18 > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
        revert with 'NH{q', 17
    if totalSupply > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) + -(161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
        revert with 'NH{q', 17
    if totalSupply + ((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) + (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) <= maxSupply:
        if (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18 > 0:
            if 161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18 > 0:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                if totalSupply + ((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) > maxSupply:
                    revert with 0, 'ERC20Capped: cap exceeded'
                if totalSupply > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                totalSupply += (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18
                if balanceOf[address(msg.sender)] > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] += (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18
                emit Transfer(((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18), 0, msg.sender);
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                if totalSupply + (161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) > maxSupply:
                    revert with 0, 'ERC20Capped: cap exceeded'
                if totalSupply > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                totalSupply += 161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18
                if balanceOf[address(arg1)] > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += 161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18
                emit Transfer((161803398875 * (100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) - (100 * arg2 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg2) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg2) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18), 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if totalSupply and 161803398875 > -1 / totalSupply:
        revert with 'NH{q', 17
    if arg3 > 161803398875 * totalSupply / 10^11 / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds limit'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 and 1000000000000000 * 10^18 > -1 / arg3:
        revert with 'NH{q', 17
    if totalSupply and 100 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not maxSupply:
        revert with 'NH{q', 18
    if 100 < 100 * totalSupply / maxSupply:
        revert with 'NH{q', 17
    if arg3 and 100 > -1 / arg3:
        revert with 'NH{q', 17
    if not 161803398875 * totalSupply / 10^11 / 100:
        revert with 'NH{q', 18
    if 100 < 100 * arg3 / 161803398875 * totalSupply / 10^11 / 100:
        revert with 'NH{q', 17
    if 1000000000000000 * 10^18 * arg3 and -(100 * totalSupply / maxSupply) + 100 > -1 / 1000000000000000 * 10^18 * arg3:
        revert with 'NH{q', 17
    if (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100 and -(100 * arg3 / 161803398875 * totalSupply / 10^11 / 100) + 100 > -1 / (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100:
        revert with 'NH{q', 17
    if (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 and 161803398875 > -1 / (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100:
        revert with 'NH{q', 17
    if 161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 < 161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2:
        revert with 'NH{q', 17
    if (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18 > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
        revert with 'NH{q', 17
    if totalSupply > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) + -(161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
        revert with 'NH{q', 17
    if totalSupply + ((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) + (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) <= maxSupply:
        if (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18 > 0:
            if 161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18 > 0:
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                if totalSupply + ((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) > maxSupply:
                    revert with 0, 'ERC20Capped: cap exceeded'
                if totalSupply > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                totalSupply += (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18
                if balanceOf[address(arg1)] > -((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18
                emit Transfer(((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11) - (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2) / 1000000000000000 * 10^18), 0, arg1);
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                if totalSupply + (161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) > maxSupply:
                    revert with 0, 'ERC20Capped: cap exceeded'
                if totalSupply > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                totalSupply += 161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18
                if balanceOf[address(arg2)] > -(161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += 161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18
                emit Transfer((161803398875 * (100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) - (100 * arg3 / 161803398875 * totalSupply / 10^11 / 100 * (100000000000000000 * 10^18 * arg3) - (1000000000000000 * 10^18 * 100 * totalSupply / maxSupply * arg3) / 100) / 100 / 10^11 / 2 / 1000000000000000 * 10^18), 0, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
