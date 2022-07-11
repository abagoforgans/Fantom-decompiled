contract main {




// =====================  Runtime code  =====================


#
#  - transferAll(address arg1)
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
uint256 totalLock;
mapping of uint256 lockOf;
mapping of uint256 lastUnlockBlock;
uint256 startReleaseBlock;
uint256 endReleaseBlock;
uint256 cap;
address governorAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function governor() payable {
    return governorAddress
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

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)]
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

function startReleaseBlock() payable {
    return startReleaseBlock
}

function lastUnlockBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUnlockBlock[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function endReleaseBlock() payable {
    return endReleaseBlock
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

function unlockedSupply() payable {
    if totalLock > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - totalLock)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if balanceOf[address(arg1)] + lockOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (balanceOf[address(arg1)] + lockOf[address(arg1)])
}

function setCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'WING::onlyGovernor::not governor'
    if arg1 >= cap:
        revert with 0, 'WING::setCap::_cap must < cap'
    cap = arg1
    emit CapChanged(cap, arg1);
}

function setGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'WING::onlyGovernor::not governor'
    if governorAddress == arg1:
        revert with 0, 'WING::setGovernor::no self set'
    governorAddress = arg1
    emit GovernorChanged(governorAddress, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
                    0x2945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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
    if block.number < startReleaseBlock:
        return 0
    if block.number >= endReleaseBlock:
        return lockOf[address(arg1)]
    if lastUnlockBlock[address(arg1)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastUnlockBlock[address(arg1)] > endReleaseBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not lockOf[address(arg1)]:
        if endReleaseBlock - lastUnlockBlock[address(arg1)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if endReleaseBlock - lastUnlockBlock[address(arg1)]:
            return (0 / endReleaseBlock - lastUnlockBlock[address(arg1)])
    else:
        if (block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockOf[address(arg1)] != block.number - lastUnlockBlock[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if endReleaseBlock - lastUnlockBlock[address(arg1)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if endReleaseBlock - lastUnlockBlock[address(arg1)]:
            return ((block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / endReleaseBlock - lastUnlockBlock[address(arg1)])
    ('iszero', ('add', ('stor', ('name', 'endReleaseBlock', 10)), ('mul', -1, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'lastUnlockBlock', 8))))))
    revert
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7357494e473a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[203 len 25]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 14)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor15[address(arg1)] + -(uint32(stor15[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor15[address(arg1)] + -(uint32(stor15[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor15[address(arg1)] + -(uint32(stor15[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor15[address(arg1)] + -(uint32(stor15[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor15[address(arg1)] + -(uint32(stor15[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6c57494e473a3a6c6f636b3a3a6e6f206c6f636b20746f20746f6b656e20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x833b7d80e2ad33ae93371703ac4b9654ad6ff1af5cad6fa5691f2a9b304cbe3 * 3600,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'WING::lock::no lock over balance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
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
    if arg2 + lockOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] += arg2
    if arg2 + totalLock < totalLock:
        revert with 0, 'SafeMath: addition overflow'
    totalLock += arg2
    if lastUnlockBlock[address(arg1)] < startReleaseBlock:
        lastUnlockBlock[address(arg1)] = startReleaseBlock
    emit Lock(arg2, arg1);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + totalSupply >= cap:
        revert with 0, 'WING::mint::cap exceeded'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
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
                if numCheckpoints[stor13[address(arg1)]]:
                    if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function unlock() payable {
    if not lockOf[msg.sender]:
        revert with 0, 'WING::unlock::no locked WING'
    if block.number < startReleaseBlock:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        emit Transfer(0, this.address, msg.sender);
        if 0 > lockOf[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        lastUnlockBlock[msg.sender] = block.number
        if 0 > totalLock:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if block.number >= endReleaseBlock:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if lockOf[address(msg.sender)] > balanceOf[address(this.address)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(this.address)] -= lockOf[address(msg.sender)]
            if lockOf[address(msg.sender)] + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = lockOf[address(msg.sender)] + balanceOf[msg.sender]
            emit Transfer(lockOf[address(msg.sender)], this.address, msg.sender);
            if lockOf[address(msg.sender)] > lockOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            lockOf[msg.sender] -= lockOf[address(msg.sender)]
            lastUnlockBlock[msg.sender] = block.number
            if lockOf[address(msg.sender)] > totalLock:
                revert with 0, 'SafeMath: subtraction overflow'
            totalLock -= lockOf[address(msg.sender)]
        else:
            if lastUnlockBlock[address(msg.sender)] > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastUnlockBlock[address(msg.sender)] > endReleaseBlock:
                revert with 0, 'SafeMath: subtraction overflow'
            if not lockOf[address(msg.sender)]:
                if endReleaseBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] -= 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if (0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]) + balanceOf[msg.sender]
                emit Transfer((0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                if 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > lockOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockOf[msg.sender] -= 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                lastUnlockBlock[msg.sender] = block.number
                if 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= 0 / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
            else:
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockOf[address(msg.sender)] != block.number - lastUnlockBlock[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if endReleaseBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                if ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]) + balanceOf[msg.sender]
                emit Transfer(((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > lockOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockOf[msg.sender] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
                lastUnlockBlock[msg.sender] = block.number
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / endReleaseBlock - lastUnlockBlock[address(msg.sender)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    53,
                    0x6457494e473a3a7472616e7366657246726f6d3a3a7472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[277 len 11],
                    Mask(168, -256, mem[277 len 11]) << 256
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if delegates[address(arg1)] != delegates[arg2]:
        if arg3 > 0:
            if not delegates[address(arg1)]:
                if delegates[arg2]:
                    if numCheckpoints[stor13[arg2]]:
                        if arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 < checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                        if numCheckpoints[stor13[arg2]] <= 0:
                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                        else:
                            if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 += arg3
                            else:
                                checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, delegates[arg2]);
                    else:
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                        if numCheckpoints[stor13[arg2]] <= 0:
                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                        else:
                            if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 = arg3
                            else:
                                checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
            else:
                if numCheckpoints[stor13[address(arg1)]]:
                    if arg3 > checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                        if delegates[arg2]:
                            if numCheckpoints[stor13[arg2]]:
                                if arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 < checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                if numCheckpoints[stor13[arg2]] <= 0:
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                else:
                                    if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, delegates[arg2]);
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                if numCheckpoints[stor13[arg2]] <= 0:
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                    numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                else:
                                    if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                    else:
                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor13[arg2]]:
                                    if arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 < checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[468 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[468 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                        else:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor13[arg2]]:
                                    if arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 < checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                else:
                    if arg3 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if delegates[arg2]:
                            if numCheckpoints[stor13[arg2]]:
                                if arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 < checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                if numCheckpoints[stor13[arg2]] <= 0:
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                else:
                                    if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, delegates[arg2]);
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                if numCheckpoints[stor13[arg2]] <= 0:
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                    numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                else:
                                    if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                    else:
                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor13[arg2]]:
                                    if arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 < checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[468 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[468 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                        else:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor13[arg2]]:
                                    if arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 < checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[532 len 12])
                                    if numCheckpoints[stor13[arg2]] <= 0:
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                        numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    else:
                                        if checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[arg2]][stor15[stor13[arg2]]].field_256 = arg3
                                            numCheckpoints[stor13[arg2]] = uint32(numCheckpoints[stor13[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
    return 1
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
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor13[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                    if numCheckpoints[stor13[address(msg.sender)]] <= 0:
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[180 len 12])
                    if numCheckpoints[stor13[address(msg.sender)]] <= 0:
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[340 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
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
                    0x6557494e473a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(176, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    34,
                    0x7257494e473a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(208, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    38,
                    0x6557494e473a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(176, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, Mask(96, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, Mask(96, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor13[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, Mask(96, 0, arg5))
                    if numCheckpoints[stor13[address(signer)]] <= 0:
                        checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_256 = checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor13[address(signer)]] = uint32(numCheckpoints[stor13[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256, checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256, checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_256 = checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor13[address(signer)]] = uint32(numCheckpoints[stor13[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256, checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, Mask(96, 0, arg5))
                    if numCheckpoints[stor13[address(signer)]] <= 0:
                        checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor13[address(signer)]] = uint32(numCheckpoints[stor13[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(signer)]][stor15[stor13[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor13[address(signer)]] = uint32(numCheckpoints[stor13[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor15[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor15[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
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
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if arg2 > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor13[address(arg1)]]:
                        if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                        if numCheckpoints[stor13[address(arg1)]] <= 0:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                        address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                        if numCheckpoints[stor13[address(arg1)]] <= 0:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
            else:
                if numCheckpoints[stor13[address(msg.sender)]]:
                    if arg2 > checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                    if numCheckpoints[stor13[address(msg.sender)]] <= 0:
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor13[address(arg1)]]:
                                if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                if numCheckpoints[stor13[address(arg1)]] <= 0:
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                    numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                if numCheckpoints[stor13[address(arg1)]] <= 0:
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor13[address(arg1)]]:
                                    if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        else:
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor13[address(arg1)]]:
                                    if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                    address(0x756d626572206578636565647320333220626974, mem[276 len 12])
                    if numCheckpoints[stor13[address(msg.sender)]] <= 0:
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = -arg2
                        numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor13[address(arg1)]]:
                                if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                if numCheckpoints[stor13[address(arg1)]] <= 0:
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                    numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                if numCheckpoints[stor13[address(arg1)]] <= 0:
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor13[address(arg1)]]:
                                    if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[372 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        else:
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(msg.sender)]][stor15[stor13[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor13[address(msg.sender)]] = uint32(numCheckpoints[stor13[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor13[address(arg1)]]:
                                    if arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6557494e473a3a5f7772697465436865636b706f696e743a20626c6f636b206e,
                                                    address(0x756d626572206578636565647320333220626974, mem[436 len 12])
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
    return 1
}



}
