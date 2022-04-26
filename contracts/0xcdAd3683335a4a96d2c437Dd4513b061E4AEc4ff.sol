contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - unlock()
#
const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 cap;
uint256 totalLock;
uint256 lockFromBlock;
uint256 lockToBlock;
uint256 transferBurnRate;
uint8 farmingEnabled;
mapping of uint256 lockOf;
mapping of uint8 stor14;
mapping of uint256 lastUnlockBlock;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function totalLock() payable {
    return totalLock
}

function transferBurnRate() payable {
    return transferBurnRate
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)]
}

function farmingEnabled() payable {
    return bool(farmingEnabled)
}

function lockFromBlock() payable {
    return lockFromBlock
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

function lastUnlockBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUnlockBlock[address(arg1)]
}

function owner() payable {
    return owner
}

function lockToBlock() payable {
    return lockToBlock
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function circulatingSupply() payable {
    if totalLock > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - totalLock)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addTransferBurnExceptAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor14[address(arg1)] = 1
}

function removeTransferBurnExceptAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor14[address(arg1)] = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if balanceOf[address(arg1)] + lockOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (balanceOf[address(arg1)] + lockOf[address(arg1)])
}

function startFarming() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if farmingEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734661726d696e6720686173206265656e207374617274656420616c7265616479,
                    mem[197 len 31]
    lockFromBlock = block.number
    lockToBlock = block.number + 2000
    farmingEnabled = 1
}

function setTransferBurnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x724275726e696e672052617465206f6e205472616e736665722063616e6e6f74206265206d6f7265207468616e20313030,
                    mem[213 len 15]
    transferBurnRate = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function canUnlockAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < lockFromBlock:
        return 0
    if block.number >= lockToBlock:
        return lockOf[address(arg1)]
    if lastUnlockBlock[address(arg1)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastUnlockBlock[address(arg1)] > lockToBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not lockOf[address(arg1)]:
        if not lockToBlock - lastUnlockBlock[address(arg1)]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / lockToBlock - lastUnlockBlock[address(arg1)])
    if (block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockOf[address(arg1)] != block.number - lastUnlockBlock[address(arg1)]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not lockToBlock - lastUnlockBlock[address(arg1)]:
        revert with 0, 'SafeMath: division by zero'
    return ((block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockToBlock - lastUnlockBlock[address(arg1)])
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x2545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x65504f4b453a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[203 len 25]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 17)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + totalSupply > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor16[address(arg1)]]:
                    if arg2 + checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2 + checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2 + checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor16[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[244 len 12])
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[244 len 12])
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[404 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
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
        revert with 0, 
                    32,
                    38,
                    0x73504f4b453a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(176, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    34,
                    0x65504f4b453a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(208, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    38,
                    0x65504f4b453a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(176, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, Mask(96, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, Mask(96, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor16[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 726 len 12])
                    if numCheckpoints[stor16[address(signer)]] <= 0:
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256, checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256, checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256, checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 726 len 12])
                    if numCheckpoints[stor16[address(signer)]] <= 0:
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 886 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if transferBurnRate <= 0:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if not msg.sender:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 + totalSupply > cap:
                revert with 0, 'ERC20Capped: cap exceeded'
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        if delegates[address(msg.sender)] != delegates[arg1]:
            if arg2 > 0:
                if not delegates[address(msg.sender)]:
                    if delegates[arg1]:
                        if numCheckpoints[stor16[arg1]]:
                            if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                            if numCheckpoints[stor16[arg1]] <= 0:
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            else:
                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                else:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                        else:
                            if arg2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                            if numCheckpoints[stor16[arg1]] <= 0:
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            else:
                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                else:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                else:
                    if numCheckpoints[stor16[address(msg.sender)]]:
                        if arg2 > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor16[arg1]]:
                                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                            else:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if arg2 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor16[arg1]]:
                                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                            else:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
    else:
        if 1 == bool(stor14[address(msg.sender)]):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if not msg.sender:
                if arg2 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 + totalSupply > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
            if delegates[address(msg.sender)] != delegates[arg1]:
                if arg2 > 0:
                    if not delegates[address(msg.sender)]:
                        if delegates[arg1]:
                            if numCheckpoints[stor16[arg1]]:
                                if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                if numCheckpoints[stor16[arg1]] <= 0:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                else:
                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                if numCheckpoints[stor16[arg1]] <= 0:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                else:
                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if numCheckpoints[stor16[address(msg.sender)]]:
                            if arg2 > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                            else:
                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                else:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            if arg2 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                            else:
                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                    emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                else:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
        else:
            if 1 == bool(stor14[address(arg1)]):
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if not msg.sender:
                    if arg2 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + totalSupply > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                if delegates[address(msg.sender)] != delegates[arg1]:
                    if arg2 > 0:
                        if not delegates[address(msg.sender)]:
                            if delegates[arg1]:
                                if numCheckpoints[stor16[arg1]]:
                                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            if numCheckpoints[stor16[address(msg.sender)]]:
                                if arg2 > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                else:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                    else:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                            else:
                                if arg2 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                else:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                    else:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
            else:
                if not arg1:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if not msg.sender:
                        if arg2 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + totalSupply > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                    if delegates[address(msg.sender)] != delegates[arg1]:
                        if arg2 > 0:
                            if not delegates[address(msg.sender)]:
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                            else:
                                if numCheckpoints[stor16[address(msg.sender)]]:
                                    if arg2 > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                else:
                                    if arg2 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                else:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if arg2 * transferBurnRate / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= arg2 * transferBurnRate / 100
                    if arg2 * transferBurnRate / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2 * transferBurnRate / 100
                    emit Transfer((arg2 * transferBurnRate / 100), msg.sender, 0);
                    if not msg.sender:
                        revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[361 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[359 len 29]
                    if not msg.sender:
                        if arg2 - (arg2 * transferBurnRate / 100) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 - (arg2 * transferBurnRate / 100) + totalSupply > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if arg2 - (arg2 * transferBurnRate / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[326 len 26],
                                    mem[378 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferBurnRate / 100)
                    if arg2 - (arg2 * transferBurnRate / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 * transferBurnRate / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 * transferBurnRate / 100)), msg.sender, arg1);
                    if delegates[address(msg.sender)] != delegates[arg1]:
                        if arg2 - (arg2 * transferBurnRate / 100) > 0:
                            if not delegates[address(msg.sender)]:
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[arg1]);
                            else:
                                if numCheckpoints[stor16[address(msg.sender)]]:
                                    if arg2 - (arg2 * transferBurnRate / 100) > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100)
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100), delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100)
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[arg1]);
                                else:
                                    if arg2 - (arg2 * transferBurnRate / 100) > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2 + (arg2 * transferBurnRate / 100)
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2 + (arg2 * transferBurnRate / 100), delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -arg2 + (arg2 * transferBurnRate / 100)
                                            emit DelegateVotesChanged(0, -arg2 + (arg2 * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2 + (arg2 * transferBurnRate / 100)
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, -arg2 + (arg2 * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[arg1]);
    return 1
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: lock to the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ERC20: lock amount over blance'
    if transferBurnRate <= 0:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if not arg1:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 + totalSupply > cap:
                revert with 0, 'ERC20Capped: cap exceeded'
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg2
        if arg2 + balanceOf[this.address] < balanceOf[this.address]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
        emit Transfer(arg2, arg1, this.address);
        if delegates[address(arg1)] != delegates[this.address]:
            if arg2 > 0:
                if not delegates[address(arg1)]:
                    if delegates[this.address]:
                        if numCheckpoints[stor16[this.address]]:
                            if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                            if numCheckpoints[stor16[this.address]] <= 0:
                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                            else:
                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                else:
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                        else:
                            if arg2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                            if numCheckpoints[stor16[this.address]] <= 0:
                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                            else:
                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                else:
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                            emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                else:
                    if numCheckpoints[stor16[address(arg1)]]:
                        if arg2 > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                            if delegates[this.address]:
                                if numCheckpoints[stor16[this.address]]:
                                    if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[this.address]] <= 0:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    else:
                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[this.address]] <= 0:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    else:
                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 -= arg2
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                    else:
                        if arg2 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if delegates[this.address]:
                                if numCheckpoints[stor16[this.address]]:
                                    if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[this.address]] <= 0:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    else:
                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[this.address]] <= 0:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    else:
                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg2
                                emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
    else:
        if 1 == bool(stor14[address(arg1)]):
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if not arg1:
                if arg2 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 + totalSupply > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg2
            if arg2 + balanceOf[this.address] < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
            emit Transfer(arg2, arg1, this.address);
            if delegates[address(arg1)] != delegates[this.address]:
                if arg2 > 0:
                    if not delegates[address(arg1)]:
                        if delegates[this.address]:
                            if numCheckpoints[stor16[this.address]]:
                                if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                if numCheckpoints[stor16[this.address]] <= 0:
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                else:
                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                if numCheckpoints[stor16[this.address]] <= 0:
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                else:
                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                    else:
                        if numCheckpoints[stor16[address(arg1)]]:
                            if arg2 > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                            if numCheckpoints[stor16[address(arg1)]] <= 0:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 -= arg2
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                    if delegates[this.address]:
                                        if numCheckpoints[stor16[this.address]]:
                                            if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                    if delegates[this.address]:
                                        if numCheckpoints[stor16[this.address]]:
                                            if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                        else:
                            if arg2 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                            if numCheckpoints[stor16[address(arg1)]] <= 0:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg2
                                    emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                    if delegates[this.address]:
                                        if numCheckpoints[stor16[this.address]]:
                                            if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                    if delegates[this.address]:
                                        if numCheckpoints[stor16[this.address]]:
                                            if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[this.address]);
        else:
            if 1 == bool(stor14[address(this.address)]):
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if not arg1:
                    if arg2 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + totalSupply > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg2
                if arg2 + balanceOf[this.address] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
                emit Transfer(arg2, arg1, this.address);
                if delegates[address(arg1)] != delegates[this.address]:
                    if arg2 > 0:
                        if not delegates[address(arg1)]:
                            if delegates[this.address]:
                                if numCheckpoints[stor16[this.address]]:
                                    if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[stor16[this.address]] <= 0:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    else:
                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[stor16[this.address]] <= 0:
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    else:
                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                        else:
                            if numCheckpoints[stor16[address(arg1)]]:
                                if arg2 > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                    if delegates[this.address]:
                                        if numCheckpoints[stor16[this.address]]:
                                            if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 -= arg2
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                if arg2 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                    if delegates[this.address]:
                                        if numCheckpoints[stor16[this.address]]:
                                            if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                        else:
                                            if arg2 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[this.address]] <= 0:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            else:
                                                if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                else:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                            emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg2
                                        emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
            else:
                if not this.address:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if not arg1:
                        if arg2 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + totalSupply > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= arg2
                    if arg2 + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
                    emit Transfer(arg2, arg1, this.address);
                    if delegates[address(arg1)] != delegates[this.address]:
                        if arg2 > 0:
                            if not delegates[address(arg1)]:
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                if numCheckpoints[stor16[address(arg1)]]:
                                    if arg2 > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 -= arg2
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    if arg2 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg2
                                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 += arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                else:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if arg2 * transferBurnRate / 100 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(arg1)] -= arg2 * transferBurnRate / 100
                    if arg2 * transferBurnRate / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2 * transferBurnRate / 100
                    emit Transfer((arg2 * transferBurnRate / 100), arg1, 0);
                    if not arg1:
                        revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[361 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[359 len 29]
                    if not arg1:
                        if arg2 - (arg2 * transferBurnRate / 100) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 - (arg2 * transferBurnRate / 100) + totalSupply > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if arg2 - (arg2 * transferBurnRate / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[326 len 26],
                                    mem[378 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg2 + (arg2 * transferBurnRate / 100)
                    if arg2 - (arg2 * transferBurnRate / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = arg2 - (arg2 * transferBurnRate / 100) + balanceOf[this.address]
                    emit Transfer((arg2 - (arg2 * transferBurnRate / 100)), arg1, this.address);
                    if delegates[address(arg1)] != delegates[this.address]:
                        if arg2 - (arg2 * transferBurnRate / 100) > 0:
                            if not delegates[address(arg1)]:
                                if delegates[this.address]:
                                    if numCheckpoints[stor16[this.address]]:
                                        if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                    else:
                                        if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[this.address]] <= 0:
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        else:
                                            if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                            else:
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                        emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[this.address]);
                            else:
                                if numCheckpoints[stor16[address(arg1)]]:
                                    if arg2 - (arg2 * transferBurnRate / 100) > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100)
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100), delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[this.address]);
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100), delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[this.address]);
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100)
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2 + (arg2 * transferBurnRate / 100), delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[this.address]);
                                else:
                                    if arg2 - (arg2 * transferBurnRate / 100) > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2 + (arg2 * transferBurnRate / 100)
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                        emit DelegateVotesChanged(0, -arg2 + (arg2 * transferBurnRate / 100), delegates[address(arg1)]);
                                        if delegates[this.address]:
                                            if numCheckpoints[stor16[this.address]]:
                                                if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                            else:
                                                if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[this.address]] <= 0:
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                else:
                                                    if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                    else:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[this.address]);
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg2 + (arg2 * transferBurnRate / 100)
                                            emit DelegateVotesChanged(0, -arg2 + (arg2 * transferBurnRate / 100), delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[this.address]);
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2 + (arg2 * transferBurnRate / 100)
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                            emit DelegateVotesChanged(0, -arg2 + (arg2 * transferBurnRate / 100), delegates[address(arg1)]);
                                            if delegates[this.address]:
                                                if numCheckpoints[stor16[this.address]]:
                                                    if arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 < checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, arg2 - (arg2 * transferBurnRate / 100) + checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256, delegates[this.address]);
                                                else:
                                                    if arg2 - (arg2 * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[this.address]] <= 0:
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    else:
                                                        if checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]] - 1 << 224].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[this.address]][stor18[stor16[this.address]]].field_256 = arg2 - (arg2 * transferBurnRate / 100)
                                                            numCheckpoints[stor16[this.address]] = uint32(numCheckpoints[stor16[this.address]] + 1)
                                                    emit DelegateVotesChanged(0, arg2 - (arg2 * transferBurnRate / 100), delegates[this.address]);
    if arg2 + lockOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] += arg2
    if arg2 + totalLock < totalLock:
        revert with 0, 'SafeMath: addition overflow'
    totalLock += arg2
    if lastUnlockBlock[address(arg1)] < lockFromBlock:
        lastUnlockBlock[address(arg1)] = lockFromBlock
    emit Lock(arg2, arg1);
}

function transferAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockOf[msg.sender] + lockOf[arg1] < lockOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] = lockOf[msg.sender] + lockOf[arg1]
    if lastUnlockBlock[address(arg1)] < lockFromBlock:
        lastUnlockBlock[address(arg1)] = lockFromBlock
    if lastUnlockBlock[arg1] < lastUnlockBlock[msg.sender]:
        lastUnlockBlock[arg1] = lastUnlockBlock[msg.sender]
    lockOf[msg.sender] = 0
    lastUnlockBlock[msg.sender] = 0
    if transferBurnRate <= 0:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if not msg.sender:
            if balanceOf[address(msg.sender)] + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] + totalSupply > cap:
                revert with 0, 'ERC20Capped: cap exceeded'
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[address(msg.sender)] + balanceOf[arg1]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
        if delegates[address(msg.sender)] != delegates[arg1]:
            if balanceOf[address(msg.sender)] > 0:
                if not delegates[address(msg.sender)]:
                    if delegates[arg1]:
                        if numCheckpoints[stor16[arg1]]:
                            if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                            if numCheckpoints[stor16[arg1]] <= 0:
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            else:
                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                else:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                        else:
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                            if numCheckpoints[stor16[arg1]] <= 0:
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            else:
                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                else:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                            emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                else:
                    if numCheckpoints[stor16[address(msg.sender)]]:
                        if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor16[arg1]]:
                                    if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                        else:
                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                            else:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                    else:
                        if balanceOf[address(msg.sender)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor16[arg1]]:
                                    if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                        else:
                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                                emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                            else:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
    else:
        if 1 == bool(stor14[address(msg.sender)]):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if not msg.sender:
                if balanceOf[address(msg.sender)] + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(msg.sender)] + totalSupply > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(msg.sender)] + balanceOf[arg1]
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
            if delegates[address(msg.sender)] != delegates[arg1]:
                if balanceOf[address(msg.sender)] > 0:
                    if not delegates[address(msg.sender)]:
                        if delegates[arg1]:
                            if numCheckpoints[stor16[arg1]]:
                                if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                if numCheckpoints[stor16[arg1]] <= 0:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                else:
                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                if numCheckpoints[stor16[arg1]] <= 0:
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                else:
                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                    else:
                        if numCheckpoints[stor16[address(msg.sender)]]:
                            if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                            else:
                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                else:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                        else:
                            if balanceOf[address(msg.sender)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                            address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                            else:
                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                                    emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                else:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
        else:
            if 1 == bool(stor14[address(arg1)]):
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if not msg.sender:
                    if balanceOf[address(msg.sender)] + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] + totalSupply > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(msg.sender)] + balanceOf[arg1]
                emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
                if delegates[address(msg.sender)] != delegates[arg1]:
                    if balanceOf[address(msg.sender)] > 0:
                        if not delegates[address(msg.sender)]:
                            if delegates[arg1]:
                                if numCheckpoints[stor16[arg1]]:
                                    if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[stor16[arg1]] <= 0:
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    else:
                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                        else:
                            if numCheckpoints[stor16[address(msg.sender)]]:
                                if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                else:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                    else:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                            else:
                                if balanceOf[address(msg.sender)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    if delegates[arg1]:
                                        if numCheckpoints[stor16[arg1]]:
                                            if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                        else:
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                            address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                            if numCheckpoints[stor16[arg1]] <= 0:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            else:
                                                if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                else:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                    else:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
            else:
                if not arg1:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] + totalSupply > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(msg.sender)] + balanceOf[arg1]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
                    if delegates[address(msg.sender)] != delegates[arg1]:
                        if balanceOf[address(msg.sender)] > 0:
                            if not delegates[address(msg.sender)]:
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                            else:
                                if numCheckpoints[stor16[address(msg.sender)]]:
                                    if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                else:
                                    if balanceOf[address(msg.sender)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)]
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[arg1]);
                else:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if balanceOf[address(msg.sender)] * transferBurnRate / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= balanceOf[address(msg.sender)] * transferBurnRate / 100
                    if balanceOf[address(msg.sender)] * transferBurnRate / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)] * transferBurnRate / 100
                    emit Transfer((balanceOf[address(msg.sender)] * transferBurnRate / 100), msg.sender, 0);
                    if not msg.sender:
                        revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[361 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[359 len 29]
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + totalSupply > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[326 len 26],
                                    mem[378 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] * transferBurnRate / 100
                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + balanceOf[arg1]
                    emit Transfer((balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)), msg.sender, arg1);
                    if delegates[address(msg.sender)] != delegates[arg1]:
                        if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) > 0:
                            if not delegates[address(msg.sender)]:
                                if delegates[arg1]:
                                    if numCheckpoints[stor16[arg1]]:
                                        if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                    else:
                                        if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                        address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                        if numCheckpoints[stor16[arg1]] <= 0:
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        else:
                                            if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                            else:
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[arg1]);
                            else:
                                if numCheckpoints[stor16[address(msg.sender)]]:
                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[arg1]);
                                else:
                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[500 len 12])
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[address(msg.sender)]);
                                        if delegates[arg1]:
                                            if numCheckpoints[stor16[arg1]]:
                                                if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                            else:
                                                if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                if numCheckpoints[stor16[arg1]] <= 0:
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                    numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                else:
                                                    if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                    else:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[arg1]);
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[596 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[arg1]);
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[address(msg.sender)]);
                                            if delegates[arg1]:
                                                if numCheckpoints[stor16[arg1]]:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                                else:
                                                    if balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    52,
                                                                    0x73504f4b453a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                                    address(0x756d626572206578636565647320333220626974, mem[660 len 12])
                                                    if numCheckpoints[stor16[arg1]] <= 0:
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    else:
                                                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                        else:
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100)
                                                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] * transferBurnRate / 100), delegates[arg1]);
}



}
