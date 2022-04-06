contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6; offset 1
uint256 stor6;
array of struct stor7;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor10;
uint8 paused; offset 160
uint128 stor11; offset 160
address owner;

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(paused)
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

function snapshot() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10++
    emit Snapshot(stor10);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor11 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor11 = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor10:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor8.length:
        idx = stor8.length
        while 0 < idx:
            if 0 > -bool(idx) - 1:
                revert with 'NH{q', 17
            if 0 > -(idx / 2) - 1:
                revert with 'NH{q', 17
            if idx / 2 > -1:
                revert with 'NH{q', 17
            if idx / 2 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[0.5 / idx] > arg1:
                idx = idx / 2
                continue 
            if idx / 2 > -2:
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor8.length:
        return totalSupply
    if 0 >= stor9.length:
        revert with 'NH{q', 50
    return stor9
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor10:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor7[address(arg1)].field_0:
        idx = stor7[mem[0]].field_0
        while 0 < idx:
            if 0 > -bool(idx) - 1:
                revert with 'NH{q', 17
            if 0 > -(idx / 2) - 1:
                revert with 'NH{q', 17
            if idx / 2 > -1:
                revert with 'NH{q', 17
            if idx / 2 >= stor7[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 7)
            if stor7[address(arg1)][0.5 / idx].field_0 > arg2:
                idx = idx / 2
                continue 
            if idx / 2 > -2:
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor7[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    if 0 >= stor7[address(arg1)].field_256:
        revert with 'NH{q', 50
    return stor7[address(arg1)][1].field_0
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor7[address(arg1)].field_0:
        if 0 < stor10:
            stor7[address(arg1)].field_0++
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
            stor7[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        if stor7[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor7[address(arg1)].field_0 - 1 >= stor7[address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 < stor10:
            stor7[address(arg1)].field_0++
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
            stor7[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    if not stor8.length:
        if 0 < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
    else:
        if stor8.length < 1:
            revert with 'NH{q', 17
        if stor8.length - 1 >= stor8.length:
            revert with 'NH{q', 50
        if stor8[stor8.length] < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender:
        if not stor7[address(msg.sender)].field_0:
            if 0 < stor10:
                stor7[address(msg.sender)].field_0++
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = stor10
                stor7[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor7', 7))) + stor7[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor7[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[address(msg.sender)].field_0 - 1 >= stor7[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 < stor10:
                stor7[address(msg.sender)].field_0++
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = stor10
                stor7[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor7', 7))) + stor7[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    else:
        if not stor7[0].field_0:
            if 0 < stor10:
                stor7[0].field_0++
                stor7[0][stor7[0].field_0].field_0 = stor10
                stor7[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor7', 7))) + stor7[0].field_256].field_0 = balanceOf
        else:
            if stor7[0].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[0].field_0 - 1 >= stor7[0].field_0:
                revert with 'NH{q', 50
            if stor7[0][stor7[0].field_0].field_0 < stor10:
                stor7[0].field_0++
                stor7[0][stor7[0].field_0].field_0 = stor10
                stor7[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor7', 7))) + stor7[0].field_256].field_0 = balanceOf
    if not stor8.length:
        if 0 < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
    else:
        if stor8.length < 1:
            revert with 'NH{q', 17
        if stor8.length - 1 >= stor8.length:
            revert with 'NH{q', 50
        if stor8[stor8.length] < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1:
        if not stor7[address(arg1)].field_0:
            if 0 < stor10:
                stor7[address(arg1)].field_0++
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
                stor7[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if stor7[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[address(arg1)].field_0 - 1 >= stor7[address(arg1)].field_0:
                revert with 'NH{q', 50
            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 < stor10:
                stor7[address(arg1)].field_0++
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
                stor7[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        if not stor7[0].field_0:
            if 0 < stor10:
                stor7[0].field_0++
                stor7[0][stor7[0].field_0].field_0 = stor10
                stor7[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor7', 7))) + stor7[0].field_256].field_0 = balanceOf
        else:
            if stor7[0].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[0].field_0 - 1 >= stor7[0].field_0:
                revert with 'NH{q', 50
            if stor7[0][stor7[0].field_0].field_0 < stor10:
                stor7[0].field_0++
                stor7[0][stor7[0].field_0].field_0 = stor10
                stor7[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor7', 7))) + stor7[0].field_256].field_0 = balanceOf
    if not stor8.length:
        if 0 < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
    else:
        if stor8.length < 1:
            revert with 'NH{q', 17
        if stor8.length - 1 >= stor8.length:
            revert with 'NH{q', 50
        if stor8[stor8.length] < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        if not stor7[address(arg1)].field_0:
            if 0 < stor10:
                stor7[address(arg1)].field_0++
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
                stor7[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if stor7[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[address(arg1)].field_0 - 1 >= stor7[address(arg1)].field_0:
                revert with 'NH{q', 50
            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 < stor10:
                stor7[address(arg1)].field_0++
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
                stor7[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        if not stor8.length:
            if 0 < stor10:
                stor8.length++
                stor8[stor8.length] = stor10
                stor9.length++
                stor9[stor9.length] = totalSupply
        else:
            if stor8.length < 1:
                revert with 'NH{q', 17
            if stor8.length - 1 >= stor8.length:
                revert with 'NH{q', 50
            if stor8[stor8.length] < stor10:
                stor8.length++
                stor8[stor8.length] = stor10
                stor9.length++
                stor9[stor9.length] = totalSupply
    else:
        if not stor7[address(msg.sender)].field_0:
            if 0 < stor10:
                stor7[address(msg.sender)].field_0++
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = stor10
                stor7[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor7', 7))) + stor7[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor7[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[address(msg.sender)].field_0 - 1 >= stor7[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 < stor10:
                stor7[address(msg.sender)].field_0++
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = stor10
                stor7[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor7', 7))) + stor7[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        if arg1:
            if not stor7[address(arg1)].field_0:
                if 0 < stor10:
                    stor7[address(arg1)].field_0++
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
                    stor7[address(arg1)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
            else:
                if stor7[address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if stor7[address(arg1)].field_0 - 1 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 < stor10:
                    stor7[address(arg1)].field_0++
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor10
                    stor7[address(arg1)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
        else:
            if not stor8.length:
                if 0 < stor10:
                    stor8.length++
                    stor8[stor8.length] = stor10
                    stor9.length++
                    stor9[stor9.length] = totalSupply
            else:
                if stor8.length < 1:
                    revert with 'NH{q', 17
                if stor8.length - 1 >= stor8.length:
                    revert with 'NH{q', 50
                if stor8[stor8.length] < stor10:
                    stor8.length++
                    stor8[stor8.length] = stor10
                    stor9.length++
                    stor9[stor9.length] = totalSupply
    if block.difficulty and block.timestamp > -1 / block.difficulty:
        revert with 'NH{q', 17
    if block.difficulty * block.timestamp % 20 > -2:
        revert with 'NH{q', 17
    stor5 = (block.difficulty * block.timestamp % 20) + 1
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
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender:
        if not stor7[address(msg.sender)].field_0:
            if 0 < stor10:
                stor7[address(msg.sender)].field_0++
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = stor10
                stor7[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor7', 7))) + stor7[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
        else:
            if stor7[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[address(msg.sender)].field_0 - 1 >= stor7[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 < stor10:
                stor7[address(msg.sender)].field_0++
                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = stor10
                stor7[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor7', 7))) + stor7[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    else:
        if not stor7[0].field_0:
            if 0 < stor10:
                stor7[0].field_0++
                stor7[0][stor7[0].field_0].field_0 = stor10
                stor7[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor7', 7))) + stor7[0].field_256].field_0 = balanceOf
        else:
            if stor7[0].field_0 < 1:
                revert with 'NH{q', 17
            if stor7[0].field_0 - 1 >= stor7[0].field_0:
                revert with 'NH{q', 50
            if stor7[0][stor7[0].field_0].field_0 < stor10:
                stor7[0].field_0++
                stor7[0][stor7[0].field_0].field_0 = stor10
                stor7[0].field_256++
                stor[('array', 1, ('map', 0, ('name', 'stor7', 7))) + stor7[0].field_256].field_0 = balanceOf
    if not stor8.length:
        if 0 < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
    else:
        if stor8.length < 1:
            revert with 'NH{q', 17
        if stor8.length - 1 >= stor8.length:
            revert with 'NH{q', 50
        if stor8[stor8.length] < stor10:
            stor8.length++
            stor8[stor8.length] = stor10
            stor9.length++
            stor9[stor9.length] = totalSupply
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
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
