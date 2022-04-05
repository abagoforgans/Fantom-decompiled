contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6; offset 1
uint256 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of address sub_742f8b1d;
array of address sub_165aa73e;

function sub_02c41f8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function sub_165aa73e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_165aa73e.length
    return address(sub_165aa73e[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_742f8b1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_742f8b1d.length
    return address(sub_742f8b1d[arg1])
}

function sub_b1cae69d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
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

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if block.difficulty and block.timestamp > -1 / block.difficulty:
        revert with 'NH{q', 17
    if block.difficulty * block.timestamp % 10 > -2:
        revert with 'NH{q', 17
    stor5 = (block.difficulty * block.timestamp % 10) + 1
    if arg3 and stor5 > -1 / arg3:
        revert with 'NH{q', 17
    uint256(stor6.field_0) = arg3 * stor5 / 100
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if arg3 < uint256(stor6.field_0):
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < uint255(stor6.field_1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= uint255(stor6.field_1)
    if totalSupply < uint255(stor6.field_1):
        revert with 'NH{q', 17
    totalSupply -= uint255(stor6.field_1)
    emit Transfer(uint255(stor6.field_1), arg1, 0);
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 + uint256(stor6.field_0) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - uint256(stor6.field_0)
    if not stor7[address(arg2)]:
        sub_742f8b1d.length++
        address(sub_742f8b1d[sub_742f8b1d.length]) = arg2
        stor7[address(arg2)] = 1
    if balanceOf[address(arg1)] - arg3 <= 10^18:
        stor8[address(arg1)] = 0
    else:
        if balanceOf[address(arg1)] - arg3 >= 100000000 * 10^18:
            stor8[address(arg1)] = 0
        else:
            stor8[address(arg1)] = 1
    if arg3 - uint256(stor6.field_0) <= 10^18:
        stor8[address(arg2)] = 0
    else:
        if arg3 - uint256(stor6.field_0) >= 100000000 * 10^18:
            stor8[address(arg2)] = 0
        else:
            stor8[address(arg2)] = 1
    sub_165aa73e.length = 0
    idx = 0
    while sub_165aa73e.length > idx:
        uint256(sub_165aa73e[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_742f8b1d.length:
        mem[32] = 8
        if idx >= sub_742f8b1d.length:
            revert with 'NH{q', 50
        if bool(stor8[address(stor9[idx])]) != 1:
            mem[0] = address(sub_742f8b1d[idx])
            mem[32] = 7
            stor7[address(stor9[idx])] = 0
        else:
            sub_165aa73e.length++
            mem[0] = 10
            address(sub_165aa73e[sub_165aa73e.length]) = address(sub_742f8b1d[idx])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_742f8b1d.length = sub_165aa73e.length
    if not sub_165aa73e.length:
        idx = 0
        while sub_742f8b1d.length > idx:
            uint256(sub_742f8b1d[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while sub_165aa73e.length > idx:
            uint256(sub_742f8b1d[s]) = uint256(sub_165aa73e[idx])
            s = s + 1
            idx = idx + 1
            continue 
        idx = sub_165aa73e.length
        while sub_742f8b1d.length > idx:
            uint256(sub_742f8b1d[idx]) = 0
            idx = idx + 1
            continue 
    emit Transfer((arg3 - uint256(stor6.field_0)), arg1, arg2);
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if block.difficulty and block.timestamp > -1 / block.difficulty:
        revert with 'NH{q', 17
    if block.difficulty * block.timestamp % 10 > -2:
        revert with 'NH{q', 17
    stor5 = (block.difficulty * block.timestamp % 10) + 1
    if arg2 and stor5 > -1 / arg2:
        revert with 'NH{q', 17
    uint256(stor6.field_0) = arg2 * stor5 / 100
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if arg2 < uint256(stor6.field_0):
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < uint255(stor6.field_1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= uint255(stor6.field_1)
    if totalSupply < uint255(stor6.field_1):
        revert with 'NH{q', 17
    totalSupply -= uint255(stor6.field_1)
    emit Transfer(uint255(stor6.field_1), msg.sender, 0);
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 + uint256(stor6.field_0) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - uint256(stor6.field_0)
    if not stor7[address(arg1)]:
        sub_742f8b1d.length++
        address(sub_742f8b1d[sub_742f8b1d.length]) = arg1
        stor7[address(arg1)] = 1
    if balanceOf[address(msg.sender)] - arg2 <= 10^18:
        stor8[address(msg.sender)] = 0
        if arg2 - uint256(stor6.field_0) <= 10^18:
            stor8[address(arg1)] = 0
            sub_165aa73e.length = 0
            idx = 0
            while sub_165aa73e.length > idx:
                uint256(sub_165aa73e[idx]) = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_742f8b1d.length:
                mem[32] = 8
                if idx >= sub_742f8b1d.length:
                    revert with 'NH{q', 50
                if bool(stor8[address(stor9[idx])]) != 1:
                    mem[0] = address(sub_742f8b1d[idx])
                    mem[32] = 7
                    stor7[address(stor9[idx])] = 0
                else:
                    sub_165aa73e.length++
                    mem[0] = 10
                    address(sub_165aa73e[sub_165aa73e.length]) = address(sub_742f8b1d[idx])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            sub_742f8b1d.length = sub_165aa73e.length
            if not sub_165aa73e.length:
                idx = 0
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_165aa73e.length > idx:
                    uint256(sub_742f8b1d[s]) = uint256(sub_165aa73e[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_165aa73e.length
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            if arg2 - uint256(stor6.field_0) >= 100000000 * 10^18:
                stor8[address(arg1)] = 0
            else:
                stor8[address(arg1)] = 1
            sub_165aa73e.length = 0
            idx = 0
            while sub_165aa73e.length > idx:
                uint256(sub_165aa73e[idx]) = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_742f8b1d.length:
                mem[32] = 8
                if idx >= sub_742f8b1d.length:
                    revert with 'NH{q', 50
                if bool(stor8[address(stor9[idx])]) != 1:
                    mem[0] = address(sub_742f8b1d[idx])
                    mem[32] = 7
                    stor7[address(stor9[idx])] = 0
                else:
                    sub_165aa73e.length++
                    mem[0] = 10
                    address(sub_165aa73e[sub_165aa73e.length]) = address(sub_742f8b1d[idx])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            sub_742f8b1d.length = sub_165aa73e.length
            if not sub_165aa73e.length:
                idx = 0
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_165aa73e.length > idx:
                    uint256(sub_742f8b1d[s]) = uint256(sub_165aa73e[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_165aa73e.length
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
    else:
        if balanceOf[address(msg.sender)] - arg2 >= 100000000 * 10^18:
            stor8[address(msg.sender)] = 0
        else:
            stor8[address(msg.sender)] = 1
        if arg2 - uint256(stor6.field_0) <= 10^18:
            stor8[address(arg1)] = 0
            sub_165aa73e.length = 0
            idx = 0
            while sub_165aa73e.length > idx:
                uint256(sub_165aa73e[idx]) = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_742f8b1d.length:
                mem[32] = 8
                if idx >= sub_742f8b1d.length:
                    revert with 'NH{q', 50
                if bool(stor8[address(stor9[idx])]) != 1:
                    mem[0] = address(sub_742f8b1d[idx])
                    mem[32] = 7
                    stor7[address(stor9[idx])] = 0
                else:
                    sub_165aa73e.length++
                    mem[0] = 10
                    address(sub_165aa73e[sub_165aa73e.length]) = address(sub_742f8b1d[idx])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            sub_742f8b1d.length = sub_165aa73e.length
            if not sub_165aa73e.length:
                idx = 0
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_165aa73e.length > idx:
                    uint256(sub_742f8b1d[s]) = uint256(sub_165aa73e[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_165aa73e.length
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            if arg2 - uint256(stor6.field_0) >= 100000000 * 10^18:
                stor8[address(arg1)] = 0
            else:
                stor8[address(arg1)] = 1
            sub_165aa73e.length = 0
            idx = 0
            while sub_165aa73e.length > idx:
                uint256(sub_165aa73e[idx]) = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_742f8b1d.length:
                mem[32] = 8
                if idx >= sub_742f8b1d.length:
                    revert with 'NH{q', 50
                if bool(stor8[address(stor9[idx])]) != 1:
                    mem[0] = address(sub_742f8b1d[idx])
                    mem[32] = 7
                    stor7[address(stor9[idx])] = 0
                else:
                    sub_165aa73e.length++
                    mem[0] = 10
                    address(sub_165aa73e[sub_165aa73e.length]) = address(sub_742f8b1d[idx])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            sub_742f8b1d.length = sub_165aa73e.length
            if not sub_165aa73e.length:
                idx = 0
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_165aa73e.length > idx:
                    uint256(sub_742f8b1d[s]) = uint256(sub_165aa73e[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_165aa73e.length
                while sub_742f8b1d.length > idx:
                    uint256(sub_742f8b1d[idx]) = 0
                    idx = idx + 1
                    continue 
    emit Transfer((arg2 - uint256(stor6.field_0)), msg.sender, arg1);
    return 1
}



}
