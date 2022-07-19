contract main {




// =====================  Runtime code  =====================


const getMaxSupply = 1000000 * 10^18

const getinitialSupply = 1000 * 10^18

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
mapping of address stor6;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;
address owner;
uint256 burnTotal;
address masterChefAddress;
address vaultAddress;
address sub_1167c681Address;
array of struct minter;
mapping of uint256 stor16;

function getMinterLength() payable {
    return minter.length
}

function name() payable {
    return name[0 len name.length].field_0
}

function burnTotal() payable {
    return burnTotal
}

function sub_1167c681(?) payable {
    return sub_1167c681Address
}

function totalSupply() payable {
    return totalSupply
}

function Vault() payable {
    return vaultAddress
}

function decimals() payable {
    return decimals
}

function getMinter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > minter.length - 1:
        revert with 0, 'Mars: index out of bounds'
    if minter.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg1 < minter.length
    return minter[arg1].field_0
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

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function MasterChef() payable {
    return masterChefAddress
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

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor16[address(arg1)]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function setMasterChef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    masterChefAddress = arg1
}

function sub_75e9d907(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1167c681Address = address(arg1)
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
    else:
        return 0
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

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mars: _addMinter is the zero address'
    if stor16[address(arg1)]:
        return 0
    minter.length++
    minter[minter.length].field_0 = arg1
    minter[minter.length].field_160 = 0
    stor16[address(arg1)] = minter.length
    return 1
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    burnTotal += arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mars: _removeMinter is the zero address'
    if not stor16[address(arg1)]:
        return 0
    require minter.length - 1 < minter.length
    require stor16[address(arg1)] - 1 < minter.length
    minter[stor16[address(arg1)]].field_0 = minter[minter.length].field_0
    stor16[stor15[stor15.length].field_0] = stor16[address(arg1)]
    require minter.length
    minter[minter.length].field_0 = 0
    minter.length--
    stor16[address(arg1)] = 0
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mars::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 7)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor16[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if arg2 + totalSupply < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + totalSupply > 1000000 * 10^18:
        return 0
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if stor6[address(arg1)] != 0:
        if arg2 > 0:
            if stor6[address(arg1)]:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                0
                if numCheckpoints[stor6[address(arg1)]] > 0:
                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                else:
                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor6[address(msg.sender)] = arg1
    if stor6[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not stor6[address(msg.sender)]:
                if arg1:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                    0
                    if numCheckpoints[address(arg1)] > 0:
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[179 len 13] >> 152,
                                0
                if numCheckpoints[stor6[address(msg.sender)]] > 0:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], stor6[address(msg.sender)]);
                        if arg1:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                            0
                            if numCheckpoints[address(arg1)] > 0:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], stor6[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], stor6[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], stor6[address(msg.sender)]);
                        if arg1:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                            0
                            if numCheckpoints[address(arg1)] > 0:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], stor6[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], stor6[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[339 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
    emit DelegateChanged(msg.sender, stor6[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len name.length]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Mars::delegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'Mars::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'Mars::delegateBySig: signature expired'
    stor6[address(signer)] = arg1
    if stor6[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not stor6[address(signer)]:
                if arg1:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                    0
                    if numCheckpoints[address(arg1)] > 0:
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(104, 0, arg5) >> 152,
                                0
                if numCheckpoints[stor6[address(signer)]] > 0:
                    if numCheckpoints[stor6[address(signer)]] <= 0:
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256, checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], stor6[address(signer)]);
                        if arg1:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13] >> 152,
                                            0
                            if numCheckpoints[address(arg1)] > 0:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256, checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], stor6[address(signer)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 757 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256, checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], stor6[address(signer)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if numCheckpoints[stor6[address(signer)]] <= 0:
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], stor6[address(signer)]);
                        if arg1:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13] >> 152,
                                            0
                            if numCheckpoints[address(arg1)] > 0:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], stor6[address(signer)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 757 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], stor6[address(signer)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13] >> 152,
                                                0
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
    emit DelegateChanged(address(signer), stor6[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if stor6[address(msg.sender)] != stor6[address(arg1)]:
        if arg2 > 0:
            if not stor6[address(msg.sender)]:
                if stor6[address(arg1)]:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                    0
                    if numCheckpoints[stor6[address(arg1)]] > 0:
                        if numCheckpoints[stor6[address(arg1)]] <= 0:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                    else:
                        if numCheckpoints[stor6[address(arg1)]] <= 0:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
            else:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                0
                if numCheckpoints[stor6[address(msg.sender)]] > 0:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor6[address(msg.sender)]);
                        if stor6[address(arg1)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                            0
                            if numCheckpoints[stor6[address(arg1)]] > 0:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                            else:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor6[address(msg.sender)]);
                            if stor6[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[371 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2, stor6[address(msg.sender)]);
                            if stor6[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
                else:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg2
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -arg2, stor6[address(msg.sender)]);
                        if stor6[address(arg1)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                            0
                            if numCheckpoints[stor6[address(arg1)]] > 0:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                            else:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, stor6[address(msg.sender)]);
                            if stor6[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[371 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, stor6[address(msg.sender)]);
                            if stor6[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, stor6[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, stor6[address(arg1)]);
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
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if stor6[address(arg1)] == stor6[address(arg2)]:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    else:
        if arg3 > 0:
            if not stor6[address(arg1)]:
                if not stor6[address(arg2)]:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                    0
                    if numCheckpoints[stor6[address(arg2)]] > 0:
                        if numCheckpoints[stor6[address(arg2)]] <= 0:
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                        else:
                            if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                            else:
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                    else:
                        if numCheckpoints[stor6[address(arg2)]] <= 0:
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                        else:
                            if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                            else:
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
            else:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[275 len 13] >> 152,
                                0
                if numCheckpoints[stor6[address(arg1)]] > 0:
                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3, stor6[address(arg1)]);
                        if not stor6[address(arg2)]:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                        else:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                            0
                            if numCheckpoints[stor6[address(arg2)]] > 0:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                            else:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                    else:
                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3, stor6[address(arg1)]);
                            if not stor6[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                            else:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[371 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                        else:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3, stor6[address(arg1)]);
                            if not stor6[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                            else:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                else:
                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg3, stor6[address(arg1)]);
                        if not stor6[address(arg2)]:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                        else:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                            0
                            if numCheckpoints[stor6[address(arg2)]] > 0:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                            else:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                    else:
                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, stor6[address(arg1)]);
                            if not stor6[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                            else:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[371 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                        else:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, stor6[address(arg1)]);
                            if not stor6[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                            else:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe4d6172733a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[435 len 13] >> 152,
                                                0
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, stor6[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
