contract main {




// =====================  Runtime code  =====================


const name = 'HighShark'

const totalSupply = 10000 * 10^18

const decimals = 18

const symbol = ''

const DOMAIN_TYPEHASH = sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const DELEGATION_TYPEHASH = sha3(0x6544656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)


uint8 stor0; offset 160
address owner;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[arg1]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function _fallback() payable {
    revert
}

function freeze() payable {
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    stor0 = 1
    emit Freezed()
}

function unfreeze() payable {
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    stor0 = 0
    emit UnFreezed()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if arg2 == -1:
        allowance[msg.sender][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        38,
                        0x6542455032303a3a617070726f76653a20616d6f756e74206578636565647320393620626974,
                        mem[166 len 26],
                        mem[218 len 6]
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2942455032303a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[204 len 24]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 4)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 == checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 <= checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    39,
                    0x7342455032303a3a7472616e736665723a20616d6f756e74206578636565647320393620626974,
                    mem[167 len 25],
                    mem[217 len 7]
    if not msg.sender:
        revert with 0, 
                    32,
                    61,
                    0xfe42455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[321 len 3]
    if not arg1:
        revert with 0, 
                    32,
                    59,
                    0x6542455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[319 len 5]
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    55,
                    0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                    Mask(184, 0, 0x7220616d6f756e7420657863656564732062616c616e63, mem[279 len 9])
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, arg2 + balanceOf[arg1]) < balanceOf[arg1]:
        revert with 0, 
                    32,
                    49,
                    0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                    Mask(136, 0, 0x7220616d6f756e74206f766572666c6f77, mem[369 len 15])
    balanceOf[address(arg1)] = Mask(96, 0, arg2 + balanceOf[arg1])
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[arg1]:
        if Mask(96, 0, arg2) > 0:
            if not delegates[address(msg.sender)]:
                if delegates[arg1]:
                    if numCheckpoints[stor3[arg1]]:
                        if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[472 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                        if numCheckpoints[stor3[arg1]] <= 0:
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        else:
                            if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                            else:
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                    else:
                        if Mask(96, 0, arg2) < 0:
                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[472 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                        if numCheckpoints[stor3[arg1]] <= 0:
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        else:
                            if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                            else:
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
            else:
                if numCheckpoints[stor3[address(msg.sender)]]:
                    if Mask(96, 0, arg2) > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[471 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor3[arg1]]:
                                if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                else:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[471 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor3[arg1]]:
                                if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                if numCheckpoints[stor3[arg1]] <= 0:
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                else:
                                    if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor3[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32) < checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg1]] <= 0:
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    else:
                                        if checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg1]][stor5[stor3[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[arg1]] = uint32(numCheckpoints[stor3[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Token is locked'
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[184 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[184 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor3[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[183 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[376 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[469 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[376 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[469 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[183 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[376 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[469 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[376 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[469 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[440 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[533 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if stor0:
        revert with 0, 'Token is locked'
    signer = erecover(sha3(0, sha3(sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), 0x21bc47eb690fa247e0da6d9b61ccdbc6f43f9aa7590035a83952c1db1ec9c9c8, chainid, this.address), sha3(sha3(0x6544656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x7342455032303a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(168, 0, arg6),
                    mem[738 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 32, 35, 0x2942455032303a3a64656c656761746542795369673a20696e76616c6964206e6f6e63, Mask(200, 0, arg6), mem[738 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    39,
                    0x6542455032303a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(168, 0, arg6),
                    mem[738 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, uint64(arg5)
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[791 len 11])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, uint64(arg5)
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[791 len 11])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor3[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, Mask(72, 0, arg5)
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[791 len 11])
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[890 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[983 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[890 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[983 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, Mask(72, 0, arg5)
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[791 len 11])
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[890 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[983 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[890 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[983 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[954 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[1047 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'Token is locked'
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    38,
                    0x6542455032303a3a617070726f76653a20616d6f756e74206578636565647320393620626974,
                    mem[166 len 26],
                    mem[218 len 6]
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 
                        32,
                        61,
                        0xfe42455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[321 len 3]
        if not arg2:
            revert with 0, 
                        32,
                        59,
                        0x6542455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[319 len 5]
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        55,
                        0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                        Mask(184, 0, 0x7220616d6f756e7420657863656564732062616c616e63, mem[279 len 9])
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
            revert with 0, 
                        32,
                        49,
                        0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                        Mask(136, 0, 0x7220616d6f756e74206f766572666c6f77, mem[369 len 15])
        balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
        emit Transfer(Mask(96, 0, arg3), arg1, arg2);
        if delegates[address(arg1)] != delegates[arg2]:
            if Mask(96, 0, arg3) > 0:
                if not delegates[address(arg1)]:
                    if delegates[arg2]:
                        if numCheckpoints[stor3[arg2]]:
                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[472 len 8]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                            if numCheckpoints[stor3[arg2]] <= 0:
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            else:
                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                else:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) < 0:
                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[472 len 8]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                            if numCheckpoints[stor3[arg2]] <= 0:
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            else:
                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                else:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                else:
                    if numCheckpoints[stor3[address(arg1)]]:
                        if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[471 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if Mask(96, 0, arg3) > 0:
                            revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[471 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor3[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                    if numCheckpoints[stor3[arg2]] <= 0:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    else:
                                        if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
    else:
        if allowance[address(arg1)][msg.sender] == test266151307():
            if not arg1:
                revert with 0, 
                            32,
                            61,
                            0xfe42455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[321 len 3]
            if not arg2:
                revert with 0, 
                            32,
                            59,
                            0x6542455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[319 len 5]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                            Mask(184, 0, 0x7220616d6f756e7420657863656564732062616c616e63, mem[279 len 9])
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            49,
                            0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                            Mask(136, 0, 0x7220616d6f756e74206f766572666c6f77, mem[369 len 15])
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor3[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[472 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[472 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]]:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[471 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[471 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[565 len 11])
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[664 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[757 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[728 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[821 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            62,
                            0x6442455032303a3a7472616e7366657246726f6d3a207472616e736665722061,
                            Mask(240, 0, 0x6d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[286 len 2])
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 
                            32,
                            61,
                            0xfe42455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[417 len 3]
            if not arg2:
                revert with 0, 
                            32,
                            59,
                            0x6542455032303a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[415 len 5]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                            Mask(184, 0, 0x7220616d6f756e7420657863656564732062616c616e63, mem[375 len 9])
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            49,
                            0x7342455032303a3a5f7472616e73666572546f6b656e733a207472616e736665,
                            Mask(136, 0, 0x7220616d6f756e74206f766572666c6f77, mem[465 len 15])
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor3[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[568 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[661 len 11])
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[568 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[661 len 11])
                                if numCheckpoints[stor3[arg2]] <= 0:
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                else:
                                    if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]]:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[567 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[661 len 11])
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[853 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[853 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 32, 41, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[567 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[661 len 11])
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor3[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                        if numCheckpoints[stor3[arg2]] <= 0:
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        else:
                                            if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[853 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[853 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor3[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32) < checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 32, 40, 0x7342455032303a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420, mem[824 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x7342455032303a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                            Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[917 len 11])
                                            if numCheckpoints[stor3[arg2]] <= 0:
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            else:
                                                if checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[arg2]][stor5[stor3[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[arg2]] = uint32(numCheckpoints[stor3[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
    return 1
}



}
