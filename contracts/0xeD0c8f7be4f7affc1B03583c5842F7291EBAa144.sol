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
array of struct stor9;
array of struct stor10;
uint256 sub_d14f6c06;
address winnerAddress;

function sub_02c41f8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_b1cae69d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function Winner() payable {
    return winnerAddress
}

function sub_d14f6c06(?) payable {
    return sub_d14f6c06
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

function ShowAddressList() payable {
    mem[64] = (32 * stor9.length) + 128
    mem[96] = stor9.length
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        idx = 0
        s = 128
        t = (32 * stor9.length) + 192
        while idx < stor9.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor9.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor9.length) + -mem[64] + 192
}

function ShowHoldersList() payable {
    mem[64] = (32 * stor10.length) + 128
    mem[96] = stor10.length
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        idx = 0
        s = 128
        t = (32 * stor10.length) + 192
        while idx < stor10.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = address(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor10.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor10.length) + -mem[64] + 192
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
        stor9.length++
        stor9[stor9.length].field_0 = arg1
        stor7[address(arg1)] = 1
    if balanceOf[address(msg.sender)] - arg2 <= 10^18:
        stor8[address(msg.sender)] = 0
    else:
        if balanceOf[address(msg.sender)] - arg2 >= 100000000 * 10^18:
            stor8[address(msg.sender)] = 0
        else:
            stor8[address(msg.sender)] = 1
    if arg2 - uint256(stor6.field_0) <= 10^18:
        stor8[address(arg1)] = 0
    else:
        if arg2 - uint256(stor6.field_0) >= 100000000 * 10^18:
            stor8[address(arg1)] = 0
        else:
            stor8[address(arg1)] = 1
    stor10.length = 0
    idx = 0
    while stor10.length > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor9.length:
        mem[32] = 8
        if idx >= stor9.length:
            revert with 'NH{q', 50
        if bool(stor8[stor9[idx].field_0]) != 1:
            mem[0] = stor9[idx].field_0
            mem[32] = 7
            stor7[stor9[idx].field_0] = 0
        else:
            stor10.length++
            mem[0] = 10
            stor10[stor10.length].field_0 = stor9[idx].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor9.length = stor10.length
    if not stor10.length:
        idx = 0
        while stor9.length > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor10.length > idx:
            stor9[s].field_0 = stor10[idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor10.length
        while stor9.length > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
    if block.difficulty and block.timestamp > -1 / block.difficulty:
        revert with 'NH{q', 17
    if not stor10.length:
        revert with 'NH{q', 18
    sub_d14f6c06 = block.difficulty * block.timestamp % stor10.length
    if sub_d14f6c06 >= stor10.length:
        revert with 'NH{q', 50
    winnerAddress = stor10[stor11].field_0
    if balanceOf[stor12] > -uint255(stor6.field_1) - 1:
        revert with 'NH{q', 17
    balanceOf[stor12] += uint255(stor6.field_1)
    emit Transfer(uint255(stor6.field_1), msg.sender, winnerAddress);
    emit Transfer((arg2 - uint256(stor6.field_0)), msg.sender, arg1);
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
        stor9.length++
        stor9[stor9.length].field_0 = arg2
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
    stor10.length = 0
    idx = 0
    while stor10.length > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor9.length:
        mem[32] = 8
        if idx >= stor9.length:
            revert with 'NH{q', 50
        if bool(stor8[stor9[idx].field_0]) != 1:
            mem[0] = stor9[idx].field_0
            mem[32] = 7
            stor7[stor9[idx].field_0] = 0
        else:
            stor10.length++
            mem[0] = 10
            stor10[stor10.length].field_0 = stor9[idx].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor9.length = stor10.length
    if not stor10.length:
        idx = 0
        while stor9.length > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor10.length > idx:
            stor9[s].field_0 = stor10[idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor10.length
        while stor9.length > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
    if block.difficulty and block.timestamp > -1 / block.difficulty:
        revert with 'NH{q', 17
    if not stor10.length:
        revert with 'NH{q', 18
    sub_d14f6c06 = block.difficulty * block.timestamp % stor10.length
    if sub_d14f6c06 >= stor10.length:
        revert with 'NH{q', 50
    winnerAddress = stor10[stor11].field_0
    if balanceOf[stor12] > -uint255(stor6.field_1) - 1:
        revert with 'NH{q', 17
    balanceOf[stor12] += uint255(stor6.field_1)
    emit Transfer(uint255(stor6.field_1), arg1, winnerAddress);
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



}
