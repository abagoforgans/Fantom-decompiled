contract main {




// =====================  Runtime code  =====================


const decimals = 18

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function totalSupply() payable {
    return totalSupply
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    return checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256
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

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SUM::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 <= arg2:
        if numCheckpoints[address(arg1)] < 1:
            revert with 0, 17
        return checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        if uint32(numCheckpoints[address(arg1)] - 1) < uint32(idx):
            revert with 0, 17
        if uint32(numCheckpoints[address(arg1)] - 1) < uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2:
            revert with 0, 17
        mem[0] = uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2))
        mem[32] = sha3(address(arg1), 6)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = checkpoints[address(arg1)][uint32(stor7[address(arg1)] - 1) - (uint32(uint32(stor7[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0
        mem[_33 + 32] = checkpoints[address(arg1)][uint32(stor7[address(arg1)] - 1) - (uint32(uint32(stor7[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 == checkpoints[address(arg1)][uint32(stor7[address(arg1)] - 1) - (uint32(uint32(stor7[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            return checkpoints[address(arg1)][uint32(stor7[address(arg1)] - 1) - (uint32(uint32(stor7[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 > checkpoints[address(arg1)][uint32(stor7[address(arg1)] - 1) - (uint32(uint32(stor7[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            idx = uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)
            continue 
        if uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)) < 1:
            revert with 0, 17
        idx = idx
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
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
    if not delegates[address(arg2)]:
        delegates[address(arg2)] = arg2
    if arg1 != arg2:
        if arg3 > 0:
            if not arg1:
                if arg2:
                    if not numCheckpoints[address(arg2)]:
                        if 0 > !arg3:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                        0
                        if numCheckpoints[address(arg2)] <= 0:
                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        else:
                            if numCheckpoints[address(arg2)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg2)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 = arg3
                            else:
                                checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        emit DelegateVotesChanged(0, arg3, arg2);
                    else:
                        if numCheckpoints[address(arg2)] < 1:
                            revert with 0, 17
                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 > !arg3:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                        0
                        if numCheckpoints[address(arg2)] <= 0:
                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        else:
                            if numCheckpoints[address(arg2)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg2)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 += arg3
                            else:
                                checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256, checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3, arg2);
            else:
                if not numCheckpoints[address(arg1)]:
                    if 0 < arg3:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                    0
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = -arg3
                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                            revert with 0, 17
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, -arg3, arg1);
                        if arg2:
                            if not numCheckpoints[address(arg2)]:
                                if 0 > !arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                    if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                emit DelegateVotesChanged(0, arg3, arg2);
                            else:
                                if numCheckpoints[address(arg2)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 > !arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                    if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256, checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3, arg2);
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 0, 17
                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, arg1);
                            if arg2:
                                if not numCheckpoints[address(arg2)]:
                                    if 0 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(0, arg3, arg2);
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256, checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3, arg2);
                        else:
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = -arg3
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, -arg3, arg1);
                            if arg2:
                                if not numCheckpoints[address(arg2)]:
                                    if 0 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(0, arg3, arg2);
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256, checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3, arg2);
                else:
                    if numCheckpoints[address(arg1)] < 1:
                        revert with 0, 17
                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 < arg3:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                    0
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 - arg3
                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                            revert with 0, 17
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 - arg3, arg1);
                        if arg2:
                            if not numCheckpoints[address(arg2)]:
                                if 0 > !arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                    if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                emit DelegateVotesChanged(0, arg3, arg2);
                            else:
                                if numCheckpoints[address(arg2)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 > !arg3:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg2)] <= 0:
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                    if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256, checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3, arg2);
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 0, 17
                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 - arg3, arg1);
                            if arg2:
                                if not numCheckpoints[address(arg2)]:
                                    if 0 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(0, arg3, arg2);
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256, checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3, arg2);
                        else:
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 - arg3
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 - arg3, arg1);
                            if arg2:
                                if not numCheckpoints[address(arg2)]:
                                    if 0 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(0, arg3, arg2);
                                else:
                                    if numCheckpoints[address(arg2)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 > !arg3:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg2)] <= 0:
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                        if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    else:
                                        if numCheckpoints[address(arg2)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg2)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg2)][stor7[address(arg2)]].field_256 = checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3
                                            if 1 > -numCheckpoints[address(arg2)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg2)] = uint32(numCheckpoints[address(arg2)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256, checkpoints[address(arg2)][stor7[address(arg2)] - 1 << 224].field_256 + arg3, arg2);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if not numCheckpoints[address(arg1)]:
                        if 0 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 0, 17
                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
            else:
                if not numCheckpoints[stor5[address(msg.sender)]]:
                    if 0 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                    0
                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor5[address(msg.sender)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                    0
                    if numCheckpoints[stor5[address(msg.sender)]] <= 0:
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor5[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor5[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]]].field_256 = checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor5[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(msg.sender)]] = uint32(numCheckpoints[stor5[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor5[address(msg.sender)]][stor7[stor5[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 >= uint255(stor3.length) * 0.5:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 >= stor3.length.field_1:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len uint255(stor3.length) * 0.5]), this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'SUM::delegateBySig: invalid signature'
        if nonces[address(signer)] == -1:
            revert with 0, 17
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 'SUM::delegateBySig: invalid nonce'
        if block.timestamp > arg3:
            revert with 0, 'SUM::delegateBySig: signature expired'
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if balanceOf[address(signer)] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if not numCheckpoints[address(arg1)]:
                            if 0 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                else:
                    if not numCheckpoints[stor5[address(signer)]]:
                        if 0 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                        0
                        if numCheckpoints[stor5[address(signer)]] <= 0:
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor5[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = -balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor5[address(signer)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                        0
                        if numCheckpoints[stor5[address(signer)]] <= 0:
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256, checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor5[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                                emit DelegateVotesChanged(checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256, checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256, checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 >= uint255(stor3.length) * 0.5:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 >= stor3.length.field_1:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len stor3.length.field_1]), this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'SUM::delegateBySig: invalid signature'
        if nonces[address(signer)] == -1:
            revert with 0, 17
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 'SUM::delegateBySig: invalid nonce'
        if block.timestamp > arg3:
            revert with 0, 'SUM::delegateBySig: signature expired'
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if balanceOf[address(signer)] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if not numCheckpoints[address(arg1)]:
                            if 0 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                else:
                    if not numCheckpoints[stor5[address(signer)]]:
                        if 0 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                        0
                        if numCheckpoints[stor5[address(signer)]] <= 0:
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor5[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = -balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor5[address(signer)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                        0
                        if numCheckpoints[stor5[address(signer)]] <= 0:
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256, checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor5[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor5[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                                emit DelegateVotesChanged(checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256, checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 725 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]]].field_256 = checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor5[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor5[address(signer)]] = uint32(numCheckpoints[stor5[address(signer)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256, checkpoints[stor5[address(signer)]][stor7[stor5[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0xfe53554d3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 789 len 13] >> 152,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor7[address(arg1)]].field_256 = checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor7[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
}



}
