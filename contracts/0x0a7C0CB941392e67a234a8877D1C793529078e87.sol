contract main {




// =====================  Runtime code  =====================


const name = 'Bitgem', 0

const totalSupply = 30000000 * 10^18

const decimals = 18

const symbol = 'BGEM', 0

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[arg1]
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
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
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
        revert with 'NH{q', 17
    return checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 == -1:
        allowance[msg.sender][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 32, 37, 0x65436f6d703a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[165 len 27] >> 40, 0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Comp::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 'NH{q', 17
    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 <= arg2:
        if numCheckpoints[address(arg1)] < 1:
            revert with 'NH{q', 17
        return checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 'NH{q', 17
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        if uint32(numCheckpoints[address(arg1)] - 1) < uint32(idx):
            revert with 'NH{q', 17
        if uint32(numCheckpoints[address(arg1)] - 1) < uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2:
            revert with 'NH{q', 17
        mem[0] = uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2))
        mem[32] = sha3(address(arg1), 3)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = checkpoints[address(arg1)][uint32(stor4[address(arg1)] - 1) - (uint32(uint32(stor4[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0
        mem[_33 + 32] = checkpoints[address(arg1)][uint32(stor4[address(arg1)] - 1) - (uint32(uint32(stor4[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_32
        if arg2 == checkpoints[address(arg1)][uint32(stor4[address(arg1)] - 1) - (uint32(uint32(stor4[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            return checkpoints[address(arg1)][uint32(stor4[address(arg1)] - 1) - (uint32(uint32(stor4[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_32
        if arg2 > checkpoints[address(arg1)][uint32(stor4[address(arg1)] - 1) - (uint32(uint32(stor4[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            idx = uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)
            continue 
        if uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)) < 1:
            revert with 'NH{q', 17
        idx = idx
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 32, 38, 0x73436f6d703a3a7472616e736665723a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
    if not msg.sender:
        revert with 0, 'Comp::_transferTokens: cannot transfer from the zero address'
    if not arg1:
        revert with 0, 'Comp::_transferTokens: cannot transfer to the zero address'
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    54,
                    0xfe436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[278 len 10] >> 176,
                    0
    if balanceOf[address(msg.sender)] < Mask(96, 0, arg2):
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - Mask(96, 0, arg2))
    if balanceOf[arg1] > -Mask(96, 0, arg2) + test266151307():
        revert with 'NH{q', 17
    if Mask(96, 0, Mask(96, 0, arg2) + balanceOf[arg1]) < balanceOf[arg1]:
        revert with 0, 
                    32,
                    48,
                    0x73436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[368 len 16] >> 128,
                    0
    balanceOf[address(arg1)] = Mask(96, 0, Mask(96, 0, arg2) + balanceOf[arg1])
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[arg1]:
        if Mask(96, 0, arg2) > 0:
            if not delegates[address(msg.sender)]:
                if delegates[arg1]:
                    if not numCheckpoints[stor2[arg1]]:
                        if 0 > -Mask(96, 0, arg2) + test266151307():
                            revert with 'NH{q', 17
                        if Mask(96, 0, arg2) < 0:
                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[455 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                        0
                        if numCheckpoints[stor2[arg1]] <= 0:
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        else:
                            if numCheckpoints[stor2[arg1]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor2[arg1]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                            else:
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                    else:
                        if numCheckpoints[stor2[arg1]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 > -Mask(96, 0, arg2) + test266151307():
                            revert with 'NH{q', 17
                        if Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[455 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                        0
                        if numCheckpoints[stor2[arg1]] <= 0:
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        else:
                            if numCheckpoints[stor2[arg1]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor2[arg1]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                            else:
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
            else:
                if not numCheckpoints[stor2[address(msg.sender)]]:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[456 len 24] >> 64, 0
                    if 0 < Mask(96, 0, arg2):
                        revert with 'NH{q', 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg2))
                        if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                            revert with 'NH{q', 17
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg2)), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if not numCheckpoints[stor2[arg1]]:
                                if 0 > -Mask(96, 0, arg2) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                    if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                            else:
                                if numCheckpoints[stor2[arg1]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 > -Mask(96, 0, arg2) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                    else:
                        if numCheckpoints[stor2[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor2[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -Mask(96, 0, arg2))
                            emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg2)), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if not numCheckpoints[stor2[arg1]]:
                                    if 0 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg2))
                            if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg2)), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if not numCheckpoints[stor2[arg1]]:
                                    if 0 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                else:
                    if numCheckpoints[stor2[address(msg.sender)]] < 1:
                        revert with 'NH{q', 17
                    if Mask(96, 0, arg2) > checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[456 len 24] >> 64, 0
                    if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 < Mask(96, 0, arg2):
                        revert with 'NH{q', 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - Mask(96, 0, arg2))
                        if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                            revert with 'NH{q', 17
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - Mask(96, 0, arg2)), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if not numCheckpoints[stor2[arg1]]:
                                if 0 > -Mask(96, 0, arg2) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                    if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                            else:
                                if numCheckpoints[stor2[arg1]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 > -Mask(96, 0, arg2) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                    else:
                        if numCheckpoints[stor2[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor2[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - Mask(96, 0, arg2))
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - Mask(96, 0, arg2)), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if not numCheckpoints[stor2[arg1]]:
                                    if 0 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - Mask(96, 0, arg2))
                            if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - Mask(96, 0, arg2)), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if not numCheckpoints[stor2[arg1]]:
                                    if 0 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                                else:
                                    if numCheckpoints[stor2[arg1]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 > -Mask(96, 0, arg2) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg1]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg1]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg1]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg2) + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
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
                    if numCheckpoints[address(arg1)]:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(msg.sender)] + test266151307():
                            revert with 'NH{q', 17
                        if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[167 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if 0 > -balanceOf[address(msg.sender)] + test266151307():
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[167 len 25] >> 56, 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if not numCheckpoints[stor2[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[168 len 24] >> 64, 0
                    if 0 < balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                            revert with 'NH{q', 17
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(msg.sender)] + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if 0 > -balanceOf[address(msg.sender)] + test266151307():
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor2[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor2[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[359 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[468 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[359 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[468 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor2[address(msg.sender)]] < 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] > checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[168 len 24] >> 64, 0
                    if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 < balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                            revert with 'NH{q', 17
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(msg.sender)] + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if 0 > -balanceOf[address(msg.sender)] + test266151307():
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor2[address(msg.sender)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor2[address(msg.sender)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[359 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[468 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[359 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[468 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            if 1 > -numCheckpoints[stor2[address(msg.sender)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(msg.sender)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[423 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[532 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, 0x757a391a7f6d05fe0e88b62ed06dac3933f9266015d6ced3f084b76d63341df6, chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Comp::delegateBySig: invalid signature'
    if nonces[address(signer)] == -1:
        revert with 'NH{q', 17
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'Comp::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'Comp::delegateBySig: signature expired'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(signer)] + test266151307():
                            revert with 'NH{q', 17
                        if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        39,
                                        0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(200, 0, arg5) >> 56,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[790 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if 0 > -balanceOf[address(signer)] + test266151307():
                            revert with 'NH{q', 17
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(200, 0, arg5) >> 56,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[790 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if not numCheckpoints[stor2[address(signer)]]:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(192, 0, arg5) >> 64,
                                    0
                    if 0 < balanceOf[address(signer)]:
                        revert with 'NH{q', 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[790 len 12] >> 160,
                                    0
                    if numCheckpoints[stor2[address(signer)]] <= 0:
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        if 1 > -numCheckpoints[stor2[address(signer)]] + test266151307():
                            revert with 'NH{q', 17
                        numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(signer)] + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if 0 > -balanceOf[address(signer)] + test266151307():
                                    revert with 'NH{q', 17
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor2[address(signer)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor2[address(signer)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[873 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[982 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[873 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[982 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            if 1 > -numCheckpoints[stor2[address(signer)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if numCheckpoints[stor2[address(signer)]] < 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(signer)] > checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    40,
                                    0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(192, 0, arg5) >> 64,
                                    0
                    if checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 < balanceOf[address(signer)]:
                        revert with 'NH{q', 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[790 len 12] >> 160,
                                    0
                    if numCheckpoints[stor2[address(signer)]] <= 0:
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        if 1 > -numCheckpoints[stor2[address(signer)]] + test266151307():
                            revert with 'NH{q', 17
                        numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(signer)] + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if 0 > -balanceOf[address(signer)] + test266151307():
                                    revert with 'NH{q', 17
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor2[address(signer)]] < 1:
                            revert with 'NH{q', 17
                        if checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor2[address(signer)]] < 1:
                                revert with 'NH{q', 17
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[873 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[982 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[873 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[982 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            if 1 > -numCheckpoints[stor2[address(signer)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if 0 > -balanceOf[address(signer)] + test266151307():
                                        revert with 'NH{q', 17
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[937 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1046 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = 0
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 32, 37, 0x65436f6d703a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[165 len 27] >> 40, 0
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'Comp::_transferTokens: cannot transfer from the zero address'
        if not arg2:
            revert with 0, 'Comp::_transferTokens: cannot transfer to the zero address'
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        54,
                        0xfe436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[278 len 10] >> 176,
                        0
        if balanceOf[address(arg1)] < Mask(96, 0, arg3):
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - Mask(96, 0, arg3))
        if balanceOf[arg2] > -Mask(96, 0, arg3) + test266151307():
            revert with 'NH{q', 17
        if Mask(96, 0, Mask(96, 0, arg3) + balanceOf[arg2]) < balanceOf[arg2]:
            revert with 0, 
                        32,
                        48,
                        0x73436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[368 len 16] >> 128,
                        0
        balanceOf[address(arg2)] = Mask(96, 0, Mask(96, 0, arg3) + balanceOf[arg2])
        emit Transfer(Mask(96, 0, arg3), arg1, arg2);
        if delegates[address(arg1)] != delegates[arg2]:
            if Mask(96, 0, arg3) > 0:
                if not delegates[address(arg1)]:
                    if delegates[arg2]:
                        if not numCheckpoints[stor2[arg2]]:
                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                revert with 'NH{q', 17
                            if Mask(96, 0, arg3) < 0:
                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[455 len 25] >> 56, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                            0
                            if numCheckpoints[stor2[arg2]] <= 0:
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            else:
                                if numCheckpoints[stor2[arg2]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                else:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if numCheckpoints[stor2[arg2]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                revert with 'NH{q', 17
                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[455 len 25] >> 56, 0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                            0
                            if numCheckpoints[stor2[arg2]] <= 0:
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            else:
                                if numCheckpoints[stor2[arg2]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                else:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                else:
                    if not numCheckpoints[stor2[address(arg1)]]:
                        if Mask(96, 0, arg3) > 0:
                            revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[456 len 24] >> 64, 0
                        if 0 < Mask(96, 0, arg3):
                            revert with 'NH{q', 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                        0
                        if numCheckpoints[stor2[address(arg1)]] <= 0:
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                            if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if not numCheckpoints[stor2[arg2]]:
                                    if 0 > -Mask(96, 0, arg3) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                        else:
                            if numCheckpoints[stor2[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor2[address(arg1)]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                    else:
                        if numCheckpoints[stor2[address(arg1)]] < 1:
                            revert with 'NH{q', 17
                        if Mask(96, 0, arg3) > checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[456 len 24] >> 64, 0
                        if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 < Mask(96, 0, arg3):
                            revert with 'NH{q', 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                        0
                        if numCheckpoints[stor2[address(arg1)]] <= 0:
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                            if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                revert with 'NH{q', 17
                            numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if not numCheckpoints[stor2[arg2]]:
                                    if 0 > -Mask(96, 0, arg3) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                        revert with 'NH{q', 17
                                    if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                        else:
                            if numCheckpoints[stor2[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor2[address(arg1)]] < 1:
                                    revert with 'NH{q', 17
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
    else:
        if allowance[address(arg1)][msg.sender] == test266151307():
            if not arg1:
                revert with 0, 'Comp::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'Comp::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            54,
                            0xfe436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[278 len 10] >> 176,
                            0
            if balanceOf[address(arg1)] < Mask(96, 0, arg3):
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - Mask(96, 0, arg3))
            if balanceOf[arg2] > -Mask(96, 0, arg3) + test266151307():
                revert with 'NH{q', 17
            if Mask(96, 0, Mask(96, 0, arg3) + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            48,
                            0x73436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[368 len 16] >> 128,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, Mask(96, 0, arg3) + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if not numCheckpoints[stor2[arg2]]:
                                if 0 > -Mask(96, 0, arg3) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[455 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if numCheckpoints[stor2[arg2]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[455 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                    else:
                        if not numCheckpoints[stor2[address(arg1)]]:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[456 len 24] >> 64, 0
                            if 0 < Mask(96, 0, arg3):
                                revert with 'NH{q', 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if numCheckpoints[stor2[address(arg1)]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor2[address(arg1)]] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                    emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                    if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                        else:
                            if numCheckpoints[stor2[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            if Mask(96, 0, arg3) > checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[456 len 24] >> 64, 0
                            if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 < Mask(96, 0, arg3):
                                revert with 'NH{q', 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[564 len 12] >> 160,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if numCheckpoints[stor2[address(arg1)]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor2[address(arg1)]] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[647 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[756 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                    if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[711 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[820 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            61,
                            0x73436f6d703a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[285 len 3] >> 232,
                            0
            if allowance[address(arg1)][msg.sender] < Mask(96, 0, arg3):
                revert with 'NH{q', 17
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][msg.sender] - Mask(96, 0, arg3))
            emit Approval(Mask(96, 0, allowance[address(arg1)][msg.sender] - Mask(96, 0, arg3)), arg1, msg.sender);
            if not arg1:
                revert with 0, 'Comp::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'Comp::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            54,
                            0xfe436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[374 len 10] >> 176,
                            0
            if balanceOf[address(arg1)] < Mask(96, 0, arg3):
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - Mask(96, 0, arg3))
            if balanceOf[arg2] > -Mask(96, 0, arg3) + test266151307():
                revert with 'NH{q', 17
            if Mask(96, 0, Mask(96, 0, arg3) + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            48,
                            0x73436f6d703a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[464 len 16] >> 128,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, Mask(96, 0, arg3) + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if not numCheckpoints[stor2[arg2]]:
                                if 0 > -Mask(96, 0, arg3) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[551 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[660 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if numCheckpoints[stor2[arg2]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                    revert with 'NH{q', 17
                                if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                    revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[551 len 25] >> 56, 0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[660 len 12] >> 160,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if numCheckpoints[stor2[arg2]] < 1:
                                        revert with 'NH{q', 17
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                            revert with 'NH{q', 17
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                    else:
                        if not numCheckpoints[stor2[address(arg1)]]:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[552 len 24] >> 64, 0
                            if 0 < Mask(96, 0, arg3):
                                revert with 'NH{q', 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[660 len 12] >> 160,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if numCheckpoints[stor2[address(arg1)]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor2[address(arg1)]] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                    emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[743 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[852 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[743 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[852 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -Mask(96, 0, arg3))
                                    if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                        else:
                            if numCheckpoints[stor2[address(arg1)]] < 1:
                                revert with 'NH{q', 17
                            if Mask(96, 0, arg3) > checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 32, 40, 0x73436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[552 len 24] >> 64, 0
                            if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 < Mask(96, 0, arg3):
                                revert with 'NH{q', 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[660 len 12] >> 160,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                    revert with 'NH{q', 17
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if not numCheckpoints[stor2[arg2]]:
                                        if 0 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                    else:
                                        if numCheckpoints[stor2[arg2]] < 1:
                                            revert with 'NH{q', 17
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                            revert with 'NH{q', 17
                                        if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                revert with 'NH{q', 17
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if numCheckpoints[stor2[address(arg1)]] < 1:
                                    revert with 'NH{q', 17
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor2[address(arg1)]] < 1:
                                        revert with 'NH{q', 17
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[743 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[852 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[743 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[852 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3))
                                    if 1 > -numCheckpoints[stor2[address(arg1)]] + test266151307():
                                        revert with 'NH{q', 17
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - Mask(96, 0, arg3)), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if not numCheckpoints[stor2[arg2]]:
                                            if 0 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                        else:
                                            if numCheckpoints[stor2[arg2]] < 1:
                                                revert with 'NH{q', 17
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 > -Mask(96, 0, arg3) + test266151307():
                                                revert with 'NH{q', 17
                                            if Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 39, 0x65436f6d703a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[807 len 25] >> 56, 0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73436f6d703a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[916 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                    revert with 'NH{q', 17
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if numCheckpoints[stor2[arg2]] < 1:
                                                    revert with 'NH{q', 17
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor2[arg2]] < 1:
                                                        revert with 'NH{q', 17
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    if 1 > -numCheckpoints[stor2[arg2]] + test266151307():
                                                        revert with 'NH{q', 17
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, Mask(96, 0, arg3) + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
    return 1
}



}
