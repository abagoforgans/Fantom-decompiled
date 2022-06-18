contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;
address stor7;
address lastWinnerAddress;
uint256 poolBalance;
uint256 sub_86b8d5a5;
array of uint256 stor11;
array of uint256 stor12;
mapping of address stor13;
array of uint256 sub_df3c1237;
address stor15;

function getTotalTickets() payable {
    return stor11.length
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_86b8d5a5(?) payable {
    return sub_86b8d5a5
}

function getNumberOfTickets() payable {
    return stor11.length
}

function getPoolBalance() payable {
    return poolBalance
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_df3c1237(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg3 < sub_df3c1237[arg1][arg2]
    return sub_df3c1237[arg1][arg2][arg3]
}

function getLastWinner() payable {
    return lastWinnerAddress
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

function sub_8fccdd63(?) payable {
    if stor5 > -1:
        revert with 'NH{q', 17
    if stor6 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    require balanceOf[address(msg.sender)] >= stor5
    if balanceOf[address(msg.sender)] < stor5:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= stor5
    if stor5 < 2 * stor6:
        revert with 'NH{q', 17
    if poolBalance > -stor5 + (2 * stor6) - 1:
        revert with 'NH{q', 17
    poolBalance = poolBalance + stor5 - (2 * stor6)
    if balanceOf[stor7] > -(2 * stor6) - 1:
        revert with 'NH{q', 17
    balanceOf[stor7] += 2 * stor6
    stor13[block.timestamp] = msg.sender
    stor11.length++
    stor11[stor11.length] = block.timestamp
    sub_df3c1237[stor10][address(msg.sender)]++
    sub_df3c1237[stor10][address(msg.sender)][sub_df3c1237[stor10][address(msg.sender)]] = block.timestamp
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and 10^18 > -1 / arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 10^18 * arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg2
    if balanceOf[address(arg1)] > (-1 * 10^18 * arg2) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), msg.sender, arg1);
    emit Transfer((10^18 * arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 and 10^18 > -1 / arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < 10^18 * arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] += -1 * 10^18 * arg3
    if balanceOf[address(arg2)] > (-1 * 10^18 * arg3) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += 10^18 * arg3
    emit Transfer((10^18 * arg3), arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < 10^18 * arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] += -1 * 10^18 * arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - (10^18 * arg3)), arg1, msg.sender);
    return 1
}

function sub_23f7f407(?) payable {
    require msg.sender == stor7
    require ext_code.size(stor15)
    call stor15.getRandomNumber() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor15)
    staticcall stor15.getNumber(uint256 arg1) with:
            gas gas_remaining wei
           args stor11.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= stor11.length:
        revert with 'NH{q', 50
    lastWinnerAddress = stor13[stor11[ext_call.return_data[0]]]
    if balanceOf[stor8] > -poolBalance - 1:
        revert with 'NH{q', 17
    balanceOf[stor8] += poolBalance
    poolBalance = 0
    idx = 0
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 13
        stor13[stor11[idx]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor11.length = stor12.length
    if not stor12.length:
        s = sha3(11)
        while sha3(11) + stor11.length > stor11.length:
            stor11.length = 0
            s = stor11.length + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor12.length > idx:
            stor11[s] = stor12[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor12.length
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    if sub_86b8d5a5 == -1:
        revert with 'NH{q', 17
    sub_86b8d5a5++
    return 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor3.length.field_1):
                if 31 < uint255(stor3.length.field_1):
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor3.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length.field_1)) + 192 len ceil32(uint255(stor3.length.field_1))] = mem[128 len ceil32(uint255(stor3.length.field_1))]
        if ceil32(uint255(stor3.length.field_1)) > uint255(stor3.length.field_1):
            mem[ceil32(uint255(stor3.length.field_1)) + uint255(stor3.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))], mem[(2 * ceil32(uint255(stor3.length.field_1))) + 192 len 2 * ceil32(uint255(stor3.length.field_1))]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor3.length.field_1):
            if 31 < uint255(stor3.length.field_1):
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while uint255(stor3.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[ceil32(stor3.length.field_1 % 128) + stor3.length.field_1 % 128 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor4.length.field_1):
                if 31 < uint255(stor4.length.field_1):
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor4.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4.length.field_1)), data=mem[128 len ceil32(uint255(stor4.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor4.length.field_1)), data=mem[128 len ceil32(uint255(stor4.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length.field_1)) + 192 len ceil32(uint255(stor4.length.field_1))] = mem[128 len ceil32(uint255(stor4.length.field_1))]
        if ceil32(uint255(stor4.length.field_1)) > uint255(stor4.length.field_1):
            mem[ceil32(uint255(stor4.length.field_1)) + uint255(stor4.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor4.length.field_1)), data=mem[128 len ceil32(uint255(stor4.length.field_1))], mem[(2 * ceil32(uint255(stor4.length.field_1))) + 192 len 2 * ceil32(uint255(stor4.length.field_1))]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor4.length.field_1):
            if 31 < uint255(stor4.length.field_1):
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while uint255(stor4.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[ceil32(stor4.length.field_1 % 128) + stor4.length.field_1 % 128 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}



}
