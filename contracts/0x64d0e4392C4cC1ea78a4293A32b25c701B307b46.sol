contract main {




// =====================  Runtime code  =====================


const name = '', 0

const totalSupply = 100000000 * 10^18

const decimals = 18

const symbol = '', 0

const DOMAIN_TYPEHASH = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801)

const DELEGATION_TYPEHASH = sha3('Delegation(address delegatee,uin', Mask(208, 48, 't256 nonce,uint256 expiry)') >> 48)


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
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 == -1:
        allowance[msg.sender][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        42,
                        0x6554657374546f6b656e3a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[170 len 22] >> 80,
                        0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TestToken::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 3)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = checkpoints[address(arg1)][stor4[address(arg1)] + -(uint32(stor4[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_34 + 32] = checkpoints[address(arg1)][stor4[address(arg1)] + -(uint32(stor4[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 == checkpoints[address(arg1)][stor4[address(arg1)] + -(uint32(stor4[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor4[address(arg1)] + -(uint32(stor4[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 <= checkpoints[address(arg1)][stor4[address(arg1)] + -(uint32(stor4[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    43,
                    0x7354657374546f6b656e3a3a7472616e736665723a20616d6f756e74206578636565647320393620626974, mem[171 len 21] >> 88,
                    0
    if not msg.sender:
        revert with 0, 'TestToken::_transferTokens: cannot transfer from the zero address'
    if not arg1:
        revert with 0, 'TestToken::_transferTokens: cannot transfer to the zero address'
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    59,
                    0xfe54657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[283 len 5] >> 216,
                    0
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, arg2 + balanceOf[arg1]) < balanceOf[arg1]:
        revert with 0, 
                    32,
                    53,
                    0x7354657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[373 len 11] >> 168,
                    0
    balanceOf[address(arg1)] = Mask(96, 0, arg2 + balanceOf[arg1])
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[arg1]:
        if Mask(96, 0, arg2) > 0:
            if not delegates[address(msg.sender)]:
                if delegates[arg1]:
                    if numCheckpoints[stor2[arg1]]:
                        if Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[460 len 20] >> 96,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                        0
                        if numCheckpoints[stor2[arg1]] <= 0:
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        else:
                            if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                            else:
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                    else:
                        if Mask(96, 0, arg2) < 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[460 len 20] >> 96,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                        0
                        if numCheckpoints[stor2[arg1]] <= 0:
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        else:
                            if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                            else:
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
            else:
                if numCheckpoints[stor2[address(msg.sender)]]:
                    if Mask(96, 0, arg2) > checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    45,
                                    0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[461 len 19] >> 104,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    57,
                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor2[arg1]]:
                                if Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                    else:
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor2[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor2[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                else:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 
                                    32,
                                    45,
                                    0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[461 len 19] >> 104,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    57,
                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor2[arg1]]:
                                if Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg1]] <= 0:
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                else:
                                    if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                    else:
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor2[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor2[arg1]]:
                                    if Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32) < checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0, Mask(96, 0, arg2 + checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32), delegates[arg1]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg1]] <= 0:
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    else:
                                        if checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg1]][stor4[stor2[arg1]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor2[arg1]] = uint32(numCheckpoints[stor2[arg1]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[arg1]);
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
                        if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[172 len 20] >> 96,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[281 len 7] >> 200,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[172 len 20] >> 96,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[281 len 7] >> 200,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor2[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    45,
                                    0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[173 len 19] >> 104,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    57,
                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[281 len 7] >> 200,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[364 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[473 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[364 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[473 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 
                                    32,
                                    45,
                                    0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[173 len 19] >> 104,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    57,
                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[281 len 7] >> 200,
                                    0
                    if numCheckpoints[stor2[address(msg.sender)]] <= 0:
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[364 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[473 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[364 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[473 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(msg.sender)]][stor4[stor2[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor2[address(msg.sender)]] = uint32(numCheckpoints[stor2[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[428 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[537 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 6517801), 0x81e8ad438398ab0d4a2a7ecb159490c091bb27c67ace5181f70084e30fadaea2, chainid, this.address), sha3(sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry)'), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'TestToken::delegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'TestToken::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'TestToken::delegateBySig: signature expired'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, address(arg5) >> 96,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[795 len 7] >> 200,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, address(arg5) >> 96,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[795 len 7] >> 200,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor2[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    45,
                                    0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(152, 0, arg5) >> 104,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    57,
                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[795 len 7] >> 200,
                                    0
                    if numCheckpoints[stor2[address(signer)]] <= 0:
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[878 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[987 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[878 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[987 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 
                                    32,
                                    45,
                                    0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(152, 0, arg5) >> 104,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    57,
                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[795 len 7] >> 200,
                                    0
                    if numCheckpoints[stor2[address(signer)]] <= 0:
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[878 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[987 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[878 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[987 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(signer)]][stor4[stor2[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            numCheckpoints[stor2[address(signer)]] = uint32(numCheckpoints[stor2[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[942 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1051 len 7] >> 200,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor4[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor4[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    42,
                    0x6554657374546f6b656e3a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[170 len 22] >> 80,
                    0
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'TestToken::_transferTokens: cannot transfer from the zero address'
        if not arg2:
            revert with 0, 'TestToken::_transferTokens: cannot transfer to the zero address'
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        59,
                        0xfe54657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[283 len 5] >> 216,
                        0
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
            revert with 0, 
                        32,
                        53,
                        0x7354657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[373 len 11] >> 168,
                        0
        balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
        emit Transfer(Mask(96, 0, arg3), arg1, arg2);
        if delegates[address(arg1)] != delegates[arg2]:
            if Mask(96, 0, arg3) > 0:
                if not delegates[address(arg1)]:
                    if delegates[arg2]:
                        if numCheckpoints[stor2[arg2]]:
                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            44,
                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[460 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            57,
                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                            0
                            if numCheckpoints[stor2[arg2]] <= 0:
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            else:
                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                else:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) < 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[460 len 20] >> 96,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            57,
                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                            0
                            if numCheckpoints[stor2[arg2]] <= 0:
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            else:
                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                else:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                else:
                    if numCheckpoints[stor2[address(arg1)]]:
                        if Mask(96, 0, arg3) > checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        45,
                                        0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[461 len 19] >> 104,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                        0
                        if numCheckpoints[stor2[address(arg1)]] <= 0:
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                            numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor2[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if Mask(96, 0, arg3) > 0:
                            revert with 0, 
                                        32,
                                        45,
                                        0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[461 len 19] >> 104,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        57,
                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                        0
                        if numCheckpoints[stor2[address(arg1)]] <= 0:
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                            numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor2[arg2]]:
                                    if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    57,
                                                    0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                    0
                                    if numCheckpoints[stor2[arg2]] <= 0:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    else:
                                        if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
    else:
        if allowance[address(arg1)][msg.sender] == test266151307():
            if not arg1:
                revert with 0, 'TestToken::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'TestToken::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            59,
                            0xfe54657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[283 len 5] >> 216,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            53,
                            0x7354657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[373 len 11] >> 168,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor2[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[460 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[460 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if numCheckpoints[stor2[address(arg1)]]:
                            if Mask(96, 0, arg3) > checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            45,
                                            0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[461 len 19] >> 104,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            57,
                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            45,
                                            0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[461 len 19] >> 104,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            57,
                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[569 len 7] >> 200,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[652 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[761 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[716 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[825 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            66,
                            0x7354657374546f6b656e3a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[290 len 30] >> 272,
                            0
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 'TestToken::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'TestToken::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            59,
                            0xfe54657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[411 len 5] >> 216,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, arg3 + balanceOf[arg2]) < balanceOf[arg2]:
                revert with 0, 
                            32,
                            53,
                            0x7354657374546f6b656e3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[501 len 11] >> 168,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, arg3 + balanceOf[arg2])
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[arg2]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[arg2]:
                            if numCheckpoints[stor2[arg2]]:
                                if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[588 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[697 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[588 len 20] >> 96,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                57,
                                                0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[697 len 7] >> 200,
                                                0
                                if numCheckpoints[stor2[arg2]] <= 0:
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                else:
                                    if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                    else:
                        if numCheckpoints[stor2[address(arg1)]]:
                            if Mask(96, 0, arg3) > checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            45,
                                            0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[589 len 19] >> 104,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            57,
                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[697 len 7] >> 200,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[780 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[889 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[780 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[889 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            45,
                                            0x7354657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[589 len 19] >> 104,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            57,
                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[697 len 7] >> 200,
                                            0
                            if numCheckpoints[stor2[address(arg1)]] <= 0:
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[arg2]:
                                    if numCheckpoints[stor2[arg2]]:
                                        if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        44,
                                                        0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                        0
                                        if numCheckpoints[stor2[arg2]] <= 0:
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        else:
                                            if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                            else:
                                if checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[780 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[889 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[780 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[889 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
                                else:
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor2[address(arg1)]][stor4[stor2[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor2[address(arg1)]] = uint32(numCheckpoints[stor2[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[arg2]:
                                        if numCheckpoints[stor2[arg2]]:
                                            if Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32) < checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0, Mask(96, 0, arg3 + checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32), delegates[arg2]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            44,
                                                            0x6554657374546f6b656e3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[844 len 20] >> 96,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            57,
                                                            0x7354657374546f6b656e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[953 len 7] >> 200,
                                                            0
                                            if numCheckpoints[stor2[arg2]] <= 0:
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            else:
                                                if checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_0 = uint32(block.number)
                                                    checkpoints[stor2[arg2]][stor4[stor2[arg2]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor2[arg2]] = uint32(numCheckpoints[stor2[arg2]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[arg2]);
    return 1
}



}
